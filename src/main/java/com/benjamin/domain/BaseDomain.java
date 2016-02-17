package com.benjamin.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;

/**
 * Created by piqiu on 2/17/16.
 */
public class BaseDomain implements Serializable {

    private static final long serialVersionUID = -1507435217983652006L;

    @Override
    public String toString() {
        // SHORT_PREFIX_STYLE是对象名称简写，这里简化对象信息输出
        return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
    }


}
