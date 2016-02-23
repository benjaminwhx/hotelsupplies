package com.benjamin.controller;

import com.benjamin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by piqiu on 2/16/16.
 */
@Controller
public class MainController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        // modelAndView的名称将会结合viewResolver配置的prefix和suffix合成一个页面的路径
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("message", "hello_world_mvc!");
        String userName = "wuyong";
        modelAndView.addObject("userName", userName);
        modelAndView.addObject("password", userService.findUserByUserName(userName).getPassword());
        return modelAndView;
    }

}
