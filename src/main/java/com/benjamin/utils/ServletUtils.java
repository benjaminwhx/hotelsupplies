package com.benjamin.utils;

import org.springframework.util.Assert;

import javax.servlet.ServletRequest;
import java.util.Enumeration;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created by piqiu on 2/23/16.
 */
public class ServletUtils {

    public ServletUtils(){}

    public static Map<String, Object> getParametersStartingWith(ServletRequest request, String prefix) {
        Assert.notNull(request, "Request must not be null");
        Enumeration parameterNames = request.getParameterNames();
        TreeMap<String, Object> params = new TreeMap<>();
        if (prefix == null) {
            prefix = "";
        }

        while (parameterNames != null && parameterNames.hasMoreElements()) {
            String paramName = (String)parameterNames.nextElement();
            if ("".equals(prefix) || paramName.startsWith(prefix)) {
                String unprefixed = paramName.substring(prefix.length());
                String[] values = request.getParameterValues(paramName);
                if (values != null && values.length != 0) {
                    if (values.length > 1) {
                        params.put(unprefixed, values);
                    } else {
                        params.put(unprefixed, values[0]);
                    }
                }
            }
        }

        return params;
    }
}
