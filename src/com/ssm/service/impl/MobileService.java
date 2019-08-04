package com.ssm.service.impl;

import com.ssm.entity.BaseInfo;
import com.ssm.entity.Baseinfomations;
import com.ssm.entity.Facade;
import com.ssm.entity.FacadeInfomations;
import com.ssm.entity.Function;
import com.ssm.entity.Mobile;
import com.ssm.mapper.Mobilemapper;
import com.ssm.service.IMobileService;
import com.ssm.util.HelpUtil;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
@Transactional
public class MobileService implements IMobileService{
    private Mobilemapper mobilemapper;

    @Override
    public Set<BaseInfo> findBaseInfoByMobileid(Integer mobileid){
       Set<BaseInfo> base= mobilemapper.findBaseInfoByMobileid(mobileid);
       return  base;
    }

    public void setMobilemapper(Mobilemapper mobilemapper) {
		this.mobilemapper = mobilemapper;
	}

	@Override
    public Mobile findMobileByid(Integer mobileid){
       Mobile mobile =mobilemapper.findById(mobileid);
       return mobile;
    }

    @Override
    public Integer countAll() {
        return mobilemapper.countAll();
    }

    @Override
    public List<Mobile> mobileList(Integer page) {
        Integer firstSize=(page-1)* HelpUtil.size;
        Integer maxSize=HelpUtil.max;
       
        List<Mobile> mobileList = mobilemapper.findAll(firstSize, maxSize);
        return mobileList;
    }
    public Set<Facade> findfacedebyid(Integer mobileid){
		return mobilemapper.findfacedebyid(mobileid);
    	
    }
    public Set<Function> findfunbyid(Integer mobileid){
		return mobilemapper.findfunbyid(mobileid);
    }
    
    public Set<Baseinfomations> findiftsbybaseinfo(Integer mobileid){
   
		return mobilemapper.findiftsbybaseinfo(mobileid);
    	
	
    }
    public Set<FacadeInfomations> findfacedeinfbybaseface(Integer facedeid){
  		return mobilemapper.findfacedeinfbybaseface(facedeid);
      }
    @Override
    public Integer countMobileByBrankId(Integer brankId) {
        Integer count = mobilemapper.countMobileByBrankId(brankId);
        return count;
    }

    @Override
    // 1 计算出所有手机的页数
    // 2 将页数遍历进Integer的list集合
    public List<Integer> pageByAll() {
        Integer page = pageMothedAll();
        ArrayList<Integer> list = new ArrayList<>();
        for(int i=1;i<=page;i++){
            list.add(i);
        }
        return list;
    }

    @Override
    //根据ID计算出该品牌下所有页数，将页数列表展示到前端页面
    public List<Integer> pageByBrankId(Integer brankId) {
        Integer page = pageMothed(brankId);
        ArrayList<Integer> list = new ArrayList<>();
        for (int i=1;i<=page;i++) {
            list.add(i);
        }
        return list;
    }

    @Override
    // AJAX 后台判断当前页是不是最后一页
    public boolean checkByBrankid(Integer brankid, Integer page) {
        Integer page1 = pageMothed(brankid);
        if(page<page1){
            return true;
        }
        return false;
    }

    @Override
    // AJAX 后台判断当前页是不是最后一页
    public boolean checkByAll(Integer page) {
        Integer page1 = pageMothedAll();
        if(page<page1){
            return true;
        }
        return false;
    }


    //将计算总页数的方法写成一个单独的方法，需要时直接调用
    //输入手机品牌查询出对应的数量，计算分页的页数
    public Integer pageMothed(Integer brankid){
        Integer page=0;
        Integer countByBrankId = mobilemapper.countMobileByBrankId(brankid);

        if (countByBrankId%HelpUtil.max==0) {
            page=countByBrankId/HelpUtil.max;
        }else {
            page=countByBrankId/HelpUtil.max+1;
        }
        return page;
    }

    //将计算所有手机总页数的方法写成一个单独的方法，需要时直接调用
    //查询出所有手机的数量，计算分页的页数
    public Integer pageMothedAll(){
        Integer page=0;
        Integer countAll = mobilemapper.countAll();
        if (countAll%HelpUtil.max==0) {
            page=countAll/HelpUtil.max;
        }else {
            page=countAll/HelpUtil.max+1;
        }
        return page;
    }

    //将页面传过来的name前后加上字符串"%" 进行查找
    @Override
    public List<Mobile> findByName(String name) {
        String newName="%"+name+"%";
        List<Mobile> mobileList = mobilemapper.findLike(newName);
        return mobileList;
    }

	@Override
	public List<Mobile> listall() {
		
		return mobilemapper.listall();
	}

}
