package com.benjamin.utils.cache;

import org.junit.Test;

import java.util.Date;

/**
 * Created by piqiu on 3/6/16.
 */
public class MemcachedTest {

    @Test
    public void testMemcached() throws InterruptedException {
        MemcachedUtil.put("hello", "worlds", new Date(3000)); // 过期时间还可以这么写new Date(System.currentTimeMillis()+3000)
        Thread.sleep(1000);
        String hello1 = (String)MemcachedUtil.get("hello");
        System.out.println(hello1);
        Thread.sleep(1000);
        String hello2 = (String)MemcachedUtil.get("hello");
        System.out.println(hello2);
        Thread.sleep(1000);
        String hello3 = (String)MemcachedUtil.get("hello");
        System.out.println(hello3);
    }

    @Test
    public void testMemcached2() {
        String ben = (String)MemcachedUtil.get("hello");
        System.out.println(ben);
    }
}
