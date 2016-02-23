package com.benjamin.common.orm;

import com.benjamin.utils.ServletUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.util.Assert;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by piqiu on 2/23/16.
 * 属性过滤器
 */
public class PropertyFilter {
    public static final String OR_SEPARATOR = "_OR_";
    public static final String UNDER_LINE = "_";
    public static final String FILTER_DEFAULT_PREFIX = "filter";
    private MatchType matchType;
    private Object matchValue;
    private Class<?> propertyClass;
    private String[] propertyNames;

    public PropertyFilter(){}

    /**
     * 初始化filter
     * 例如：filterName = GEN_sec
     *      value = secType
     *      firstPart -> GEN
     *      matchTypeCode -> GE
     *      propertyTypeCode -> N
     *      propertyNameStr -> sec
     *      propertyNames -> 按照_or_拆分sec
     *      matchValue -> value按照propertyClass转换类型
     * @param filterName    过滤拼接字符串
     * @param value
     */
    public PropertyFilter(String filterName, String value) {
        String firstPart = StringUtils.substringBefore(filterName, UNDER_LINE);
        String matchTypeCode = StringUtils.substring(firstPart, 0, firstPart.length() - 1);
        String propertyTypeCode = StringUtils.substring(firstPart, firstPart.length() - 1, firstPart.length());
        try {
            matchType = Enum.valueOf(MatchType.class, matchTypeCode);
            propertyClass = Enum.valueOf(PropertyType.class, propertyTypeCode).getValue();
        } catch (RuntimeException var8) {
            throw new IllegalArgumentException(getErrorRuleFilterStr(filterName), var8);
        }
        String propertyNameStr = StringUtils.substringAfter(filterName, UNDER_LINE);
        Assert.isTrue(StringUtils.isNotBlank(propertyNameStr), getErrorRuleFilterStr(filterName));
        propertyNames = StringUtils.splitByWholeSeparator(propertyNameStr, OR_SEPARATOR);
        matchValue = ConvertUtils.convert(value, propertyClass);    // 转换类型
    }

    /**
     * 默认的url参数格式为 filter_GEN_sec
     * @param request
     * @return
     */
    public static List<PropertyFilter> buildFromHttpRequest(HttpServletRequest request) {
        return buildFromHttpRequest(request, FILTER_DEFAULT_PREFIX);
    }

    /**
     * url 参数格式为 filterPrefix_GEN_sec
     * @param request   request请求
     * @param filterPrefix  参数前缀
     * @return  过滤属性集合
     */
    public static List<PropertyFilter> buildFromHttpRequest(HttpServletRequest request, String filterPrefix) {
        List<PropertyFilter> filterList = new ArrayList<>();
        Map<String, Object> filterParamMap = ServletUtils.getParametersStartingWith(request, filterPrefix + UNDER_LINE);
        for (Map.Entry<String, Object> entry : filterParamMap.entrySet()) {
            String filterName = entry.getKey();
            String value = (String)entry.getValue();
            if (StringUtils.isNotBlank(value)) {
                filterList.add(new PropertyFilter(filterName, value));
            }
        }
        return filterList;
    }

    private String getErrorRuleFilterStr(String filterName) {
        return new StringBuilder("filter名称").append(filterName).append("没有按规则编写，无法得到属性名称.").toString();
    }
    /**
     * 组合filter字符串，格式例如这样：EQS_name
     * @param matchType 匹配的类型MatchType
     * @param propertyType  匹配的属性类型PropertyType
     * @param propertyName  属性名称
     * @return  组合的filter字符串
     */
    public String getCombinationValue(MatchType matchType, PropertyType propertyType, String propertyName) {
        StringBuilder sb = new StringBuilder();
        sb.append(matchType.toString()).append(propertyType.toString()).append(UNDER_LINE).append(propertyName);
        return sb.toString();
    }

    public static enum PropertyType {
        S(String.class),
        I(Integer.class),
        L(Long.class),
        N(Double.class),
        D(Date.class),
        B(Boolean.class);

        private Class<?> clazz;

        private PropertyType(Class<?> clazz) {
            this.clazz = clazz;
        }

        public Class<?> getValue() {
            return this.clazz;
        }
    }

    /** 匹配类型 **/
    public static enum MatchType {
        EQ,
        LIKE,
        LT,
        GT,
        LE,
        GE;
        private MatchType(){}
    }

    /** getter and setter **/
    public Class<?> getPropertyClass() {
        return this.propertyClass;
    }

    public MatchType getMatchType() {
        return this.matchType;
    }

    public Object getMatchValue() {
        return this.matchValue;
    }

    public String[] getPropertyNames() {
        return this.propertyNames;
    }

    public String getPropertyName() {
        Assert.isTrue(this.propertyNames.length == 1, "There are not only one property in this filter.");
        return this.propertyNames[0];
    }

    public boolean hasMultiProperties() {
        return this.propertyNames.length > 1;
    }

}
