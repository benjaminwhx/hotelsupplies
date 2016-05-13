package com.benjamin.common.security;

import net.iharder.Base64;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

import java.io.IOException;

/**
 * Created by piqiu on 2/24/16.
 * 安全解密配置信息
 */
public class EncrytPropertyPlaceHolder extends PropertyPlaceholderConfigurer {

    private final String[] encryptPropNames = {"hibernate.connection.username", "hibernate.connection.password",
            "jdbc.username", "jdbc.password"};

    @Override
    protected String convertProperty(String propertyName, String propertyValue) {
        if (isContainsProp(propertyName)) {
            String descryptValue = null;
            try {
                descryptValue = (String) Base64.decodeToObject(propertyValue);
            } catch (IOException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            return descryptValue;
        } else {
            return propertyValue;
        }
    }

    private boolean isContainsProp(String propertyName) {
        for (String prop: encryptPropNames) {
            if (prop.equals(propertyName)) {
                return true;
            }
        }
        return false;
    }

    public static void main(String[] args) throws IOException, ClassNotFoundException {
        System.out.println(Base64.decodeToObject("rO0ABXQABHJvb3Q="));
        System.out.println();
    }
}
