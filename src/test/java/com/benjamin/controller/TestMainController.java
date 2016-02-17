package com.benjamin.controller;

import junit.framework.Assert;
import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by piqiu on 2/17/16.
 */
public class TestMainController {

    @Test
    public void testIndex() {
        MainController controller = new MainController();
        ModelAndView modelAndView = controller.index();
        Assert.assertEquals(modelAndView.getModel().get("message"), "hello_world_mvc!");
    }
}
