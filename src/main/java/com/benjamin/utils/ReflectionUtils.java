package com.benjamin.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * Created by piqiu on 2/22/16.
 */
public class ReflectionUtils {
    private static Logger logger = LoggerFactory.getLogger(ReflectionUtils.class);

    public ReflectionUtils(){}

    public static <T> Class<T> getSuperClassGenericType(Class clazz) {
        return getSuperClassGenericType(clazz, 0);
    }

    public static Class getSuperClassGenericType(Class clazz, int index) {
        // Type是 Java 编程语言中所有类型的公共高级接口。它们包括原始类型、参数化类型、数组类型、类型变量和基本类型。
        Type genType = clazz.getGenericSuperclass();// 获得带有泛型的父类
        if (!(genType instanceof ParameterizedType)) {
            logger.warn(clazz.getSimpleName() + "\'s superclass not ParameterizedType");
            return Object.class;
        } else {
            // 获得泛型参数数组
            Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
            if (index < params.length && index >= 0) {
                if(!(params[index] instanceof Class)) {
                    logger.warn(clazz.getSimpleName() + " not set the actual class on superclass generic parameter");
                    return Object.class;
                } else {
                    return (Class)params[index];
                }
            } else {
                logger.warn("Index: " + index + ", Size of " + clazz.getSimpleName() + "\'s Parameterized Type: " + params.length);
                return Object.class;
            }
        }
    }

    /**
     * 设置字段的值
     * @param obj   要设置值的对象
     * @param fieldName 设置的字段字符串形式
     * @param value 设置的字段值
     */
    public static void setFieldValue(Object obj, String fieldName, Object value) {
        Field field = getAccessibleField(obj, fieldName);
        if (field == null) {
            throw new IllegalArgumentException("Could not find field [" + fieldName + "] on target [" + obj + "]");
        } else {
            try {
                field.set(obj, value);
            } catch (IllegalAccessException e) {
                logger.error("不可能抛出的异常:{}", e.getMessage());
            }
        }
    }

    /**
     * 获取字段值
     * @param obj   要获取值的对象
     * @param fieldName 字符的字符串形式
     * @return  obj的字段的值
     */
    public static Object getFieldValue(Object obj, String fieldName) {
        Field field = getAccessibleField(obj, fieldName);
        if (field == null) {
            throw new IllegalArgumentException("Could not find field [" + fieldName + "] on target [" + obj + "]");
        } else {
            Object result = null;
            try {
                result = field.get(obj);
            } catch (IllegalAccessException e) {
                logger.error("不可能抛出的异常:{}", e.getMessage());
            }
            return result;
        }
    }

    /**
     * 返回对象obj的可访问字段fieldName的实例
     * @param obj   对象obj
     * @param fieldName 字段的字符串形式
     * @return  字段的实例化
     */
    public static Field getAccessibleField(Object obj, String fieldName) {
        Assert.notNull(obj, "object不能为空");
        Assert.hasText(fieldName, "fieldName");
        Class superClass = obj.getClass();

        while (superClass != Object.class) {
            try {
                Field e = superClass.getDeclaredField(fieldName);
                e.setAccessible(true);
                return e;
            } catch (NoSuchFieldException e) {
                superClass = superClass.getSuperclass();
            }
        }
        return null;
    }
}
