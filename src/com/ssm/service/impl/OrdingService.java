package com.ssm.service.impl;

import com.ssm.entity.Cart;
import com.ssm.entity.Ording;
import com.ssm.entity.User;
import com.ssm.mapper.Ordingmapper;
import com.ssm.service.IOrdingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional
public class OrdingService implements IOrdingService{
    @Autowired
    private Ordingmapper Ordingmapper;

    //添加订单的同时，删除回购车里的信息
    public Double saveording(Ording ording,Integer userid){
        Double price =0.0;
        List<Cart> cartList = Ordingmapper.findCartByUserid(userid);
        for (Cart cart : cartList) {

            Ording ording1=new Ording();
            ording1.setCreatTime(new Date());
            price+=cart.getPrice();
            ording1.setMobilestyle(cart.getMobilestyle());
            ording1.setDescription(cart.getDescription());
            ording1.setImg(cart.getMobileimg());
            ording1.setMobileprice(cart.getPrice());
            Ordingmapper.saveOrding(ording1);
        }

//        deleteCartByUserid(userid);
        return price;
    }

    public void setOrdingmapper(Ordingmapper ordingmapper) {
		Ordingmapper = ordingmapper;
	}

	@Override
    public void deleteCartByUserid(Integer userid) {
        List<Cart> cartList = Ordingmapper.findCartByUserid(userid);
        for (Cart cart : cartList) {
            Ordingmapper.deleteByCart(cart.getCartid());
        }

    }

    @Override
    public void deleteByCartid(Integer cartid) {
        Ordingmapper.deleteByCart(cartid);
    }

    @Override
    public Double saveording(String adress, String fulladdress, String alipayname, String alpayaccount, String myBank, String bankidname, String bankid, String mobilepwd, String linkname, String yu_time, String phone, User user) {
        Double price =0.0;
        List<Cart> cartList = Ordingmapper.findCartByUserid(user.getUserid());
        for (Cart cart : cartList) {
            //计算该用户回购车总价
            price+=cart.getPrice();
           //建立一个新的订单保存订单的信息
            Ording ording=new Ording();
            ording.setAddress(adress);
            ording.setFulladdress(fulladdress);
            ording.setAlipayname(alipayname);
            ording.setAlpayaccount(alpayaccount);
            ording.setBank(myBank);
            ording.setBankid(bankid);
            ording.setBankidname(bankidname);
            ording.setMobilepwd(mobilepwd);
            ording.setLinkname(linkname);
            ording.setHomeTime(yu_time);
            ording.setPhone(phone);
            ording.setUser(user);
            ording.setCreatTime(new Date());
            ording.setMobilestyle(cart.getMobilestyle());
            ording.setDescription(cart.getDescription());
            ording.setImg(cart.getMobileimg());
            ording.setMobileprice(cart.getPrice());

            System.out.println(ording.toString());
            Ordingmapper.saveOrding(ording);
            Ordingmapper.deleteByCart(cart.getCartid());
        }

//        deleteCartByUserid(userid);
        return price;
    }
}
