package com.ssm.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="mobile")
public class Mobile {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer mobileid;
    private String userstyle;
    private String mobileimg;
    private double price;
    //手机mobile外键手机品牌brand 多对一
    @ManyToOne
    @JoinColumn(name = "brandid")
    private Brand brand;

    private String creator;
    private String mender;
    private String creattime;
    private String mendtime;
    @OneToMany(mappedBy = "mobile")
    public Set<BaseInfo>baseInfo =new HashSet<>();

    @OneToMany(mappedBy = "mobile")
    public Set<Function>functions=new HashSet<>();

    @OneToMany(mappedBy = "mobile")
    public Set<Facade>facades=new HashSet<>();

    public Set<Facade> getFacades() {
        return facades;
    }

    public void setFacades(Set<Facade> facades) {
        this.facades = facades;
    }

    public Set<Function> getFunctions() {
        return functions;
    }
    public void setFunctions(Set<Function> functions) {
        this.functions = functions;
    }


    public Set<BaseInfo> getBaseInfo() {
        return baseInfo;
    }

    public void setBaseInfo(Set<BaseInfo> baseInfo) {
        this.baseInfo = baseInfo;
    }



    @Override
    public String toString() {
        return "Mobile{" +
                "mobileid=" + mobileid +
                ", userstyle='" + userstyle + '\'' +
                ", mobileimg='" + mobileimg + '\'' +
                ", price=" + price +
                ", brand=" + brand +
                ", creator='" + creator + '\'' +
                ", mender='" + mender + '\'' +
                ", creattime='" + creattime + '\'' +
                ", mendtime='" + mendtime + '\'' +
                '}';
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Integer getMobileid() {
        return mobileid;
    }

    public void setMobileid(Integer mobileid) {
        this.mobileid = mobileid;
    }

    public String getUserstyle() {
        return userstyle;
    }

    public void setUserstyle(String userstyle) {
        this.userstyle = userstyle;
    }

    public String getMobileimg() {
        return mobileimg;
    }

    public void setMobileimg(String mobileimg) {
        this.mobileimg = mobileimg;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getMender() {
        return mender;
    }

    public void setMender(String mender) {
        this.mender = mender;
    }

    public String getCreattime() {
        return creattime;
    }

    public void setCreattime(String creattime) {
        this.creattime = creattime;
    }

    public String getMendtime() {
        return mendtime;
    }

    public void setMendtime(String mendtime) {
        this.mendtime = mendtime;
    }
}
