package com.benjamin.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * Created by piqiu on 2/17/16.
 */
@MappedSuperclass
public abstract class BaseDomain {

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    protected Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        // SHORT_PREFIX_STYLE是对象名称简写，这里简化对象信息输出
        return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
    }

}
