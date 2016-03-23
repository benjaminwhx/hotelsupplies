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

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY,cascade = {CascadeType.MERGE,CascadeType.REMOVE})
    private List<Collections> collectionsList;

    public List<Collections> getCollectionsList() {
        return collectionsList;
    }

    public void setCollectionsList(List<Collections> collectionsList) {
        this.collectionsList = collectionsList;
    }
}
