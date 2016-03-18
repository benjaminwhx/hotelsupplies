package com.benjamin.utils;

import org.junit.Assert;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by piqiu on 2/19/16.
 */
public class JudgeNullUtilsTest {

    @Test
    public void collectionTest() {
        List<String> list1 = new ArrayList<>();
        Assert.assertEquals(JudgeNullUtils.isCollectionEmpty(list1), true);
        List<String> list2 = null;
        Assert.assertEquals(JudgeNullUtils.isCollectionEmpty(list2), true);
        List<String> list3 = new ArrayList<>();
        list3.add("test");
        Assert.assertEquals(JudgeNullUtils.isCollectionNotEmpty(list3), true);
    }
}
