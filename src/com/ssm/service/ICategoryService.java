package com.ssm.service;

import java.util.List;

import com.ssm.entity.Brand;
import com.ssm.entity.Category;
import com.ssm.entity.Mobile;

public interface ICategoryService {
    List<Category>  findAll();
    List<Brand> findBrandByCateid(Integer id);
    List<Mobile> mobileByCateid(Integer id);

    //根据品类的ID  和分页的page 返回mobile分页集合
    List<Mobile> mobileByCateidBypage(Integer id,Integer page);
    //根据品类的ID  和分页的page 返回page分页集合
    List<Integer> pageList(Integer id);
    //根据品类的ID  计算总页数
    Integer pagesByCateid(Integer id);
    //根据品类的ID  计算总数量
    Integer countByCateid(Integer id);
    //根据品类的ID ：下一页跳转时，先判断该页面是否还有下一页(查品类)
    boolean checkByCateid(Integer id,Integer page);
}
