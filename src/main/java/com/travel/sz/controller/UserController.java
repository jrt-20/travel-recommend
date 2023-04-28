package com.travel.sz.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.travel.sz.entity.User;
import com.travel.sz.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * 用户注册登录controller
 */
@Controller
public class UserController {

    @Resource
    private UserService userService;

    /**
     * 跳转登录
     * @return
     */
    @RequestMapping("/login")
    public ModelAndView toLogin(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return  modelAndView;
    }

    /**
     * 登录接口
     * @param username 前端传递的username
     * @param password 前端传递的password
     * @param session 登录成功后用session保存user对象
     * @param modelAndView 返回结果
     * @return
     */
    @ResponseBody
    @RequestMapping("/login2/{username}/{psw}")
    public String Login(@PathVariable("username") String username, @PathVariable("psw")String password, HttpSession session,ModelAndView modelAndView){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        System.out.println(user.toString());
        int flag = userService.login(user);
        session.setAttribute("user",user);
        JSONObject object = new JSONObject();
        modelAndView.addObject("user",user);
        if(flag==1){
            object.put("url","/index");
        }else {
            object.put("url","/login");
        }
        object.put("flag",flag);
        return object.toString();
    }

    /**
     * 跳转注册页面
     * @return
     */

    @RequestMapping("/register")
    public ModelAndView toRegister(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("register");
        return  modelAndView;
    }

    /**
     * 退出登录
     * @param session 用来删除session中存储的user对象
     * @return
     */
    @RequestMapping("/loginOut")
    public ModelAndView LoginOut(HttpSession session){
        session.removeAttribute("user");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/login");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("/register2/{username}/{password}")
    public String  Register(@PathVariable("username")String username,@PathVariable("password")String password){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        int flag = userService.register(user);
        System.out.println(flag);
        JSONObject object = new JSONObject();
        object.put("flag",flag);
        if(flag==1){
            object.put("url","/login");
        }else {
            object.put("url","/register");
        }
        return object.toString();

    }

}
