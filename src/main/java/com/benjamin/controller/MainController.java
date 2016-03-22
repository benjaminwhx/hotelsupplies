package com.benjamin.controller;

import com.benjamin.domain.User;
import com.benjamin.service.UserService;
import com.benjamin.utils.mail.MailSenderInfo;
import com.benjamin.utils.mail.SimpleMailSender;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by piqiu on 2/16/16.
 */
@Controller
public class MainController {

    Logger logger = LoggerFactory.getLogger(MainController.class);
    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/index.html", "/"}, method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("main");
        return modelAndView;
    }

    @RequestMapping(value = "/login.html", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView("login");
        return modelAndView;
    }

    @RequestMapping(value = "/register.html", method = RequestMethod.GET)
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView("register");
        return modelAndView;
    }

//    @RequestMapping(value = "/sendEmail", method = RequestMethod.GET)
//    public ModelAndView add() {
//        String[] mailToAddress = {"scarlett.meng@leandev.se"};
//        String[] mailCCAddress = {"benjaminwhx@sina.com"};
//        String subject = "测试2";
//        String content = "注册地址 <a href=\\\"www.baidu.com\\\" target='_blank'>百度</a>";
//        List<File> file = new ArrayList<>();
//        File f1 = new File("/Users/piqiu1/Desktop/0039.txt");
//        file.add(f1);
//        boolean sendResult = SimpleMailSender.sendMail(mailToAddress, mailCCAddress, subject, true, content, file);
//        if (sendResult) {
//            System.out.println("mail send successful");
//            logger.info("mail send successful");
//        } else {
//            System.out.println("mail send failed");
//            logger.info("mail send failed");
//        }
//        return new ModelAndView("sendMail");
//    }

}
