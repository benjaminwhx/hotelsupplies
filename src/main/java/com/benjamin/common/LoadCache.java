package com.benjamin.common;

import com.benjamin.service.ProductCategoryService;
import com.benjamin.utils.cache.EhcacheUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

/**
 * Created by piqiu on 16/3/28.
 * application启动加载cache数据
 */
public class LoadCache {

    @Autowired
    private ProductCategoryService productCategoryService;

    public LoadCache() {
    }

    public void init() {
        Map<String, Map<String, List<String>>> allCategory = productCategoryService.getAllCategory();
        EhcacheUtil.getInstance().put("category", allCategory);
    }
}
