package com.product.entity;

public class Phone {
    //商品编号
    private int id;
    //商品名字
    private String name;
    //商品价格
    private float price;
    //商品数量
    private int number;
    //商品厂商
    private String manufacturer;
    //商品海报
    private String picture;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Phone() {
    }

    public Phone(int id, String name, float price, int number, String manufacturer, String picture) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.number = number;
        this.manufacturer = manufacturer;
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Phone{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", number=" + number +
                ", manufacturer='" + manufacturer + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}
