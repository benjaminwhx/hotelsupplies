package com.benjamin.common.orm;

import org.apache.commons.lang.StringUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by piqiu on 2/22/16.
 */
public class Page<T> {
    public static final String ASC = "asc";
    public static final String DESC = "desc";
    /** 页数 **/
    protected int pageNo = 1;
    /** 每页的个数 **/
    protected int pageSize = -1;
    /** 要排序的字段 **/
    protected String orderBy = null;
    /** 排序的类型，ASC或者DESC **/
    protected String order = null;
    protected boolean autoCount = true;
    protected List<T> result = new ArrayList<>();
    /** 总数 **/
    protected long totalCount = -1L;

    public Page(){}

    public Page(int pageSize) {
        this.pageSize = pageSize;
    }

    /**
     * 获得当前页的第一条的序号
     * @return
     */
    public int getFirst() {
        return (pageNo - 1) * pageSize + 1;
    }

    /**
     * 判断order和orderBy是否有值
     * @return  order和orderBy都不为空返回true，否则false
     */
    public boolean isOrderBySetted() {
        return StringUtils.isNotBlank(this.orderBy) && StringUtils.isNotBlank(this.order);
    }

    /**
     * 获得总页数
     * @return
     */
    public long getTotalPages() {
        if (totalCount < 0L) {
            return -1L;
        } else {
            long count = totalCount / (long)pageSize;
            if (totalCount % (long)pageSize > 0L) {
                ++count;
            }
            return count;
        }
    }

    /**
     * 是否有下一页
     * @return
     */
    public boolean isHasNext() {
        return (long)(pageNo + 1) <= getTotalPages();
    }

    /**
     * 获得下一页的页数，如果没有下一页，返回当前页
     * @return
     */
    public int getNextPage() {
        return isHasNext() ? pageNo + 1 : pageNo;
    }

    /**
     * 是否有上一页
     * @return
     */
    public boolean isHasPre() {
        return pageNo - 1 >= 1;
    }

    /**
     * 获得上一页的页数，如果没有上一页，返回当前页
     * @return
     */
    public int getPrePage() {
        return isHasPre() ? pageNo -1 : pageNo;
    }

    /**  get this page by property  **/
    public Page<T> pageNo(int thePageNo) {
        setPageNo(thePageNo);
        return this;
    }

    public Page<T> pageSize(int thePageSize) {
        setPageSize(thePageSize);
        return this;
    }

    public Page<T> orderBy(String theOrderBy) {
        setOrderBy(theOrderBy);
        return this;
    }

    public Page<T> order(String theOrder) {
        setOrder(theOrder);
        return this;
    }

    public Page<T> autoCount(boolean theAutoCount) {
        setAutoCount(theAutoCount);
        return this;
    }

    public Page<T> result(List<T> result) {
        setResult(result);
        return this;
    }

    /**  getter and setter  **/
    public int getPageNo() {
        return this.pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
        if (pageNo < 1) {
            this.pageNo = 1;
        }
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public String getOrderBy() {
        return this.orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public String getOrder() {
        return this.order;
    }

    /**
     * 设置排序的类型，多个字段传入多个类型，以逗号分隔
     * 例如: desc,desc
     * @param order 排序类型组合的字符串
     */
    public void setOrder(String order) {
        String lowcaseOrder = StringUtils.lowerCase(order);
        String[] orders = StringUtils.split(lowcaseOrder, ",");
        String[] arr$ = orders;
        int len$ = arr$.length;

        for (int i$ = 0; i$ < len$; ++i$) {
            String orderStr = arr$[i$];
            if (!StringUtils.equals(DESC, orderStr) && !StringUtils.equals(ASC, orderStr)) {
                throw new IllegalArgumentException("排序方向" + orderStr + "不是合法值");
            }
        }

        this.order = lowcaseOrder;
    }

    public boolean isAutoCount() {
        return this.autoCount;
    }

    public void setAutoCount(boolean autoCount) {
        this.autoCount = autoCount;
    }

    public List<T> getResult() {
        return this.result;
    }

    public void setResult(List<T> result) {
        this.result = result;
    }

    public void setTotalCount(long totalCount) {
        this.totalCount = totalCount;
    }

    public long getTotalCount() {
        return this.totalCount;
    }

}
