package com.benjamin.dao.base;

import com.benjamin.utils.ReflectionUtils;
import org.hibernate.*;
import org.hibernate.criterion.*;
import org.hibernate.metadata.ClassMetadata;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * Created by piqiu on 2/22/16.
 */
public class BaseDao<T, ID extends Serializable> implements IBaseDao<T, ID> {
    protected Logger logger = LoggerFactory.getLogger(this.getClass());
    protected SessionFactory sessionFactory;
    protected Class<T> entityClass; // 实体类数组，默认就是T

    public BaseDao() {
        this.entityClass = ReflectionUtils.getSuperClassGenericType(this.getClass());
    }

    public BaseDao(SessionFactory sessionFactory, Class<T> entityClass) {
        this.sessionFactory = sessionFactory;
        this.entityClass = entityClass;
    }

    public SessionFactory getSessionFactory() {
        return this.sessionFactory;
    }

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void save(T t) {
        Assert.notNull(t, "entity不能为空");
        getSession().save(t);
        logger.info("save entity: {}", t);
    }

    @Override
    public void saveOrUpdate(T t) {
        Assert.notNull(t, "entity不能为空");
        getSession().saveOrUpdate(t);
        logger.info("save entity: {}", t);
    }

    @Override
    public void delete(T t) {
        Assert.notNull(t, "entity不能为空");
        getSession().delete(t);
        logger.info("delete entity: {}", t);
    }

    @Override
    public void delete(ID id) {
        Assert.notNull(id, "id不能为空");
        delete(get(id));
        logger.info("delete entity {}, id is {}", entityClass.getSimpleName(), id);
    }

    @Override
    public T get(ID id) {
        Assert.notNull(id, "id不能为空");
        return (T)getSession().load(entityClass, id);   // 延迟加载
    }

    @Override
    public List<T> get(Collection<ID> ids) {
        return find(new Criterion[]{Restrictions.in(getIdName(), ids)});
    }

    /**
     * 查询实体对应的全部数据
     * @return
     */
    @Override
    public List<T> getAll() {
        return find(new Criterion[0]);
    }

    /**
     * 查询实体对应的全部数据，并按orderByProperty排序
     * @param orderByProperty   要排序的字段名称
     * @param isAsc true是升序，false是降序
     * @return
     */
    @Override
    public List<T> getAll(String orderByProperty, boolean isAsc) {
        Criteria c = this.createCriteria(new Criterion[0]);
        if (isAsc) {
            c.addOrder(Order.asc(orderByProperty));
        } else {
            c.addOrder(Order.desc(orderByProperty));
        }
        return c.list();
    }

    @Override
    public List<T> findBy(String propertyName, Object value) {
        Assert.hasText(propertyName, "propertyName不能为空");
        SimpleExpression criterion = Restrictions.eq(propertyName, value);
        return find(new Criterion[]{criterion});
    }

    @Override
    public T findUniqueBy(String propertyName, Object value) {
        Assert.hasText(propertyName, "propertyName不能为空");
        SimpleExpression criterion = Restrictions.eq(propertyName, value);
        return findUnique(new Criterion[]{criterion});
    }

    @Override
    public <X> List<X> find(String hql, Object... values) {
        return createQuery(hql, values).list();
    }

    @Override
    public <X> List<X> find(String hql, Map<String, ?> values) {
        return createQuery(hql, values).list();
    }

    @Override
    public <X> X findUnique(String hql, Object... values) {
        return (X)createQuery(hql ,values).uniqueResult();
    }

    @Override
    public <X> X findUnique(String hql, Map<String, ?> values) {
        return (X)createQuery(hql ,values).uniqueResult();
    }

    @Override
    public int batchExecute(String hql, Object... values) {
        return createQuery(hql ,values).executeUpdate();
    }

    @Override
    public int batchExecute(String hql, Map<String, ?> values) {
        return createQuery(hql, values).executeUpdate();
    }

    @Override
    public Query createQuery(String queryString, Object... values) {
        Assert.hasText(queryString, "queryString不能为空");
        Query query = getSession().createQuery(queryString);
        if (values != null) {
            for (int i = 0; i < values.length; ++i) {
                query.setParameter(i, values[i]);
            }
        }
        return query;
    }

    @Override
    public Query createQuery(String queryString, Map<String, ?> values) {
        Assert.hasText(queryString, "queryString不能为空");
        Query query = getSession().createQuery(queryString);
        if (values != null) {
            query.setProperties(values);
        }
        return query;
    }

    @Override
    public List<T> find(Criterion... criterions) {
        return createCriteria(criterions).list();
    }

    @Override
    public T findUnique(Criterion... criterions) {
        return (T)createCriteria(criterions).uniqueResult();
    }

    @Override
    public Criteria createCriteria(Criterion... criterions) {
        Criteria criteria = getSession().createCriteria(entityClass);
        Criterion[] arr$ = criterions;
        int len$ = arr$.length;

        for (int i$ = 0; i$ < len$; ++i$) {
            Criterion c = arr$[i$];
            criteria.add(c);
        }

        return criteria;
    }

    @Override
    public void flush() {
        getSession().flush();
    }

    @Override
    public Query distinct(Query query) {
        query.setResultTransformer(CriteriaSpecification.DISTINCT_ROOT_ENTITY);
        return query;
    }

    @Override
    public Criteria distinct(Criteria criteria) {
        criteria.setResultTransformer(CriteriaSpecification.DISTINCT_ROOT_ENTITY);
        return criteria;
    }

    /**
     * 解决no session的延迟加载问题
     * 在配置文件里面可以用lazy=true，在程序里面可以用强制加载的方法Hibernate.initialize(Object proxy)
     * 方法强制加载这样就相当于动态改变为lazy=false。
     * 但在使用时需要注意的一点是：其中的proxy是持久对象的关联对象属性，比如A实体，
     * 你要把A的关联实体B也检出，则要写Hibernate.initialize(a.b)。
     * @param proxy
     */
    public void initProxyObject(Object proxy) {
        Hibernate.initialize(proxy);
    }

    /**
     * 得到T类的主键名称
     * @return
     */
    protected String getIdName() {
        // 访问元数据
        ClassMetadata meta = getSessionFactory().getClassMetadata(entityClass);
        return meta.getIdentifierPropertyName();    // 得到主键名称
    }

    /**
     * 属性值是否是唯一的
     * @param propertyName  属性名
     * @param newValue  新值
     * @param oldValue  旧值
     * @return
     */
    public boolean isPropertyUnique(String propertyName, Object newValue, Object oldValue) {
        if (newValue != null && !oldValue.equals(newValue)) {
            Object object = findUniqueBy(propertyName, newValue);
            return object == null;
        } else {
            return true;
        }
    }
}
