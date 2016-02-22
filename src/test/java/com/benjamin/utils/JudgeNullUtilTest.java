package com.benjamin.utils;

import junit.framework.Assert;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by piqiu on 2/19/16.
 */
public class JudgeNullUtilTest {

    @Test
    public void collectionTest() {
        List<String> list1 = new ArrayList<>();
        Assert.assertEquals(JudgeNullUtil.isCollectionEmpty(list1), true);
        List<String> list2 = null;
        Assert.assertEquals(JudgeNullUtil.isCollectionEmpty(list2), false);
        List<String> list3 = new ArrayList<>();
        list3.add("test");
        Assert.assertEquals(JudgeNullUtil.isCollectionNotEmpty(list3), true);
    }
}
