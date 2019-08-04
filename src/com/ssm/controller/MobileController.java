package com.ssm.controller;

import com.ssm.entity.BaseInfo;
import com.ssm.entity.Baseinfomations;
import com.ssm.entity.Brand;
import com.ssm.entity.Category;
import com.ssm.entity.Facade;
import com.ssm.entity.FacadeInfomations;
import com.ssm.entity.Function;
import com.ssm.entity.Mobile;
import com.ssm.service.ICategoryService;
import com.ssm.service.IMobileService;
import com.ssm.service.IUserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/mobile")
public class MobileController {
    @Autowired
    private IMobileService mobileService;
    @Autowired
    private IUserService userService;
    public void setMobileService(IMobileService mobileService) {
		this.mobileService = mobileService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public void setCategoryService(ICategoryService categoryService) {
		this.categoryService = categoryService;
	}

	@Autowired
    private ICategoryService categoryService;

    //根据mobileid 获取相应的基本信息
	@RequestMapping("/baseInfo/{mobileid}")
    public String findBaseInfoByModileid(@PathVariable("mobileid")Integer mobileid, Model model){
        System.out.println(mobileid);
        //根据mobileID 获得对应的手机型号及图片
        Mobile mobile=mobileService.findMobileByid(mobileid);
        mobile.setBaseInfo(mobileService.findBaseInfoByMobileid(mobileid));
        mobile.setFacades(mobileService.findfacedebyid(mobileid));
        mobile.setFunctions(mobileService.findfunbyid(mobileid));
        Set<BaseInfo>inf=mobile.getBaseInfo();
        Set<Facade>fac=mobile.getFacades();
        for (Facade facade : fac) {
			facade.setFacadeInfomations(mobileService.findfacedeinfbybaseface(facade.getFacadeid()));
		}
        Set<Function>fun=mobile.getFunctions();
        System.out.println(inf.size());
        for (BaseInfo baseInfo : inf) {
        	   baseInfo.setBaseinfomations(mobileService.findiftsbybaseinfo(baseInfo.getBaseid()));
		}
        model.addAttribute("mobile",mobile);
        
 
        //根据mobileID 查询基本信息
        return "info";
    }

    //用 ajax 做"下一页"跳转
    //将当前手机品牌的ID和当前页数传回后台，后台查询该品牌下的手机总页数和当前
    //页数判断，是否还有下一页。如当前页等于总页数该页面就是最后一页了，提示用户"此页最后页"，无跳转
    @ResponseBody
    @RequestMapping("/checkByBrankid")
    public String checkByBrankid(Integer brankId,Integer page){
        System.out.println(brankId+"======="+page);
        String result=null;
        boolean check = mobileService.checkByBrankid(brankId, page);
        if(check){
            result="success";
        }else {
            result="false";
        }
        return result;
    }


    //用 ajax 做"下一页"跳转
    //将当前手机品牌的ID和当前页数传回后台，后台查询该品牌下的手机总页数和当前
    //页数判断，是否还有下一页。如当前页等于总页数该页面就是最后一页了，提示用户"此页最后页"，无跳转
    @ResponseBody
    @RequestMapping("/checkByAll")
    public String checkByAll(Integer page){

        String result=null;
        boolean check = mobileService.checkByAll(page);
        if(check){
            result="success";
        }else {
            result="false";
        }
        return result;
    }

    //用 ajax 做"下一页"跳转
    //将当前手机品牌的ID和当前页数传回后台，后台查询该品牌下的手机总页数和当前
    //页数判断，是否还有下一页。如当前页等于总页数该页面就是最后一页了，提示用户"此页最后页"，无跳转
    @ResponseBody
    @RequestMapping("/checkByCateid")
    public String checkByCateid(Integer id,Integer page){
        System.out.println(id+"======="+page);
        String result=null;
        boolean check = categoryService.checkByCateid(id, page);
        if(check){
            result="success";
        }else {
            result="false";
        }
        return result;
    }

    //首页：根据客户输入的手机名称模糊查找
    @RequestMapping("/search")
    public String search(String gname,Model model){
        List<Category> categoryList = categoryService.findAll();
        System.out.println(gname);
        List<Mobile> mobileList = mobileService.findByName(gname);
        for (Mobile mobile : mobileList) {
            System.out.println(mobile.getUserstyle());
        }
        List<Brand> list =userService.findAllBrand();
        model.addAttribute("mobilelist",mobileList);
        model.addAttribute("list", list);
        model.addAttribute("cateList",categoryList);
        return "index2";
    }
}
