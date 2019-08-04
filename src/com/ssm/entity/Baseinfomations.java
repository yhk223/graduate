package com.ssm.entity;

import javax.persistence.*;

@Entity
@Table(name="baseinfomations")
public class Baseinfomations {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String nameInfo;
    @ManyToOne
    @JoinColumn(name = "baseId")
    public BaseInfo baseInfo;

    private double modifyprice;
    private String creator;
    private String mender;
    private String creattime;
    private String mendtime;
    private String intro;

    @Override
    public String toString() {
        return "Baseinfomations{" +
                "id=" + id +
                ", nameInfo='" + nameInfo + '\'' +
                ", baseInfo=" + baseInfo +
                ", modifyprice=" + modifyprice +
                ", creator='" + creator + '\'' +
                ", mender='" + mender + '\'' +
                ", creattime='" + creattime + '\'' +
                ", mendtime='" + mendtime + '\'' +
                ", intro='" + intro + '\'' +
                '}';
    }

    public double getModifyprice() {
        return modifyprice;
    }

    public void setModifyprice(double modifyprice) {
        this.modifyprice = modifyprice;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNameInfo() {
        return nameInfo;
    }

    public void setNameInfo(String nameInfo) {
        this.nameInfo = nameInfo;
    }

    public BaseInfo getBaseInfo() {
        return baseInfo;
    }

    public void setBaseInfo(BaseInfo baseInfo) {
        this.baseInfo = baseInfo;
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
