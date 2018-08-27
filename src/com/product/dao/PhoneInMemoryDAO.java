package com.product.dao;

import com.product.entity.Phone;

import java.util.ArrayList;
import java.util.List;

public class PhoneInMemoryDAO implements PhoneDAO {
    private static List<Phone> phoneDB=new ArrayList();
    {
        Phone p1 = new Phone(1, "华为10", 3000, 20, "华为科技有限公司","xxxxx");
        Phone p2 = new Phone(2, "小米6", 2500, 20, "小米科技有限公司","xxxxx");
        Phone p3 = new Phone(3, "魅族6", 3500, 20, "魅族科技有限公司","xxxxx");
        Phone p4 = new Phone(4, "三星7", 4000, 20, "三星科技有限公司","xxxxx");
        Phone p5 = new Phone(5, "苹果8", 9000, 20, "苹果科技有限公司","xxxxx");

        phoneDB.add(p1);
        phoneDB.add(p2);
        phoneDB.add(p3);
        phoneDB.add(p4);
        phoneDB.add(p5);
    }
    @Override
    public List<Phone> listAll() {
        return phoneDB;
    }

    @Override
    public Phone getPhoneById(int id) {
        for (Phone phone:phoneDB) {
            if (phone.getId()==id){
                return phone;
            }
        }
        return null;
    }

    @Override
    public List <Phone> getPhonesByName(String name) {
        ArrayList<Phone> phones=new ArrayList <>();
        for (Phone phone : phoneDB) {
            String realName=phone.getName().toLowerCase();
            if (realName.contains(name.toLowerCase())){
                phones.add(phone);
            }
        }
        return null;
    }

    @Override
    public boolean update(Phone phone) {
        for (Phone thisPhone:phoneDB) {
            if (thisPhone.getId()==phone.getId()){
                thisPhone.setName(phone.getName());
                thisPhone.setPrice(phone.getPrice());
                thisPhone.setNumber(phone.getNumber());
                thisPhone.setManufacturer(phone.getManufacturer());
                thisPhone.setPicture(phone.getPicture());
            }
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        for (Phone phone : phoneDB) {
            if (phone.getId()==id){
                return phoneDB.remove(phone);
            }
        }
        return false;
    }

    @Override
    public Phone add(Phone phone) {
        for (Phone thisPhone:phoneDB) {
            if(thisPhone.getId()==phone.getId()){
                return null;
            }
        }
        if(phoneDB.add(phone)){
            return phone;
        }
        return null;
    }
}
