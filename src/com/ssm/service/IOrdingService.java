package com.ssm.service;

import com.ssm.entity.Ording;
import com.ssm.entity.User;

public interface IOrdingService {
    Double saveording(Ording ording, Integer userid);

    //添加订单的同时需要删除回购车的手机信息
    //删除该客户下多个信息，userID
    void deleteCartByUserid(Integer userid);

    //删除单个手机信息：以回收车单个ID
    void deleteByCartid(Integer cartid);

    //
    Double saveording(String adress,String fulladdress,
                      String alipayname,String alpayaccount,
                      String myBank,String bankidname, String bankid,
                      String mobilepwd,String linkname,String yu_time,String phone,User user);
}
