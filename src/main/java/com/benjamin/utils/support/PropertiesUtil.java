package com.benjamin.utils.support;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

import java.util.*;

/**
 * Created by piqiu on 2/24/16.
 * properties文件工具类
 */
public class PropertiesUtil extends PropertyPlaceholderConfigurer implements Map<String, String> {

    private static final Logger logger = LoggerFactory.getLogger(PropertiesUtil.class);
    private static Map<String, String> ctxPropertiesMap;

    protected void processProperties(
            ConfigurableListableBeanFactory beanFactoryToProcess,
            Properties props) throws BeansException {
        if (ctxPropertiesMap != null) {
            if (logger.isWarnEnabled()) {
                logger.warn("The property map will be override!");
            }
        }
        ctxPropertiesMap = new HashMap<>();
        for (Object key : props.keySet()) {
            String keyStr = key.toString();
            String value = props.getProperty(keyStr);
            ctxPropertiesMap.put(keyStr, value);
        }
    }

    public static String getString(String name) {
        if (ctxPropertiesMap == null) {
            ctxPropertiesMap = new HashMap<>();
        }
        return ctxPropertiesMap.get(name);
    }

    public static boolean getBoolean(String name, boolean defaultValue) {
        String v = getString(name);
        if (v == null) {
            return defaultValue;
        }
        try {
            return Boolean.parseBoolean(v);
        } catch (Exception e) {
        }
        return defaultValue;
    }

    public static int getIntValue(String name, int defaultValue) {
        String v = getString(name);
        if (v == null) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(v);
        } catch (Exception e) {
        }
        return defaultValue;
    }

    public static long getLongValue(String name, long defaultValue) {
        String v = getString(name);
        if (v == null) {
            return defaultValue;
        }
        try {
            return Long.parseLong(v);
        } catch (Exception e) {
        }
        return defaultValue;
    }

    public static short getShortValue(String name, short defaultValue) {
        String v = getString(name);
        if (v == null) {
            return defaultValue;
        }
        try {
            return Short.parseShort(v);
        } catch (Exception e) {
        }
        return defaultValue;
    }

    public static double getDoubleValue(String name, double defaultValue) {
        String v = getString(name);
        if (v == null) {
            return defaultValue;
        }
        try {
            return Double.parseDouble(v);
        } catch (Exception e) {
        }
        return defaultValue;
    }

    public static float getFloatValue(String name, float defaultValue) {
        String v = getString(name);
        if (v == null) {
            return defaultValue;
        }
        try {
            return Float.parseFloat(v);
        } catch (Exception e) {
        }
        return defaultValue;
    }

    public int size() {
        return ctxPropertiesMap.size();
    }

    public boolean isEmpty() {
        return ctxPropertiesMap.isEmpty();
    }

    public boolean containsKey(Object key) {
        return ctxPropertiesMap.containsKey(key);
    }

    public boolean containsValue(Object value) {
        throw new UnsupportedOperationException();
    }

    public String put(String key, String value) {
        throw new UnsupportedOperationException();
    }

    public String remove(Object key) {
        throw new UnsupportedOperationException();
    }

    public void putAll(Map<? extends String, ? extends String> m) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public Set<String> keySet() {
        throw new UnsupportedOperationException();
    }

    public Collection<String> values() {
        throw new UnsupportedOperationException();
    }

    public Set<Map.Entry<String, String>> entrySet() {
        throw new UnsupportedOperationException();
    }

    public String get(Object key) {
        return ctxPropertiesMap.get(key);
    }
}