package com.benjamin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by piqiu on 2/16/16.
 */
@Controller //采用注解的方式，可以明确的定义该类为处理请求的Controller类
public class MainController {

    // 用于定义一个请求映射，value为请求的url，值为 / 说明，该请求首页请求，method用以指定该请求类型，一般为get和post
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        // modelAndView的名称将会结合viewResolver配置的prefix和suffix合成一个页面的路径
        ModelAndView modelAndView = new ModelAndView("index");
        // modelAndView对象携带信息
        modelAndView.addObject("message", "hello_world_mvc!");
        return modelAndView;
    }
}
