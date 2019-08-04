package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.entity.Admin;
import com.ssm.entity.Brand;
import com.ssm.entity.Cart;
import com.ssm.entity.Mobile;
import com.ssm.entity.Ording;
import com.ssm.entity.User;
import com.ssm.entity.lbmessages;
@Repository
public interface Usermapper {
    void save(@Param(value="phone") String phone,@Param(value="pwd") String pwd,@Param(value="salt") String salt);
    User findByPhone(String phone);
    List<Mobile> findMobileByBrandId(@Param(value="brandid")Integer brankid,@Param(value="firstsize")Integer firstSize,@Param(value="maxsize")Integer maxSize);
    List<Mobile> findAllMobileByBrandId(@Param(value="brandid") Integer brandid);
    void saveCart(Cart cart);
    List<Cart> findCartByUser(Integer userid);
    List<Brand> findAllBrand();
    List<Brand> findBrandByCateid(Integer id);
    List<lbmessages> findcommon();
    void changepasswordbyid(String pwd,String userid);
    User querypwd(int userid);
    //User findById(Integer id);
	void changepasswordbyid(@Param(value="pwd")String pwd,@Param(value="salt") String salt ,@Param(value="userid") int userid);
	List<User> getAllUsers();
	List<Admin> getAdminByCond(Admin adminEntity);
	void deleteUsers(int userid);
	void deleteOrders(int ordingid);
	List<Ording> getAllOrders();
	void insertGoods(Mobile mobile);
	void deleteGoods(int id);
	void insertAdmin(Admin admin);
}
