package com.ssm.entity;
//外观

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="facade")
public class Facade {
    @Id
    @GeneratedValue(strategy =GenerationType.IDENTITY )
    private Integer facadeid;
    private String facadeInfo;
    @ManyToOne
    @JoinColumn(name = "modileid")
    private Mobile mobile;

    private String creator;
    private String mender;
    private String creattime;
    private String mendtime;

    @OneToMany(mappedBy = "facade")
    private Set<FacadeInfomations>facadeInfomations=new HashSet<>();

    public Set<FacadeInfomations> getFacadeInfomations() {
        return facadeInfomations;
    }

    public void setFacadeInfomations(Set<FacadeInfomations> facadeInfomations) {
        this.facadeInfomations = facadeInfomations;
    }

    @Override
    public String toString() {
        return "Facade{" +
                "facadeid=" + facadeid +
                ", facadeInfo='" + facadeInfo + '\'' +
                ", modile=" + mobile +
                ", creator='" + creator + '\'' +
                ", mender='" + mender + '\'' +
                ", creattime='" + creattime + '\'' +
                ", mendtime='" + mendtime + '\'' +
                '}';
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

    public Integer getFacadeid() {
        return facadeid;
    }

    public void setFacadeid(Integer facadeid) {
        this.facadeid = facadeid;
    }

    public String getFacadeInfo() {
        return facadeInfo;
    }

    public void setFacadeInfo(String facadeInfo) {
        this.facadeInfo = facadeInfo;
    }

    public Mobile getModile() {
        return mobile;
    }

    public void setModile(Mobile modile) {
        this.mobile = modile;
    }
}
