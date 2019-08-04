package com.ssm.controller;

import com.ssm.entity.*;
import com.ssm.exception.PwdWrongException;
import com.ssm.mapper.Ordingmapper;
import com.ssm.service.ICategoryService;
import com.ssm.service.IMobileService;
import com.ssm.service.IOrdingService;
import com.ssm.service.IUserService;
import com.ssm.util.PasswordSalt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.sound.midi.SysexMessage;

@Controller
@RequestMapping("/user")
@SessionAttributes({"user"})
public class UserContoller {
    @Autowired
    private IUserService userService;
    @Autowired
    private IOrdingService ordingService;
    @Autowired
    private IMobileService mobileService;
    @Autowired
    private ICategoryService categoryService;
    private static User user1;
    
    @Autowired
    private Ordingmapper ordingMapper;

    //登陆
    //密码加盐进行MD5进行加密，与密码进行比对
    //自定义异常来判断登录时账号密码状态
    //根据异常来确定 ajax 返回值
    @RequestMapping("/dologin")
    public void dologin(String phone, String pwd, PrintWriter pw,Model model,HttpServletRequest request){
    	System.out.println("查询到");
        String result="success";
        try {
            User user= userService.login(phone,pwd);
            request.getSession().setAttribute("user1", user);   
            user1=user;
            model.addAttribute("user",user);
        }catch (NullPointerException e){
            e.printStackTrace();
            result="noPhone";
        }catch (IllegalArgumentException e){
            e.printStackTrace();
            result="wrongPhone";
        }catch (PwdWrongException e){
            e.printStackTrace();
            result="wrongPwd";
        }
        //jQury的返回值
        pw.print(result);
    }

    //账号注册
    //判断账号，密码的符合规则
    //随机一个UUID  set进salt盐，和密码一起MD5加密
    //保存不报错后，ajax返回"OK"回页面
    @RequestMapping("/zhuce")
    public void zhuce(String phone,String pwd,PrintWriter pw){
        System.out.println(phone+pwd);
        String result="OK";
        try {
            userService.save(phone,pwd);
        }catch (PwdWrongException e){
            e.printStackTrace();
            result="noPhone";
        }catch (NullPointerException e){
            e.printStackTrace();
            result="noPwd";
        }
            pw.print(result);
    }
  @RequestMapping("updatepassword")
   public void updatepassword(String oldPwd,String newPwd,PrintWriter pw) throws PwdWrongException {
	   User user=user1;
	   System.out.println("1111");
       String salt=user.getSalt();
       //数据库中的密码
       //页面传值密码加盐MD5加密
     
	   boolean bool=userService.changepasswordbyid(oldPwd, newPwd, user1.getUserid());
	   String result=null;
	   System.out.println(bool+result);
	   if(bool)
		   result="true";
	   else
		   result="false";
		   pw.print(result);
   }
public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public void setOrdingService(IOrdingService ordingService) {
		this.ordingService = ordingService;
	}

	public void setMobileService(IMobileService mobileService) {
		this.mobileService = mobileService;
	}

