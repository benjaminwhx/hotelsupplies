package com.benjamin.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by piqiu on 16/3/24.
 * 产品列表
 */
@Entity
@Table(name = "product")
public class Product extends BaseDomain implements Serializable {
    private static final long serialVersionUID = 1771446967764077311L;
    @Column(name = "name", nullable = false)
    private String name;    // 商品名
    @Column(name = "shortdescription", nullable = false)
    private String shortDescription; // 简短商品描述
    @Column(name = "fulldescription", nullable = false)
    private String fullDescription;  // 完整商品描述
    @Column(name = "originprice", nullable = true)
    private double originPrice; // 商品原价
    @Column(name = "presentprice", nullable = false)
    private double presentPrice;    // 商品现价
    @Column(name = "factoryprice", nullable = false)
    private double factoryPrice; // 商品出厂价
    @Column(name = "placeoforigin", nullable = true)
    private String placeOfOrigin;   // 产地
    @Column(name = "stock", nullable = true)
    private int stock;  // 库存，默认999
    @Column(name = "imagepath", nullable = false)
    private String imagePath;  // 商品图片存放地址，多张图片用;分隔
    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY,cascade = {CascadeType.MERGE,CascadeType.REMOVE})
    private List<Collections> collectionsList;
    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private ProductCategory productCategory;

    public List<Collections> getCollectionsList() {
        return collectionsList;
    }

    public void setCollectionsList(List<Collections> collectionsList) {
        this.collectionsList = collectionsList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getFullDescription() {
        return fullDescription;
    }

    public void setFullDescription(String fullDescription) {
        this.fullDescription = fullDescription;
    }

    public double getOriginPrice() {
        return originPrice;
    }

    public void setOriginPrice(double originPrice) {
        this.originPrice = originPrice;
    }

    public double getPresentPrice() {
        return presentPrice;
    }

    public void setPresentPrice(double presentPrice) {
        this.presentPrice = presentPrice;
    }

    public double getFactoryPrice() {
        return factoryPrice;
    }

    public void setFactoryPrice(double factoryPrice) {
        this.factoryPrice = factoryPrice;
    }

    public String getPlaceOfOrigin() {
        return placeOfOrigin;
    }

    public void setPlaceOfOrigin(String placeOfOrigin) {
        this.placeOfOrigin = placeOfOrigin;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public ProductCategory getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(ProductCategory productCategory) {
        this.productCategory = productCategory;
    }
}
