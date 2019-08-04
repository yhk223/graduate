package com.ssm.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="baseinfo")
public class BaseInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer baseid;
    private String baseInfoname;
    @ManyToOne
    @JoinColumn(name = "mobile_id")
    private Mobile mobile;
    @OneToMany(mappedBy = "baseInfo")
    public Set<Baseinfomations>baseinfomations=new HashSet<>();
    private String creator;
    private String mender;
    private String creattime;
    private String mendtime;

    public Set<Baseinfomations> getBaseinfomations() {
        return baseinfomations;
    }

    public void setBaseinfomations(Set<Baseinfomations> baseinfomations) {
        this.baseinfomations = baseinfomations;
    }

    public Integer getBaseid() {
        return baseid;
    }

    public void setBaseid(Integer baseid) {
        this.baseid = baseid;
    }

    public String getBaseInfoname() {
        return baseInfoname;
    }

    public void setBaseInfoname(String baseInfoname) {
        this.baseInfoname = baseInfoname;
    }

    public Mobile getMobile() {
        return mobile;
    }

    public void setMobile(Mobile mobile) {
        this.mobile = mobile;
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

    @Override
    public String toString() {
        return "BaseInfo{" +
                "baseid=" + baseid +
                ", baseInfoname='" + baseInfoname + '\'' +
                ", mobile=" + mobile +
                ", creator='" + creator + '\'' +
                ", mender='" + mender + '\'' +
                ", creattime='" + creattime + '\'' +
                ", mendtime='" + mendtime + '\'' +
                '}';
    }
}
