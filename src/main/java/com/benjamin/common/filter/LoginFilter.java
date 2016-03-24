package com.benjamin.common.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by piqiu on 16/3/24.
 */
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

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
        HttpServletResponse servletResponse = (HttpServletResponse)response;
        HttpSession session = servletRequest.getSession();

        String path = servletRequest.getRequestURI();
        String userName = (String)session.getAttribute("userName");

        if (userName == null || "".equals(userName)) {
            filterChain.doFilter(request, response);
        } else {
            // 用户登录了就不允许进入登录和注册页面
            if (checkPage(path)) {
                servletResponse.sendRedirect("/index.html");
                return;
            } else {
                filterChain.doFilter(request, response);
            }
        }
    }

    private boolean checkPage(String path) {
        return path.indexOf("/login") > -1 || path.indexOf("/register") > -1;
    }

    @Override
    public void destroy() {

    }
}
