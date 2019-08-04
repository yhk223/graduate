package com.ssm.entity;

import javax.persistence.*;
import java.util.Date;
@Entity
@Table(name="cart")
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer cartid;
    private String mobilestyle;
    private String mobileimg;
    private Double price;
    private Integer count;
    //回购车描述
    private String description;
    //订单创建人
    @ManyToOne
    @JoinColumn(name = "userid")
    private User user;

    private Date creattime;

    @Override
    public String toString() {
        return "Cart{" +
                "cartid=" + cartid +
                ", mobilestyle='" + mobilestyle + '\'' +
                ", mobileimg='" + mobileimg + '\'' +
                ", price=" + price +
                ", count=" + count +
                ", user=" + user +
                ", creattime=" + creattime +
                '}';
    }

    public User getUser() {
        return user;
    }
    public int getuserid() {
		return user.getUserid();
    	
    }
    public void setUser(User user) {
        this.user = user;
    }

    public Integer getCartid() {
        return cartid;
    }

    public void setCartid(Integer cartid) {
        this.cartid = cartid;
    }

    public String getMobilestyle() {
        return mobilestyle;
    }

    public void setMobilestyle(String mobilestyle) {
        this.mobilestyle = mobilestyle;
    }

    public String getMobileimg() {
        return mobileimg;
    }

    public void setMobileimg(String mobileimg) {
        this.mobileimg = mobileimg;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }


    public Date getCreattime() {
        return creattime;
    }

    public void setCreattime(Date creattime) {
        this.creattime = creattime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
