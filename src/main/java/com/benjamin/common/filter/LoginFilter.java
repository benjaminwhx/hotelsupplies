package com.benjamin.common.filter;

import com.benjamin.common.CookieManager;
import com.benjamin.controller.MainController;
import com.benjamin.service.UserService;
import com.benjamin.utils.JudgeNullUtils;
import com.benjamin.utils.cache.EhcacheUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by piqiu on 16/3/24.
 */
public class LoginFilter implements Filter {
    private Logger logger = LoggerFactory.getLogger(LoginFilter.class);
    private UserService userService;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        ServletContext servletContext = filterConfig.getServletContext();
        ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);
        userService = (UserService) ctx.getBean("userService");
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
        // 资源直接走
        if (path.startsWith(servletRequest.getContextPath() + "/resources")) {
            filterChain.doFilter(request, response);
            return;
        }
        String userName = (String)session.getAttribute("userName");

        putAllCacheDataToSession(session);

        if (userName == null || "".equals(userName)) {
            // 检查cookie值是否正确
            // true设置session，继续执行
            // false，删除cookie
            Cookie tokenCookie = CookieManager.getCookieByName(servletRequest, MainController.REMEMBER_LOGIN_STATUS_TOKEN_KEY);
            Cookie userNameCookie = CookieManager.getCookieByName(servletRequest, MainController.USERNAME_COOKIE_KEY);
            if (tokenCookie != null && !JudgeNullUtils.isStrEmpty(tokenCookie.getValue()) &&
                    userNameCookie != null && !JudgeNullUtils.isStrEmpty(userNameCookie.getValue())) {
                String token = userService.getTokenByUserName(userNameCookie.getValue());
                if (!JudgeNullUtils.isStrEmpty(token)) {
                    if (token.equals(tokenCookie.getValue())) {
                        session.setAttribute("userName", userNameCookie.getValue());
                    } else {
                        CookieManager.addCookie(servletResponse, MainController.REMEMBER_LOGIN_STATUS_TOKEN_KEY, null, 0);
                        CookieManager.addCookie(servletResponse, MainController.USERNAME_COOKIE_KEY, null, 0);
                    }
                } else {
                    logger.error("userNameCookie is not same to tokenCookie");
                }
            }
        } else {
            // 用户登录了就不允许进入登录和注册页面
            if (checkPage(path)) {
                servletResponse.sendRedirect("/index.html");
                return;
            }
        }
        filterChain.doFilter(request, response);
    }

    private void putAllCacheDataToSession(HttpSession session) {
        if (session.getAttribute("category") == null) {
            session.setAttribute("category", EhcacheUtil.getInstance().get("category"));
        }
    }

    private boolean checkPage(String path) {
        return path.indexOf("/login") > -1 || path.indexOf("/register") > -1;
    }

    @Override
    public void destroy() {

    }
}
