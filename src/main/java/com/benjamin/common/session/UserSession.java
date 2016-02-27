package com.benjamin.common.session;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by piqiu on 2/27/16.
 * 用户Session信息保管类
 */
public class UserSession {

    /** 保存用户的信息 **/
    private static final ThreadLocal<Map<Object, Object>> userThreadLocal = new ThreadLocal<>();

    protected UserSession(){}

    public static Object get(String attribute) {
        Map<Object, Object> userInfo = userThreadLocal.get();
        Object o = null;
        if (userInfo != null) {
            o = userInfo.get(attribute);
        }
        return o;
    }

    public static <T> T get(String attribute, Class<T> clazz) {
        return (T)get(attribute);
    }

    public static void set(Object attribute, Object value) {
        Map<Object, Object> userInfo = userThreadLocal.get();
        if (userInfo == null) {
            userInfo = new HashMap<>();
            userThreadLocal.set(userInfo);
        }
        userInfo.put(attribute, value);
    }
}
