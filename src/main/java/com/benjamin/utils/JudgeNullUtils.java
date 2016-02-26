package com.benjamin.utils;

import java.util.Collection;

/**
 * Created by piqiu on 2/19/16.
 */
public final class JudgeNullUtils {

    /**
     * judge the object is null
     * @param object
     * @return
     */
    public static boolean isObjecctNull(final Object object) {
        return object == null;
    }

    /**
     * judge the destination string is empty or null
     * @param str
     * @return
     */
    public static boolean isStrEmpty(final String str) {
        return isObjecctNull(str) || str.trim().length() == 0;
    }

    /**
     * judge the collection is not null and size = 0
     * @param collection
     * @return
     */
    public static boolean isCollectionEmpty(Collection collection) {
        return isObjecctNull(collection) || collection.size() == 0;
    }

    /**
     * judge the collection is not null and size > 0
     * @param collection
     * @return
     */
    public static boolean isCollectionNotEmpty(Collection collection) {
        return !isCollectionEmpty(collection);
    }

}
