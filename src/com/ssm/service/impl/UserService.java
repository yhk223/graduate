package com.ssm.service.impl;

import com.ssm.entity.Admin;
import com.ssm.entity.Brand;
import com.ssm.entity.Cart;
import com.ssm.entity.Mobile;
import com.ssm.entity.Ording;
import com.ssm.entity.User;
import com.ssm.exception.PwdWrongException;
import com.ssm.mapper.Usermapper;
import com.ssm.service.IUserService;
import com.ssm.util.HelpUtil;
import com.ssm.util.PasswordSalt;

import org.springframework.transaction.annotation.Transactional;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Transactional
public class UserService implements IUserService {
    public  Usermapper usermapper;

    public void setUsermapper(Usermapper usermapper) {
		this.usermapper = usermapper;
	}


	//登陆
    //密码加盐进行MD5进行加密，与密码进行比对
    //自定义异常来判断登录时账号密码状态
    public User login(String phone,String pwd) throws IllegalArgumentException, NullPointerException,PwdWrongException {
        if(null==phone||phone.isEmpty()){
            throw new NullPointerException("phone is null");
        }
       
        User user = usermapper.findByPhone(phone);
        if (null==user){
            throw new IllegalArgumentException("user is not found");
        }
        String salt=user.getSalt();
        //数据库中的密码
        String userpwd = user.getPwd();
        //页面传值密码加盐MD5加密
        String passwordsalt = PasswordSalt.Addsalt(pwd, salt);
        if(null==userpwd||null==passwordsalt|| !userpwd.equals(passwordsalt)){
                throw new PwdWrongException();
        }

        return user;
    }


    public List<Brand> findAllBrand(){
    
        return usermapper.findAllBrand();
    }


    public List<Mobile> findMobileByBrankId(Integer brankid,Integer page){
        Integer firstSize=(page-1)* HelpUtil.size;
        Integer maxSize=HelpUtil.max;
        return usermapper.findMobileByBrandId(brankid,firstSize,maxSize);
    }


    //新建账号
    public void save(String phone,String pwd)throws NullPointerException,PwdWrongException{
        if(null==phone||phone.isEmpty()){
            throw new NullPointerException("phone is null");
        }else if(null==pwd||pwd.isEmpty()){
            throw new PwdWrongException();
        }
        String salt = UUID.randomUUID().toString();
        String password = PasswordSalt.Addsalt(pwd, salt);
        usermapper.save(phone,password,salt);
    }


    //添加购物车
    public void saveCart(User user,String mobile,String img,String mobileprice,String description)throws Exception{
        Cart cart=new Cart();
        cart.setMobilestyle(mobile);
        cart.setMobileimg(img);
        cart.setPrice(Double.parseDouble(mobileprice));
        cart.setDescription(description);
        cart.setUser(user);     
        cart.setCreattime(new Date());
        usermapper.saveCart(cart);
    }


    //客户根据自己的ID获取自己的购物车详情
    public List<Cart> findCartByUser(Integer userid){
        List<Cart> cartList=usermapper.findCartByUser(userid);
        return cartList;
    }

   public User querypwd(int userid) {
	   User u1=usermapper.querypwd(userid);
	   
	return u1;
	   
   }
	public boolean changepasswordbyid(String oldpwd,String newpwd, int userid) {
		  String passwordsalt = PasswordSalt.Addsalt(oldpwd, usermapper.querypwd(userid).getSalt());
		if(passwordsalt.equals(usermapper.querypwd(userid).getPwd())) {
		      String salt = UUID.randomUUID().toString();
		        String password = PasswordSalt.Addsalt(newpwd, salt);
		usermapper.changepasswordbyid(password,salt, userid);
		return true;
	}
		
	else {
		System.out.println("ddddd"+oldpwd);
	}
		return false;
	}


	@Override
	public List<User> getAllUsers() {
		return usermapper.getAllUsers();
	}


	@Override
	public List<Admin> getAdminByCond(Admin adminEntity) {	
		return usermapper.getAdminByCond(adminEntity);
	}

	@Override
	public void deleteUsers(int id) {
		usermapper.deleteUsers(id);
	}


	@Override
	public void deleteOrders(int id) {
		usermapper.deleteOrders(id);
		
	}


	@Override
	public List<Ording> getAllOrders() {
		
		return usermapper.getAllOrders();
	}


	@Override
	public void insertGoods(Mobile mobile) {
		usermapper.insertGoods(mobile);
		
	}


	@Override
	public void deleteGoods(int id) {
	    usermapper.deleteGoods(id);
		
	}


	@Override
	public void insertAdmin(Admin admin) {
		usermapper.insertAdmin(admin);
		
	}

}