	public void setCategoryService(ICategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public static void setUser1(User user1) {
		UserContoller.user1 = user1;
	}

	// 1首页展示：所有手机品牌，
// 2所有手机信息第一页(分页)
// 3所有手机数量，
// 4左边侧拉列表
// 5计算的所有手机的页数
// 6将页数列表展示到前端页面
    @RequestMapping("/index/{page}")  
    public String findAllModile(@PathVariable("page")Integer page, Model model){
        Integer countAll = mobileService.countAll();
        List<Brand> list =userService.findAllBrand();
        Integer pages = mobileService.pageMothedAll();
        List<Mobile> mobileList = mobileService.mobileList(page);
        List<Integer> pageByAll = mobileService.pageByAll();
        List<Category> categoryList = categoryService.findAll();
        model.addAttribute("cateList",categoryList);
        model.addAttribute("mobilelist",mobileList);
        model.addAttribute("count",countAll);
        model.addAttribute("list", list);
        model.addAttribute("pages",pages);
        model.addAttribute("pageList",pageByAll);
        model.addAttribute("user",user1);
        
        List<Cart> cartlist=userService.findCartByUser(user1.getUserid());
        model.addAttribute("cartlist",cartlist);
        
        double sumprice=0;
        for(Cart cart:cartlist){
            sumprice+=cart.getPrice();
        }
        int cartsize=cartlist.size();
        model.addAttribute("sumprice",sumprice);
        model.addAttribute("cartsize",cartsize);
        return "index2";
    }

 // 1显示所有手机品牌列表
 // 2根据品牌ID 查询该品牌下的所有手机列表
 // 3手机列表分页（显示第一页）
 // 4根据品牌ID 查询该品牌下的所有手机数量
//  5根据brankID计算该品牌下的所有手机的页数
//  6将页数列表展示到前端页面
    @RequestMapping("/index3/{brankid}&{page}")
    public String findMobileByBrankId(@PathVariable("brankid") Integer brankid,@PathVariable("page")Integer page, Model model) {
        List<Mobile> list=userService.findMobileByBrankId(brankid,page);
        Integer pages = mobileService.pageMothed(brankid);
        List<Brand> brandlist =userService.findAllBrand();
        Integer count = mobileService.countMobileByBrankId(brankid);
        List<Integer> pageByBrankId = mobileService.pageByBrankId(brankid);
        List<Category> categoryList = categoryService.findAll();
        model.addAttribute("cateList",categoryList);
        model.addAttribute("pages",pages);
        model.addAttribute("pageList",pageByBrankId);
        model.addAttribute("count",count);
        model.addAttribute("mobilelist",list);
        model.addAttribute("list", brandlist);
        model.addAttribute("user",user1);
        
        List<Cart> cartlist=userService.findCartByUser(user1.getUserid());
        model.addAttribute("cartlist",cartlist);
        
        double sumprice=0;
        for(Cart cart:cartlist){
            sumprice+=cart.getPrice();
        }
        int cartsize=cartlist.size();
        model.addAttribute("sumprice",sumprice);
        model.addAttribute("cartsize",cartsize);
        return "index";
    }

    // 1显示所有品类categoryList
    // 2根据该品类ID 显示该品类下所有品牌
    // 3根据该品类ID 显示该品类下所有商品（分页：默认显示第一页）
    // 4页面展示页数的列表
    // 5总页数  便于直接跳转到最后一页
    // 6
    @RequestMapping("/showCategory/{id}&{page}")
    public String showCatagory(@PathVariable("id")Integer id,@PathVariable("page")Integer page, Model model) {
        List<Mobile> list = categoryService.mobileByCateidBypage(id, page);
        List<Brand> brandlist = categoryService.findBrandByCateid(id);
        List<Category> categoryList = categoryService.findAll();
        List<Integer> pageList = categoryService.pageList(id);
        Integer pages = categoryService.pagesByCateid(id);
        Integer count = categoryService.countByCateid(id);
        model.addAttribute("cateList",categoryList);
        model.addAttribute("mobilelist",list);
        model.addAttribute("list", brandlist);
        model.addAttribute("pageList",pageList);
        model.addAttribute("pages",pages);
        model.addAttribute("count",count);
        model.addAttribute("user",user1);
        
        List<Cart> cartlist=userService.findCartByUser(user1.getUserid());
        model.addAttribute("cartlist",cartlist);
        
        double sumprice=0;
        for(Cart cart:cartlist){
            sumprice+=cart.getPrice();
        }
        int cartsize=cartlist.size();
        model.addAttribute("sumprice",sumprice);
        model.addAttribute("cartsize",cartsize);
        return "index1";
    }


    //将当前商品添加到回购车
    //添加回购车时报异常
    // ajax 返回成
    @RequestMapping("/addcart")
    public void  addcart(User user,String mobile,String img,String mobileprice,String description,PrintWriter pw){
        try{
            System.out.println(description);
            userService.saveCart(user,mobile,img,mobileprice,description);
            pw.print("OK1");
        }catch (Exception e){
            e.printStackTrace();
            pw.print("false1");
        }
    }
    //用商品信息的ID从回购车中移除
    //从session中取出当前User的ID  查询当前账户下所有回购车商品
    //将商品总价格展示到页面
    @RequestMapping("/deletcart/{id}")
    public String deleteCartById(@PathVariable("id")Integer id,User user,Model model){
        ordingService.deleteByCartid(id);
        List<Cart> cartlist=userService.findCartByUser(user.getUserid());
        double sumprice=0;
        for(Cart cart:cartlist){
            sumprice+=cart.getPrice();
        }
        model.addAttribute("sumprice",sumprice);
        model.addAttribute("cartlist",cartlist);
        return "cart";
    }
    
    
    @RequestMapping("/deletcart1")
    @ResponseBody
    public String deleteCartById1(String id,Model model){
        ordingService.deleteByCartid(Integer.getInteger(id));
        System.err.println("qqqqqqqqqqqqqqqqqqqqqq");
        return "pass";
    }


    //根据当前用户ID查询用户的订单
    //计算所有订单的总价
    @RequestMapping("/ording/{userid}")
    public String ording(@PathVariable("userid") String userid,Model model){
        List<Cart> cartlist=userService.findCartByUser(Integer.parseInt(userid));
        double sumprice=0;
        for(Cart cart:cartlist){
            sumprice+=cart.getPrice();
//            String st="国行|水货|欧美版</br>国行|水货|欧美版</br>国行|水货|欧美版";
//            cart.setDescription(st);
        }
        model.addAttribute("sumprice",sumprice);
        model.addAttribute("cartlist",cartlist);
        return "cart";
    }

    //订单：保存客户和商品的信息
    //并返回所有订单的总价
    @RequestMapping("/saveording")
    public String savaOrding(String province,String city,String district,String fulladdress,
                             String alipayname,String alpayaccount,
                             String myBank,String bankidname, String bankid,
                             String mobilepwd,String linkname,String yu_time,String phone,User user,Model model){
        String address=province+city+district;
        
        Double prices = ordingService.saveording(address, fulladdress, alipayname, alpayaccount, myBank, bankid, bankidname,
                                                mobilepwd, linkname, yu_time, phone, user);
        model.addAttribute("price",prices);
        model.addAttribute("aplay",alpayaccount);

    		Integer  userid = user1.getUserid();
    		System.err.println(userid);
    		List<Ording> orders = ordingMapper.findOrdingByUserid(userid);
    		model.addAttribute("orders", orders);
        return "member";
    }
    
    
//    @RequestMapping("/member/order")
//    public Object order(HttpServletRequest request) {  
//    	User user=(User)request.getSession().getAttribute("user1");
//    	System.out.println(user);
//    	if(user != null) {
//    		Integer  userid = user.getUserid();
//    		System.err.println(userid);
//    		List<Ording> orders = ordingMapper.findOrdingByUserid(userid);
//    		request.setAttribute("orders", orders);
//    	}
//    	return "order";
//    	
//    }
}

//优化：将页面的数据一起打包放在service层，由service层对数据进行业务处理
//        System.out.println(linkname);
//        System.out.println(phone);
//        System.out.println(fulladdress);
//        System.out.println(alipayname);
//        System.out.println(alpayaccount);
//        System.out.println(myBank);
//        System.out.println(bankidname);
//        System.out.println(bankid);
//        System.out.println(mobilepwd);
//        Ording ording=new Ording();
//        ording.setLinkname(linkname);
//        ording.setPhone(phone);
//        ording.setAddress(address);
//        ording.setFulladdress(fulladdress);
//        ording.setAlipayname(alipayname);
//        ording.setAlpayaccount(alpayaccount);
//        ording.setBank(myBank);
//        ording.setBankidname(bankidname);
//        ording.setBankid(bankid);
//        ording.setMobilepwd(mobilepwd);
//        ording.setHomeTime(yu_time);
//        ording.setUser(user);
//        Double prices = ordingService.saveording(ording, user.getUserid());

//        Double prices = ordingService.saveording(address, fulladdress, alipayname, alpayaccount, myBank, bankid, bankidname,
//                                                mobilepwd, linkname, yu_time, phone, user);
//        model.addAttribute("price",prices);
//        return "member";
//    }
//}
