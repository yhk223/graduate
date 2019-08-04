package com.ssm.entity;

import javax.persistence.*;

@Entity
@Table(name="facadeinfomations")
public class FacadeInfomations {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String Facadename;
    @ManyToOne
    @JoinColumn(name = "facadeid")
    private Facade facade;
    private String creator;
    private String mender;
    private String creattime;
    private String mendtime;
    private String funcintro;
    private double updateprice;

    @Override
    public String toString() {
        return "FacadeInfomations{" +
                "id=" + id +
                ", Facadename='" + Facadename + '\'' +
                ", facade=" + facade +
                ", creator='" + creator + '\'' +
                ", mender='" + mender + '\'' +
                ", creattime='" + creattime + '\'' +
                ", mendtime='" + mendtime + '\'' +
                ", funcintro='" + funcintro + '\'' +
                ", updateprice=" + updateprice +
                '}';
    }

    public double getUpdateprice() {
        return updateprice;
    }

    public void setUpdateprice(double updateprice) {
        this.updateprice = updateprice;
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

    public String getFuncintro() {
        return funcintro;
    }

    public void setFuncintro(String funcintro) {
        this.funcintro = funcintro;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFacadename() {
        return Facadename;
    }

    public void setFacadename(String facadename) {
        Facadename = facadename;
    }

    public Facade getFacade() {
        return facade;
    }

    public void setFacade(Facade facade) {
        this.facade = facade;
    }
}
