package com.ssm.entity;

import javax.persistence.*;

//手机功能表
@Entity
@Table(name="function")
public class Function {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer funid;
    private String funname;
    private String creator;
    private String mender;
    private String creattime;
    private String mendtime;
    private String funcintro;
    private double modifyprice;
    @ManyToOne
    @JoinColumn(name = "mobile_id")
    private Mobile mobile;

    @Override
    public String toString() {
        return "Function{" +
                "funid=" + funid +
                ", funname='" + funname + '\'' +
                ", creator='" + creator + '\'' +
                ", mender='" + mender + '\'' +
                ", creattime='" + creattime + '\'' +
                ", mendtime='" + mendtime + '\'' +
                ", funcintro='" + funcintro + '\'' +
                ", modifyprice=" + modifyprice +
                ", mobile=" + mobile +
                '}';
    }

    public double getModifyprice() {
        return modifyprice;
    }

    public void setModifyprice(double modifyprice) {
        this.modifyprice = modifyprice;
    }

    public Mobile getMobile() {
        return mobile;
    }

    public void setMobile(Mobile mobile) {
        this.mobile = mobile;
    }

    public String getFuncintro() {
        return funcintro;
    }

    public void setFuncintro(String funcintro) {
        this.funcintro = funcintro;
    }

    public Integer getFunid() {
        return funid;
    }

    public void setFunid(Integer funid) {
        this.funid = funid;
    }

    public String getFunname() {
        return funname;
    }

    public void setFunname(String funname) {
        this.funname = funname;
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
