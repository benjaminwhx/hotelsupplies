package com.benjamin.controller;

import com.benjamin.common.CookieManager;
import com.benjamin.domain.Advice;
import com.benjamin.domain.Collections;
import com.benjamin.domain.Product;
import com.benjamin.domain.User;
import com.benjamin.domain.bo.CheckResult;
import com.benjamin.service.AdviceService;
import com.benjamin.service.SubscribeService;
import com.benjamin.service.UserService;
import com.benjamin.utils.BCrypt;
import com.benjamin.utils.IPUtil;
import com.benjamin.utils.MD5Util;
import com.benjamin.utils.RandomUtil;
import com.benjamin.utils.mail.SimpleMailSender;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by piqiu on 2/16/16.
 */
@Controller
public class MainController extends BaseController {
    private static final String NO_LOGIN_ERROR_MSG = "您还没有登录，请登录后再进行操作!";
    private static final String MSG_KEY = "msg";
    public static final String REMEMBER_LOGIN_STATUS_TOKEN_KEY = "YS_RM_TOKEN";
    public static final String USERNAME_COOKIE_KEY= "YS_EM";
    Logger logger = LoggerFactory.getLogger(MainController.class);
    @Autowired
    private UserService userService;
    @Autowired
    private AdviceService adviceService;
    @Autowired
    private SubscribeService subscribeService;

    /** 访问主页 **/
    @RequestMapping(value = {"/index.html", "/"})
    public String goMainPage() {
        return "main";
    }

    /** 访问登录页 **/
    @RequestMapping(value = "/login.html")
    public String goLoginPage() {
        return "login";
    }

    /** 访问注册页 **/
    @RequestMapping(value = "/register.html")
    public String goRegisterPage() {
        return "register";
    }

    /** 进入联系页 **/
    @RequestMapping(value = "/contact.html")
    public String goContactPage() {
        return "contact";
    }

    /** 进入个人收藏页 **/
    @RequestMapping(value = "/collections.html")
    public ModelAndView showCollectionsPage(RedirectAttributes redirectAttributes) {
        ModelAndView modelAndView = new ModelAndView();
        String userName = (String) session.getAttribute("userName");
        if (userName == null) {
            modelAndView.setViewName("redirect:/login.html");
            redirectAttributes.addFlashAttribute(MSG_KEY, NO_LOGIN_ERROR_MSG);
            return modelAndView;
        }
        User currentUser = userService.getUser("userName", userName);
        List<Product> products = new ArrayList<>();
        List<Collections> collectionsList = currentUser.getCollectionsList();
        for (Collections c : collectionsList) {
            products.add(c.getProduct());
        }
        modelAndView.addObject(products);
        modelAndView.setViewName("collections");
        return modelAndView;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
     public ModelAndView login(User user) {
        ModelAndView modelAndView = new ModelAndView();
        if (session.getAttribute("userName") != null) {
            logger.error("login to the error process");
            modelAndView.setViewName("redirect:/index.html");
        } else {
            String userName = userService.login(user.getEmail(), user.getPassword());
            if (userName != null) {
                // 登录成功把用户名放入session
                session.setAttribute("userName", userName);
                String remember = request.getParameter("remember");
                if (remember != null && "on".equals(remember)) {
                    String randomAlphabet = RandomUtil.getRandomAlphabet(10);
                    // token值为 用户名+随机生成的数 加密md5得到
                    String token = MD5Util.MD5(userName + randomAlphabet);
                    logger.info("user " + userName + " open remember me, default two weeks. token value is: " + token);
                    // 更新库里面的token值
                    if (userService.updateToken(userName, token)) {
                        CookieManager.addCookie(response, REMEMBER_LOGIN_STATUS_TOKEN_KEY, token, 14* 24* 60* 60);
                        CookieManager.addCookie(response, USERNAME_COOKIE_KEY, userName, 14* 24* 60* 60);
                    } else {
                        logger.error("update token error.");
                    }
                }
                modelAndView.setViewName("redirect:/index.html");
            } else {
                modelAndView.setViewName("login");
                modelAndView.addObject(MSG_KEY, "邮箱或密码错误!");
            }
        }
        return modelAndView;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(User user, RedirectAttributes redirectAttributes) {
        CheckResult checkResult = userService.checkUserNameAndEmail(user.getUserName(), user.getEmail());
        if (checkResult.isPassCheck()) {
            String ip = IPUtil.getIp(request);
            user.setIpAddress(ip);
            user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
            userService.save(user);
            redirectAttributes.addFlashAttribute(MSG_KEY, "恭喜 " + user.getUserName() + " 注册成功!");
            return "redirect:/login.html";
        } else {
            redirectAttributes.addFlashAttribute(MSG_KEY, checkResult.getErrorResult());
            return "redirect:/register.html";
        }
    }

    @RequestMapping(value = "/subscribe", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
    public @ResponseBody String subscribe(String email) {
        CheckResult checkResult = subscribeService.checkAndSave(email);
        if (checkResult.isPassCheck()) {
            return "true";
        } else {
            return checkResult.getErrorResult();
        }
    }

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public @ResponseBody String checkUserNameOrEmail(String userNameOrEmail) {
        CheckResult checkResult;
        if (userNameOrEmail.contains("@")) {
            checkResult = userService.checkUserNameAndEmail(null, userNameOrEmail);
        } else {
            checkResult = userService.checkUserNameAndEmail(userNameOrEmail, null);
        }
        if (checkResult.isPassCheck()) {
            return "true";
        } else {
            return "false";
        }
    }

    @RequestMapping(value = "/logout")
    public String logout() {
        session.removeAttribute("userName");
        CookieManager.addCookie(response, REMEMBER_LOGIN_STATUS_TOKEN_KEY, null, 0);  // 删除登录cookie
        CookieManager.addCookie(response, USERNAME_COOKIE_KEY, null, 0);
        return "redirect:/login.html";
    }

    @RequestMapping(value = "/forgetPassword", method = RequestMethod.GET)
    public ModelAndView forgetPassword(String email) {
        ModelAndView modelAndView = new ModelAndView("login");
        return modelAndView;
    }

    @RequestMapping(value = "/contact", method = RequestMethod.POST)
    public @ResponseBody String contact(Advice advice) {
        adviceService.save(advice);
        return "success";
    }

    @RequestMapping(value = "/sendEmail", method = RequestMethod.GET)
    public ModelAndView add() {
        String[] mailToAddress = {"scarlett.meng@leandev.se"};
        String[] mailCCAddress = {"benjaminwhx@sina.com"};
        String subject = "测试2";
        String content = "注册地址 <a href=\\\"www.baidu.com\\\" target='_blank'>百度</a>";
        List<File> file = new ArrayList<>();
        File f1 = new File("/Users/piqiu1/Desktop/0039.txt");
        file.add(f1);
        boolean sendResult = SimpleMailSender.sendMail(mailToAddress, mailCCAddress, subject, true, content, file);
        if (sendResult) {
            System.out.println("mail send successful");
            logger.info("mail send successful");
        } else {
            System.out.println("mail send failed");
            logger.info("mail send failed");
        }
        return new ModelAndView("sendMail");
    }

}
