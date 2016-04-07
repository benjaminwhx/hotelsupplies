package com.benjamin.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by piqiu on 16/3/25.
 */
public class RandomUtil {

    /**
     * 获得随机的26个字母
     * 65-90    A-Z
     * 97-122   a-z
     * @param length 获得的随机串的长度
     * @return
     */
    public static String getRandomAlphabet(int length) {
        if (length <= 0)
            throw new IllegalArgumentException("length must be more than zero!");
        StringBuilder sb = new StringBuilder();
        List<Character> alphabet = new ArrayList<>();
        // 加入26个字母的大小写，也就是52个字母，还有中间的几个符号
        for (int i = 65; i < 123; ++i) {
            alphabet.add((char) i);
        }
        int len = alphabet.size();
        for (int i = 0; i < length; ++i) {
            int r = (int) (Math.random()*len);
            sb.append(alphabet.get(r));
        }
        return sb.toString();
    }
}
