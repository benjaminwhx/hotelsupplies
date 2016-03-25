package com.benjamin.domain;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by piqiu on 2/17/16.
 */
@Entity
@Table(name = "user")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class User extends BaseDomain implements Serializable{
    private static final long serialVersionUID = 1645588030306171446L;
    @Column(name = "username", nullable = false)
    private String userName;
    @Column(name = "email", nullable = false)
    private String email;
    @Column(name = "password", nullable = false)
    private String password;
    @Column(name = "gender", nullable = false)
    private int gender;
    @Column(name = "truename", nullable = true)
    private String trueName;
    @Column(name = "qq", nullable = true)
    private Integer qq;
    @Column(name = "address", nullable = true)
    private String address;
    @Column(name = "ipaddress", nullable = true)
    private String ipAddress;
    @Column(name = "token", nullable = true)
    private String token;
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY,cascade = {CascadeType.MERGE,CascadeType.REMOVE})
    private List<Collections> collectionsList;

    public User(){}

    public User(String userName, String email, String password, int gender, String trueName, Integer qq, String address, String ipAddress, String token) {
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.trueName = trueName;
        this.qq = qq;
        this.address = address;
        this.ipAddress = ipAddress;
        this.token = token;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getTrueName() {
        return trueName;
    }

    public void setTrueName(String trueName) {
        this.trueName = trueName;
    }

    public Integer getQq() {
        return qq;
    }

    public void setQq(Integer qq) {
        this.qq = qq;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public List<Collections> getCollectionsList() {
        return collectionsList;
    }

    public void setCollectionsList(List<Collections> collectionsList) {
        this.collectionsList = collectionsList;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }
}
