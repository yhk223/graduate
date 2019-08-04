package com.ssm.service.impl;

import com.ssm.entity.Brand;
import com.ssm.entity.Category;
import com.ssm.entity.Mobile;
import com.ssm.entity.lbmessages;
import com.ssm.mapper.Categorymapper;
import com.ssm.mapper.Usermapper;
import com.ssm.service.ICategoryService;
import com.ssm.util.HelpUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
@Service
@Transactional
public class CategoryService implements ICategoryService {
    @Autowired
    private Categorymapper categorymapper;
    @Autowired
    private Usermapper usermapper;

    @Override
    public List<Category> findAll() {
        List<Category> categoryList = categorymapper.findAll();
        return categoryList;
    }

    @Override
    public List<Brand> findBrandByCateid(Integer id) {
        List<Brand> brandList = usermapper.findBrandByCateid(id);
        return brandList;
    }

    public void setCategorymapper(Categorymapper categorymapper) {
		this.categorymapper = categorymapper;
	}

	public void setUsermapper(Usermapper usermapper) {
		this.usermapper = usermapper;
	}

	@Override
    //类目ID下面的所有商品
    //未分页
    public List<Mobile> mobileByCateid(Integer id) {
        List<Mobile> mobileList = new ArrayList<>();
        List<Brand> brandList = findBrandByCateid(id);
        for (Brand brand : brandList) {
            List<Mobile> mobileByBrandId = usermapper.findAllMobileByBrandId(brand.getBrandid());
            for (Mobile mobile : mobileByBrandId) {
                mobileList.add(mobile);
            }
        }
        return mobileList;
    }

    //类目ID下面的所有商品
    //根据page分页——前端传回的page 来获取对应的mobilelist集合
    public List<Mobile> mobileByCateidBypage(Integer id,Integer page) {
        List<Mobile> list=new ArrayList<>();
        List<Mobile> mobiles = mobileByCateid(id);
        for(int i =(page-1)*HelpUtil.max; i<page* HelpUtil.max&&i<mobiles.size(); i++){
            list.add(mobiles.get(i));
        }
        return list;
    }

    //类目ID下面的所有商品
    //根据page分页——前端传回的page 来获取对应的页数list集合
    public List<Integer> pageList(Integer id){
        int count = mobileByCateid(id).size();
        Integer page=0;
        if (count%HelpUtil.max==0){
            page=count/HelpUtil.max;
        }else {
            page=count/HelpUtil.max+1;
        }
        List<Integer> pageList=new ArrayList<>();
        for (int i=1;i<=page;i++){
            pageList.add(i);
        }
        return pageList;
    }

    //类目ID下面的所有商品————总页数
     public Integer pagesByCateid(Integer id){
         int count = mobileByCateid(id).size();
         Integer pages=0;
         if (count%HelpUtil.max==0){
             pages=count/HelpUtil.max;
         }else {
             pages=count/HelpUtil.max+1;
         }
         return pages;
     }

     //类目ID下面的所有商品————数量
     public Integer countByCateid(Integer id){
         return  mobileByCateid(id).size();
     }

    @Override
    public boolean checkByCateid(Integer id, Integer page) {
        Integer pages = pagesByCateid(id);
        if(pages>page){
            return true;
        }
        return false;
    }
}
