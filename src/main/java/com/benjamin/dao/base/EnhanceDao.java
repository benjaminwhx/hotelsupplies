package com.benjamin.dao.base;

import com.benjamin.utils.ReflectionUtils;
import com.benjamin.common.orm.Page;
import com.benjamin.common.orm.PropertyFilter;
import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.*;
import org.hibernate.internal.CriteriaImpl;
import org.hibernate.transform.ResultTransformer;
import org.springframework.util.Assert;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by piqiu on 2/22/16.
 */
public class EnhanceDao<T, ID extends Serializable> extends BaseDao<T, ID> {
    public EnhanceDao(){
        super();
    }

    public EnhanceDao(SessionFactory sessionFactory, Class<T> entityClass) {
        super(sessionFactory, entityClass);
    }

    /**
     * 分页获取全部对象.
     * @param page
     * @return
     */
    public Page<T> getAll(Page<T> page) {
        return findPage(page, new Criterion[0]);
    }

    /**
     * 按HQL分页查询.
     * @param page  分页参数. 注意不支持其中的orderBy参数.
     * @param hql   hql语句.
     * @param values    数量可变的查询参数,按顺序绑定.
     * @return  分页查询结果, 附带结果列表及所有查询输入参数.
     */
    public Page<T> findPage(Page<T> page, String hql, Object... values) {
        Assert.notNull(page, "page不能为空");
        Query q = createQuery(hql, values);
        if (page.isAutoCount()) {
            long result = countHqlResult(hql, values);
            page.setTotalCount(result);
        }
        setPageParameterToQuery(q, page);
        return page.result(q.list());
    }

    /**
     * 按HQL分页查询.
     * @param page  分页参数. 注意不支持其中的orderBy参数.
     * @param hql   hql语句.
     * @param values    数量可变的查询参数,按顺序绑定.
     * @return  分页查询结果, 附带结果列表及所有查询输入参数.
     */
    public Page<T> findPage(Page<T> page, String hql ,Map<String, ?> values) {
        Assert.notNull(page, "page不能为空");
        Query q = createQuery(hql, values);
        if (page.isAutoCount()) {
            long result = countHqlResult(hql, values);
            page.setTotalCount(result);
        }
        setPageParameterToQuery(q, page);
        return page.result(q.list());
    }

    /**
     * 按Criteria分页查询.
     *
     * @param page
     *            分页参数.
     * @param criterions
     *            数量可变的Criterion.
     *
     * @return 分页查询结果.附带结果列表及所有查询输入参数.
     */
    public Page<T> findPage(Page<T> page, Criterion... criterions) {
        Assert.notNull(page, "page不能为空");
        Criteria c = createCriteria(criterions);
        if (page.isAutoCount()) {
            long result = countCriteriaResult(c);
            page.setTotalCount(result);
        }

        setPageParameterToCriteria(c, page);
        return page.result(c.list());
    }

    /**
     * 按属性过滤条件列表分页查找对象.
     */
    public Page<T> findPage(final Page<T> page, final List<PropertyFilter> filters) {
        Criterion[] criterions = buildCriterionByPropertyFilter(filters);
        return findPage(page, criterions);
    }

    /**
     * 按属性查找对象列表,支持多种匹配方式.
     *
     * @param matchType
     *            匹配方式,目前支持的取值见PropertyFilter的MatcheType.
     */
    public List<T> findBy(final String propertyName, final Object value, final PropertyFilter.MatchType matchType) {
        Criterion criterion = buildCriterion(propertyName, value, matchType);
        return find(criterion);
    }

    /**
     * 按属性过滤条件列表查找对象列表.
     */
    public List<T> find(List<PropertyFilter> filters) {
        Criterion[] criterions = buildCriterionByPropertyFilter(filters);
        return find(criterions);
    }

    /**
     * 设置分页参数到Query对象,辅助函数.
     */
    protected Query setPageParameterToQuery(Query q, Page<T> page) {
        Assert.isTrue(page.getPageSize() > 0, "Page Size must larger than zero");
        q.setFirstResult(page.getFirst() - 1);
        q.setMaxResults(page.getPageSize());
        return q;
    }

    /**
     * 设置分页参数到Criteria对象,辅助函数.
     */
    protected Criteria setPageParameterToCriteria(Criteria c, Page<T> page) {
        Assert.isTrue(page.getPageSize() > 0, "Page Size must larger than zero");
        c.setFirstResult(page.getFirst() - 1);
        c.setMaxResults(page.getPageSize());
        if (page.isOrderBySetted()) {
            String[] orderByArray = StringUtils.split(page.getOrderBy(), ",");
            String[] orderArray = StringUtils.split(page.getOrder(), ",");
            Assert.isTrue(orderArray.length == orderByArray.length);

            for (int i = 0; i < orderByArray.length; ++i) {
                if (Page.ASC.equals(orderArray[i])) {
                    c.addOrder(Order.asc(orderByArray[i]));
                } else {
                    c.addOrder(Order.desc(orderByArray[i]));
                }
            }
        }
        return c;
    }

