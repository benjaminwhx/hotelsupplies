package com.benjamin.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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
}
