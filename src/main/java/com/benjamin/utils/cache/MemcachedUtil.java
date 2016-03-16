package com.benjamin.utils.cache;

import com.danga.MemCached.MemCachedClient;
import com.danga.MemCached.SockIOPool;

import java.util.Date;

/**
 * Created by piqiu on 3/6/16.
 */
public class MemcachedUtil {

    /** memcached客户端实例 **/
    private static MemCachedClient cachedClient = new MemCachedClient();

    /**
     * 初始化连接池
     */
    static {
        SockIOPool pool = SockIOPool.getInstance();
        String[] servers = {"127.0.0.1:11211"};
        Integer[] weights = {3};

        // 设置服务器信息
        pool.setServers(servers);
        pool.setWeights(weights);

        // 设置初始连接数
        pool.setInitConn(10);
        pool.setMinConn(10);
        pool.setMaxConn(1000);
        pool.setMaxIdle(1000*60*60);
        //设置连接池守护线程的睡眠时间
        pool.setMaintSleep(60);

        //设置TCP参数，连接超时
        pool.setNagle(false);
        pool.setSocketTO(60);
        pool.setSocketConnectTO(0);

        //初始化并启动连接池
        pool.initialize();

        //压缩设置，超过指定大小的都压缩
//        cachedClient.setCompressEnable(true);
//        cachedClient.setCompressThreshold(64*1024);
    }

    private MemcachedUtil(){
    }

    public static boolean add(String key, Object value) {
        return cachedClient.add(key, value);
    }

    public static boolean add(String key, Object value, Date expire) {
        return cachedClient.add(key, value, expire);
    }

    public static boolean put(String key, Object value) {
        return cachedClient.set(key, value);
    }

    public static boolean put(String key, Object value, Date expire) {
        return cachedClient.set(key, value, expire);
    }

    public static boolean replace(String key, Object value) {
        return cachedClient.replace(key, value);
    }

    public static boolean replace(String key, Object value, Date expire) {
        return cachedClient.replace(key, value, expire);
    }

    public static Object get(String key) {
        return cachedClient.get(key);
    }
}
