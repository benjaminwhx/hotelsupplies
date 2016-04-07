package com.benjamin.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by piqiu on 16/3/27.
 */
@Entity
@Table(name = "category")
public class ProductCategory extends BaseDomain implements Serializable {
    private static final long serialVersionUID = 4754376162897622506L;
    @Column(name = "name", nullable = false)
    private String categoryName;
    @Column(name = "parent_id", nullable = false)
    private int parentId;
    @Column(name = "key", nullable = false)
    private String key;
    @Column(name = "level", nullable = false)
    private int level;
    @OneToMany(mappedBy = "productCategory", fetch = FetchType.LAZY,cascade = {CascadeType.MERGE,CascadeType.REMOVE})
    private Set<Product> products;

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }
}
