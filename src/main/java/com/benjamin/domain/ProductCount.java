package com.benjamin.domain;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by piqiu on 16/3/28.
 * 产品的收藏和查看次数
 */
@Entity
@Table(name = "productcount")
public class ProductCount extends BaseDomain implements Serializable {
    private static final long serialVersionUID = 1367108876455222025L;
    @Column(name = "review_count", nullable = false)
    private Long reviewCount;
    @Column(name = "favourite_count", nullable = false)
    private Long favouriteCount;
    @OneToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    public Long getReviewCount() {
        return reviewCount;
    }

    public void setReviewCount(Long reviewCount) {
        this.reviewCount = reviewCount;
    }

    public Long getFavouriteCount() {
        return favouriteCount;
    }

    public void setFavouriteCount(Long favouriteCount) {
        this.favouriteCount = favouriteCount;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
