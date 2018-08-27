package com.product.dao;

import com.product.entity.Phone;

import java.util.List;
//定义商品的接口
public interface PhoneDAO  {
    //查询所有商品
    List<Phone> listAll();
    //根据ID查询商品
    Phone getPhoneById(int id);
    //根据名字查询商品
    List<Phone> getPhonesByName(String name);
    //修改商品信息
    boolean update(Phone book);
    //删除商品
    boolean delete(int id);
    //添加商品
    Phone add(Phone book);
}
