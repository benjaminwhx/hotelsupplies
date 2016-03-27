package com.benjamin.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by piqiu on 16/3/24.
 * 产品列表
 */
@Entity
@Table
public class Product extends BaseDomain implements Serializable {
    private static final long serialVersionUID = 1771446967764077311L;
    private String name;    // 商品名
    private String shortDescription; // 简短商品描述
    private String fullDescriptio;  // 完整商品描述
    private double originPrice; // 商品原价
    private double presentPrice;    // 商品现价
    private double factoryPrice; // 商品出厂价
    private String placeOfOrigin;   // 产地
    private int stock;  // 库存
    private int imagePath;  // 商品图片存放地址，多张图片用;分隔

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY,cascade = {CascadeType.MERGE,CascadeType.REMOVE})
    private List<Collections> collectionsList;

    public List<Collections> getCollectionsList() {
        return collectionsList;
    }

    public void setCollectionsList(List<Collections> collectionsList) {
        this.collectionsList = collectionsList;
    }
}
