package com.benjamin.utils;

import java.security.MessageDigest;

/**
 * Created by piqiu on 2/25/16.
 * MD5加密类
 */
public class MD5Util {
    public static String Encode(byte[] source) {

        String s = null;
        char hexDigits[] = { // 用来将字节转换成 16 进制表示的字符
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd',
                'e', 'f' };
        try {
            java.security.MessageDigest md5 = java.security.MessageDigest
                    .getInstance("MD5");
            md5.update(source);

            StringBuilder sb = new StringBuilder();
            for (byte b : md5.digest()) {
                sb.append(String.format("%02X", b));
            }
            return sb.toString();
            /**
             byte tmp[] = md5.digest(); // MD5 的计算结果是一个 128 位的长整数，
             // 用字节表示就是 16 个字节
             char str[] = new char[16 * 2]; // 每个字节用 16 进制表示的话，使用两个字符，
             // 所以表示成 16 进制需要 32 个字符
             int k = 0; // 表示转换结果中对应的字符位置
             for (int i = 0; i < 16; i++) { // 从第一个字节开始，对 MD5 的每一个字节
             // 转换成 16 进制字符的转换
             byte byte0 = tmp[i]; // 取第 i 个字节
             str[k++] = hexDigits[byte0 >>> 4 & 0xf]; // 取字节中高 4 位的数字转换,
             // >>> 为逻辑右移，将符号位一起右移
             str[k++] = hexDigits[byte0 & 0xf]; // 取字节中低 4 位的数字转换
             }
             s = new String(str); // 换后的结果转换为字符串
             ***/


        } catch (Exception e) {
            e.printStackTrace();
        }
        return s;

    }
    public static String MD5(String inStr)
    {
        MessageDigest md5 = null;
        try {
            md5 = MessageDigest.getInstance("MD5");
        } catch (Exception e) {
            System.out.println(e.toString());
            e.printStackTrace();
            return "";
        }
        char[] charArray = inStr.toCharArray();
        byte[] byteArray = new byte[charArray.length];

        for (int i = 0; i < charArray.length; ++i) {
            byteArray[i] = (byte)charArray[i];
        }
        byte[] md5Bytes = md5.digest(byteArray);

        StringBuffer hexValue = new StringBuffer();

        for (int i = 0; i < md5Bytes.length; ++i) {
            int val = md5Bytes[i] & 0xFF;
            if (val < 16)
                hexValue.append("0");
            hexValue.append(Integer.toHexString(val));
        }
        return hexValue.toString();
    }

    public static String KL(String inStr)
    {
        char[] a = inStr.toCharArray();
        for (int i = 0; i < a.length; ++i) {
            a[i] = (char)(a[i] ^ 0x74);
        }
        String s = new String(a);
        return s;
    }

    public static String JM(String inStr)
    {
        char[] a = inStr.toCharArray();
        for (int i = 0; i < a.length; ++i) {
            a[i] = (char)(a[i] ^ 0x74);
        }
        String k = new String(a);
        return k;
    }

    public static void main(String[] args)
    {
        String randomAlphabet = RandomUtil.getRandomAlphabet(20);
        System.out.println(MD5(randomAlphabet));
    }
}
