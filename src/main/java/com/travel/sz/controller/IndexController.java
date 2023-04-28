package com.travel.sz.controller;

import com.travel.sz.entity.Result;
import com.travel.sz.entity.Sight;
import com.travel.sz.entity.User;
import com.travel.sz.recommend.Recommend;
import com.travel.sz.service.SightService;
import com.travel.sz.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * 网站首页controller
 */
@Controller
public class IndexController {

    @Resource
    private Recommend recommend;

    @Resource
    private SightService sightService;

    @Resource
    private UserService userService;

    @RequestMapping("/index")
    public ModelAndView index(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) session.getAttribute("user");
        modelAndView.addObject("user",user);
        modelAndView.setViewName("index");

        /**
         * 实现uid推荐
         */
        List<Result> lists = null;
        int size = 8 ;
        int totalNum = 8;
        List<Sight> recommendSights = new ArrayList<>();
        if(user!=null){//如果用户已经登录了，获取推荐列表
            List<User> users = userService.selectAll(user.getUsername());
            for (User u:
                    users) {
                user.setUserId(u.getUserId());
            }
            lists = recommend.selectById(user.getUserId());
            size = totalNum - lists.size();
            for (Result r: lists) {
                Sight temp = sightService.selectById(r.getSid());
                System.out.println("for r"+temp.toString());
                recommendSights.add(temp);
            }
        }
        List<Sight> left =sightService.selectLimit(size);
        for (Sight l:
             left) {
            recommendSights.add(l);
            System.out.println(l.toString());
        }
        List<Sight> litterRight = sightService.selectLimit(10);

        List<Sight> titles = sightService.selectLimit(16);
        modelAndView.addObject("data",recommendSights);
        modelAndView.addObject("rightData",litterRight);
        modelAndView.addObject("titles",titles);
        return modelAndView;
    }




}
