package com.benjamin.utils.cache;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

/**
 * Created by piqiu on 16/3/28.
 */
public class EhcacheUtil {
    private static final String configFilePath = "/config/ehcache.xml";
    private static EhcacheUtil ehcacheUtil;
    private static final String defaultCacheName = "always";    // 永远不过期
    private static CacheManager cacheManager;

    private EhcacheUtil() {
        cacheManager = CacheManager.create(this.getClass().getResource(configFilePath));
        cacheManager.addCache(new Cache("always", 100, true, true, 0, 0));
    }

    public synchronized static EhcacheUtil getInstance() {
        if (ehcacheUtil == null) {
            ehcacheUtil = new EhcacheUtil();
        }
        return ehcacheUtil;
    }

    public Cache getCache(String cacheName) {
        Cache cache = cacheManager.getCache(cacheName);
        if (cache == null) {
            throw new RuntimeException("根据: " + cacheName + "创建Cache失败");
        }
        return cache;
    }

    public void put(String cacheName, String key, Object value) {
        Cache cache = getCache(cacheName);
        cache.put(new Element(key, value));
    }

    public void put(String key, Object value) {
        Cache cache = getCache(defaultCacheName);
        cache.put(new Element(key, value));
    }

    public Object get(String cacheName, String key) {
        Cache cache = getCache(cacheName);
        Element element = cache.get(key);
        return element == null ? null : element.getObjectValue();
    }

    public Object get(String key) {
        Cache cache = getCache(defaultCacheName);
        Element element = cache.get(key);
        return  element == null ? null : element.getObjectValue();
    }

    public void remove(String cacheName, String key) {
        Cache cache = getCache(cacheName);
        cache.remove(key);
    }

    public void remove(String key) {
        Cache cache = getCache(defaultCacheName);
        cache.remove(key);
    }

}
