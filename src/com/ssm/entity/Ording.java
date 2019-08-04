package com.ssm.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;
//订单表
@Entity
@Table(name="ording")
public class Ording {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ordingid;
    @ManyToOne
    @JoinColumn(name = "userid")
    private User user;
    private String homeTime;
    //订单生成时间
    private Date creatTime;
    @NotNull
    private String linkname;
    @NotNull
    //客户电话
    private String phone;
    //客户地址
    private String address;
    @NotNull
    private String fulladdress;
    //客户支付宝
    private String alipayname;
    private String alpayaccount;
    private String bank;
    private String bankidname;
    private String bankid;
    private String mobilepwd;


    //回收的手机类型,手机价格,简介描述，图片
    private String mobilestyle;
    private double mobileprice;
    private String description;
    private String img;


    @Override
    public String toString() {
        return "Ording{" +
                "ordingid=" + ordingid +
                ", user=" + user +
                ", homeTime='" + homeTime + '\'' +
                ", creatTime=" + creatTime +
                ", linkname='" + linkname + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", fulladdress='" + fulladdress + '\'' +
                ", alipayname='" + alipayname + '\'' +
                ", alpayaccount='" + alpayaccount + '\'' +
                ", bank='" + bank + '\'' +
                ", bankidname='" + bankidname + '\'' +
                ", bankid='" + bankid + '\'' +
                ", mobilepwd='" + mobilepwd + '\'' +
                ", mobilestyle='" + mobilestyle + '\'' +
                ", mobileprice=" + mobileprice +
                ", description='" + description + '\'' +
                ", img='" + img + '\'' +
                '}';
    }

    public String getLinkname() {
        return linkname;
    }

    public void setLinkname(String linkname) {
        this.linkname = linkname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFulladdress() {
        return fulladdress;
    }

    public void setFulladdress(String fulladdress) {
        this.fulladdress = fulladdress;
    }

    public String getAlipayname() {
        return alipayname;
    }

    public void setAlipayname(String alipayname) {
        this.alipayname = alipayname;
    }

    public String getAlpayaccount() {
        return alpayaccount;
    }

    public void setAlpayaccount(String alpayaccount) {
        this.alpayaccount = alpayaccount;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getBankidname() {
        return bankidname;
    }

    public void setBankidname(String bankidname) {
        this.bankidname = bankidname;
    }

    public String getBankid() {
        return bankid;
    }

    public void setBankid(String bankid) {
        this.bankid = bankid;
    }

    public String getMobilepwd() {
        return mobilepwd;
    }

    public void setMobilepwd(String mobilepwd) {
        this.mobilepwd = mobilepwd;
    }

    public String getMobilestyle() {
        return mobilestyle;
    }

    public void setMobilestyle(String mobilestyle) {
        this.mobilestyle = mobilestyle;
    }

    public double getMobileprice() {
        return mobileprice;
    }

    public void setMobileprice(double mobileprice) {
        this.mobileprice = mobileprice;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getOrdingid() {
        return ordingid;
    }

    public void setOrdingid(Integer ordingid) {
        this.ordingid = ordingid;
    }


    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(Date creatTime) {
        this.creatTime = creatTime;
    }

    public String getHomeTime() {
        return homeTime;
    }

    public void setHomeTime(String homeTime) {
        this.homeTime = homeTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
