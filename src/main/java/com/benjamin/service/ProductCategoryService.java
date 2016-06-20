package com.benjamin.service;

import com.benjamin.dao.ProductCategoryDao;
import com.benjamin.domain.ProductCategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by piqiu on 16/3/27.
 */
@Service
public class ProductCategoryService {

    @Autowired
    private ProductCategoryDao productCategoryDao;

    public Map<String, Map<String, List<String>>> getAllCategory() {
        List<ProductCategory> productCategoryDaoAll = productCategoryDao.getAll();
        List<ProductCategory> oneLevelNode = new ArrayList<>();
        List<ProductCategory> twoLevelNode = new ArrayList<>();
        List<ProductCategory> threeLevelNode = new ArrayList<>();
        for (int i = 0; i < productCategoryDaoAll.size(); ++i) {
            if (productCategoryDaoAll.get(i).getLevel() == 1) {
                oneLevelNode.add(productCategoryDaoAll.get(i));
            } else if (productCategoryDaoAll.get(i).getLevel() == 2) {
                twoLevelNode.add(productCategoryDaoAll.get(i));
            } else if (productCategoryDaoAll.get(i).getLevel() == 3) {
                threeLevelNode.add(productCategoryDaoAll.get(i));
            }
        }

        Map<String, Map<String, List<String>>> result = new HashMap<>();
        for (ProductCategory p1 : oneLevelNode) {
            Map<String, List<String>> twoResult = new HashMap<>();
            for (ProductCategory p2 : twoLevelNode) {
                List<String> threeResult = new ArrayList<>();
                for (ProductCategory p3 : threeLevelNode) {
                    if (p3.getParentId() == p2.getId()) {
                        threeResult.add(p3.getCategoryName());
                    }
                }
                if (p2.getParentId() == p1.getId()) {
                    twoResult.put(p2.getCategoryName(), threeResult);
                }
            }
            result.put(p1.getCategoryName(), twoResult);
        }
        return result;
    }

    public List<Integer> getSubCategoryIds(String categoryName) {
        return null;
    }

    public void setProductCategoryDao(ProductCategoryDao productCategoryDao) {
        this.productCategoryDao = productCategoryDao;
    }
}
