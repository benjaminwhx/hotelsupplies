package com.benjamin.utils;

import org.springframework.core.io.ClassPathResource;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by piqiu on 3/7/16.
 */
public class PropertiesUtil {

    private PropertiesUtil(){}

    public static Properties getPropertiesByName(String fileName) throws IOException {
        // 相对于根路径
//        InputStream resourceAsStream = ClassLoader.getSystemResourceAsStream(fileName);
//        InputStream resourceAsStream = PropertiesUtil.class.getClassLoader().getResourceAsStream(fileName);
        InputStream resourceAsStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(fileName);
        // 相对于当前Demo的类路径
//        InputStream resourceAsStream = PropertyUtil.class.getResourceAsStream(fileName);
        Properties properties = new Properties();
        properties.load(resourceAsStream);
        return properties;
    }

    /**
     * 获取ClassPath下的文件
     * @param filePath  相对于ClassPath的文件路径 exp：config/email.properties
     * @return
     * @throws IOException
     */
    public static File getClassPathFile(String filePath) throws IOException {
        return new ClassPathResource(filePath).getFile();
    }
}
