package com.travel.sz.controller;

import com.travel.sz.entity.Comment;
import com.travel.sz.entity.Sight;
import com.travel.sz.entity.User;
import com.travel.sz.service.CommentsService;
import com.travel.sz.service.SightService;
import com.travel.sz.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CommentsController {

    @Resource
    private CommentsService commentsService;

    @Resource
    private UserService userService;
    @Resource
    private SightService sightService;

    @RequestMapping("/info/{id}")
    public ModelAndView info(@PathVariable("id") int id, HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        Sight sight = commentsService.selectById(id);
        modelAndView.addObject("data",sight);

        User user = (User) session.getAttribute("user");
        modelAndView.addObject("user",user);

        List<Sight> sightList = sightService.selectLimit(16);
        modelAndView.addObject("titles",sightList);

        List<Sight> littleright = sightService.selectLimit(10);
        modelAndView.addObject("rightData",littleright);

        List<Comment> comments = commentsService.selectBySid(id);
        modelAndView.addObject("comments",comments);
        modelAndView.setViewName("/info");
        return modelAndView;
    }

}
