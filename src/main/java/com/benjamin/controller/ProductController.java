package com.benjamin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by piqiu on 16/3/27.
 */
@Controller
@RequestMapping("/products")
public class ProductController extends BaseController {

    @RequestMapping(value = "/{product}", method = RequestMethod.GET)
    public String getProducts(@PathVariable String product, @RequestParam(required = false) Integer level) {
        return "product-grid";
    }

    @RequestMapping(value = "/detail/{productId}", method = RequestMethod.GET)
    public String getProductsDetail(@PathVariable int productId) {
        return "product-detail";
    }

}
