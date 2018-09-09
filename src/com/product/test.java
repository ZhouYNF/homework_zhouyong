package com.product;

import com.product.dao.PhoneDAO;
import com.product.dao.PhoneInMemoryDAO;

public class test {
    public static void main(String[] args) {
        PhoneDAO phoneDAO=new PhoneInMemoryDAO();
        System.out.println(phoneDAO.getPhonesByName("华"));
    }
}
