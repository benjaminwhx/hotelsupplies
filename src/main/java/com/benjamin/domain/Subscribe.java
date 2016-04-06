package com.benjamin.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by benjamin on 16/4/6.
 * 订阅邮件
 */
@Entity
@Table(name = "subscribe")
public class Subscribe extends BaseDomain implements Serializable {
    private static final long serialVersionUID = 8937678804073805334L;
    @Column(name = "email", nullable = false)
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
