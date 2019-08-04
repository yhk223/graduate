package com.ssm.mapper;

import java.util.List;

import com.ssm.entity.Cart;
import com.ssm.entity.Ording;

public interface Ordingmapper {
    void saveOrding(Ording ording);

    //添加订单的同时需要删除回购车的手机信息
    //删除该客户下多个信息，userID
    List<Cart> findCartByUserid(Integer userid);

    //删除单个手机信息：以回收车单个ID
    void deleteByCart(Integer cartId);
    
    
    List<Ording> findOrdingByUserid(Integer userid);
}
