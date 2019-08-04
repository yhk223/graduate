package com.ssm.service;

import com.ssm.entity.Admin;
import com.ssm.entity.Brand;
import com.ssm.entity.Cart;
import com.ssm.entity.Mobile;
import com.ssm.entity.Ording;
import com.ssm.entity.User;
import com.ssm.entity.lbmessages;
import com.ssm.exception.PwdWrongException;
import java.util.List;

public interface IUserService {

    //用盐和异常来完成登录
    User login(String phone, String pwd) throws IllegalArgumentException, NullPointerException,PwdWrongException;

    List<Brand> findAllBrand();
    List<Mobile> findMobileByBrankId(Integer brankid,Integer page);
    void save(String phone,String pwd)throws NullPointerException,PwdWrongException;
    void saveCart(User user,String mobile,String img,String mobileprice,String description)throws Exception;
    List<Cart> findCartByUser(Integer userid);
    public boolean changepasswordbyid(String oldpwd,String newpwd, int userid);
    public User querypwd(int userid);
	List<User> getAllUsers();
	List<Admin> getAdminByCond(Admin adminEntity);
	void deleteUsers(int id);

	void deleteOrders(int id);

	List<Ording> getAllOrders();

	void insertGoods(Mobile mobile);

	void deleteGoods(int id);

	void insertAdmin(Admin admin);
}
