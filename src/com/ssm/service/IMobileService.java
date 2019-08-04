package com.ssm.service;

import java.util.List;
import java.util.Set;

import com.ssm.entity.BaseInfo;
import com.ssm.entity.Baseinfomations;
import com.ssm.entity.Facade;
import com.ssm.entity.FacadeInfomations;
import com.ssm.entity.Function;
import com.ssm.entity.Mobile;

public interface IMobileService {
    Set<BaseInfo> findBaseInfoByMobileid(Integer mobileid);
    Mobile findMobileByid(Integer mobileid);
    Integer countAll();
    List<Mobile> mobileList(Integer page);
    Integer countMobileByBrankId(Integer brankId);
    public Set<Facade> findfacedebyid(Integer mobileid);
    public Set<Baseinfomations> findiftsbybaseinfo(Integer baseid);
    public Set<FacadeInfomations> findfacedeinfbybaseface(Integer facedeid);
      public Set<Function> findfunbyid(Integer mobileid);
    //计算所有手机数量的页数，并且铺成列表
    List<Integer> pageByAll();

    //根据brankID查询该品牌下的手机数量计算页数，并铺成列表
    List<Integer> pageByBrankId(Integer brankId);

    //下一页跳转时，先判断该页面是否还有下一页(查品牌)
    boolean checkByBrankid(Integer brankid,Integer page);

    //下一页跳转时，先判断该页面是否还有下一页(所有手机)
    boolean checkByAll(Integer page);

    //计算该品牌下的手机分页页数
    Integer pageMothed(Integer brankid);

    //计算所有手机分页页数
    Integer pageMothedAll();

    //根据页面输入的内容查找相应的手机型号
    List<Mobile> findByName(String name);
	List<Mobile> listall();
}
