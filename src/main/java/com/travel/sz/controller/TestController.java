package com.travel.sz.controller;

import com.alibaba.fastjson.JSON;
import com.travel.sz.entity.Test;
import com.travel.sz.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class TestController {

    @Resource
    private TestService testService;

    @GetMapping("/selectAll")
    @ResponseBody
    public String selectAll(){
        List<Test> res = testService.selectAll();
        return JSON.toJSONString(res);
    }

//    @RequestMapping ("/index2")
//    public ModelAndView index(){
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("index");
//        return modelAndView;
//    }
}
