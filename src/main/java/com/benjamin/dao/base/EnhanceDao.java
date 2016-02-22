package com.benjamin.dao.base;

import org.hibernate.SessionFactory;

import java.io.Serializable;

/**
 * Created by piqiu on 2/22/16.
 */
public class EnhanceDao<T, ID extends Serializable> extends BaseDao<T, ID> {
    public EnhanceDao(){}

    public EnhanceDao(SessionFactory sessionFactory, Class<T> entityClass) {
        super(sessionFactory, entityClass);
    }

}
