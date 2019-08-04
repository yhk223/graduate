package com.ssm.mapper;

import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Param;

import com.ssm.entity.BaseInfo;
import com.ssm.entity.Baseinfomations;
import com.ssm.entity.Facade;
import com.ssm.entity.FacadeInfomations;
import com.ssm.entity.Function;
import com.ssm.entity.Mobile;

public interface Mobilemapper {
    Mobile findById(Integer mobileid);
    Set<BaseInfo> findBaseInfoByMobileid(Integer mobileid);
    Integer countAll();
    Integer countMobileByBrankId(Integer brandId);
    List<Mobile> findAll(@Param("firstsize")Integer firstSize,@Param("maxsize")Integer maxSize);
    List<Mobile> findLike(String name);
	Set<Facade> findfacedebyid(Integer mobileid);
	Set<Function> findfunbyid(Integer mobileid);
	Set<Baseinfomations> findiftsbybaseinfo(Integer mobileid);
	Set<FacadeInfomations> findfacedeinfbybaseface(Integer facedeid);
	//Set<> findbaseidbybinf(Integer mobileid);
	List<Mobile> listall();
}
