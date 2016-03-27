package com.benjamin.common.filter;

import com.benjamin.service.ProductCategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by piqiu on 16/3/27.
 */
public class ProductCategoryFilter implements Filter {
    private Logger logger = LoggerFactory.getLogger(ProductCategoryFilter.class);
    private ProductCategoryService productCategoryService;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        ServletContext servletContext = filterConfig.getServletContext();
        WebApplicationContext applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);
        productCategoryService = (ProductCategoryService) applicationContext.getBean("productCategoryService");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        // 判断是否是http请求
        if (!(request instanceof HttpServletRequest)
                || !(response instanceof HttpServletResponse)) {
            throw new ServletException(
                    "OncePerRequestFilter just supports HTTP requests");
        }
        HttpServletRequest servletRequest = (HttpServletRequest)request;
        HttpSession session = servletRequest.getSession();
        if (session.getAttribute("category") == null) {
            Map<String, Map<String, List<String>>> allCategory = productCategoryService.getAllCategory();
            session.setAttribute("category", allCategory);
        }
        filterChain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