    /**
     * 执行count查询获得本次Hql查询所能获得的对象总数.
     *
     * 本函数只能自动处理简单的hql语句,复杂的hql查询请另行编写count语句查询.
     */
    protected long countHqlResult(String hql, Object... values) {
        String countHql = prepareCountHql(hql);

        try {
            Long e = (Long)findUnique(countHql, values);
            return e.longValue();
        } catch (Exception var5) {
            throw new RuntimeException("hql can\'t be auto count, hql is:" + countHql, var5);
        }
    }

    /**
     * 执行count查询获得本次Hql查询所能获得的对象总数.
     *
     * 本函数只能自动处理简单的hql语句,复杂的hql查询请另行编写count语句查询.
     */
    protected long countHqlResult(String hql, Map<String, ?> values) {
        String countHql = prepareCountHql(hql);

        try {
            Long e = (Long)findUnique(countHql, values);
            return e.longValue();
        } catch (Exception var5) {
            throw new RuntimeException("hql can\'t be auto count, hql is:" + countHql, var5);
        }
    }

    /**
     * 执行count查询获得本次Criteria查询所能获得的对象总数.
     */
    protected long countCriteriaResult(Criteria c) {
        CriteriaImpl impl = (CriteriaImpl)c;
        Projection projection = impl.getProjection();
        ResultTransformer transformer = impl.getResultTransformer();
        List orderEntries = null;

        try {
            orderEntries = (List)ReflectionUtils.getFieldValue(impl, ORDER_ENTRIES);
            ReflectionUtils.setFieldValue(impl, ORDER_ENTRIES, new ArrayList());
        } catch (Exception var11) {
            logger.error("不可能抛出的异常:{}", var11.getMessage());
        }

        Long totalCountObject = (Long)c.setProjection(Projections.rowCount()).uniqueResult();
        long totalCount = totalCountObject != null ? totalCountObject.longValue() : 0L;
        c.setProjection(projection);
        if (projection == null) {
            c.setResultTransformer(CriteriaSpecification.ROOT_ENTITY);
        }

        if (transformer != null) {
            c.setResultTransformer(transformer);
        }

        try {
            ReflectionUtils.setFieldValue(impl, ORDER_ENTRIES, orderEntries);
        } catch (Exception var10) {
            this.logger.error("不可能抛出的异常:{}", var10.getMessage());
        }

        return totalCount;
    }

    /**
     * 按属性条件参数创建Criterion,辅助函数.
     */
    protected Criterion buildCriterion(final String propertyName, final Object propertyValue,
                                       final PropertyFilter.MatchType matchType) {
        Assert.hasText(propertyName, "propertyName不能为空");
        Criterion criterion = null;
        // 根据MatchType构造criterion
        switch (matchType) {
            case EQ:    // =
                criterion = Restrictions.eq(propertyName, propertyValue);
                break;
            case LIKE:  // like
                criterion = Restrictions.like(propertyName, propertyValue);
                break;
            case LE:    // <=
                criterion = Restrictions.le(propertyName, propertyValue);
                break;
            case GE:    // >=
                criterion = Restrictions.ge(propertyName, propertyValue);
                break;
            case LT:
                criterion = Restrictions.lt(propertyName, propertyValue);
                break;
            case GT:
                criterion = Restrictions.gt(propertyName, propertyValue);
                break;
        }
        return criterion;
    }

    /**
     * 按属性条件列表创建Criterion数组,辅助函数.
     */
    protected Criterion[] buildCriterionByPropertyFilter(final List<PropertyFilter> filters) {
        List<Criterion> criterionList = new ArrayList<>();
        for (PropertyFilter filter : filters) {
            if (!filter.hasMultiProperties()) { // 只有一个属性需要比较的情况
                Criterion criterion = buildCriterion(filter.getPropertyName(), filter.getMatchValue(), filter.getMatchType());
                criterionList.add(criterion);
            } else {
                Disjunction disjunction = Restrictions.disjunction();
                for (String param: filter.getPropertyNames()) {
                    Criterion criterion = buildCriterion(param, filter.getMatchValue(), filter.getMatchType());
                    disjunction.add(criterion);
                }
            }
        }
        return criterionList.toArray(new Criterion[criterionList.size()]);
    }

    /**
     * 按照传入的hql拼接出count语句
     * @param orgHql    原始的hql语句
     * @return  拼接出来的count hql语句
     */
    private String prepareCountHql(String orgHql) {
        String fromHql = "from " + StringUtils.substringAfter(orgHql, "from");
        fromHql = StringUtils.substringBefore(fromHql, "order by");
        String countHql = "select count(*) " + fromHql;
        return countHql;
    }

    private static final String ORDER_ENTRIES = "orderEntries";
}
