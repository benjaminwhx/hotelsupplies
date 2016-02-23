package com.benjamin.dao.base;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Criterion;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * Created by piqiu on 2/22/16.
 * DAO接口
 */
public interface IBaseDao<T, ID extends Serializable> {

    void save(T t);

    void saveOrUpdate(T t);

    void delete(T t);

    void delete(ID id);

    T get(ID id);

    List<T> get(Collection<ID> ids);

    List<T> getAll();

    List<T> getAll(String orderByProperty, boolean isAsc);

    List<T> findBy(String propertyName, Object value);

    T findUniqueBy(String propertyName, Object value);

    <X> List<X> find(String hql, Object... values);

    <X> List<X> find(String hql, Map<String, ?> values);

    <X> X findUnique(String hql, Object... values);

    <X> X findUnique(String hql, Map<String, ?> values);

    int batchExecute(String hql, Object... values);

    int batchExecute(String hql, Map<String, ?> values);

    Query createQuery(String queryString, Object... values);

    Query createQuery(String queryString, Map<String, ?> values);

    List<T> find(Criterion... criterions);

    T findUnique(Criterion... criterions);

    Criteria createCriteria(Criterion... criterions);

    void flush();

    Query distinct(Query query);

    Criteria distinct(Criteria criteria);

}
