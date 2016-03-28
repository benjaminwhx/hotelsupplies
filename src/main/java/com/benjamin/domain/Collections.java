package com.benjamin.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Calendar;

/**
 * Created by piqiu on 16/3/24.
 * 收藏列表
 */
@Entity
@Table(name = "collections")
public class Collections extends BaseDomain implements Serializable {
    private static final long serialVersionUID = 2641673026911174381L;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
    @Column(name = "collection_date", nullable = false)
    private Calendar collectionDate;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Calendar getCollectionDate() {
        return collectionDate;
    }

    public void setCollectionDate(Calendar collectionDate) {
        this.collectionDate = collectionDate;
    }
}
