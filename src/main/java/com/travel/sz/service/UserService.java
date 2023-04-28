package com.travel.sz.service;

import com.travel.sz.entity.User;
import com.travel.sz.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserService {

    @Resource
    private UserMapper userMapper;

    /**
     * 登录功能
     * @return
     */
    public int login(User user){
        List<User> list = userMapper.selectAll(user.getUsername());
        for (User u:
             list) {
            if(u.getPassword().equals(user.getPassword())) return 1;
        }
        return 0;
    }

    /**
     * 注册功能
     * @param user
     * @return 1:注册成功 0：注册失败
     */
    public int register(User user){
        List<User> list = userMapper.selectAll(user.getUsername());
        System.out.println(user.toString());
        System.out.println("size :"+list.size());
        for (User u:
             list) {
            System.out.println(u.toString());
        }
        if(list.size()==0) {
            System.out.println("size :"+list.size());
            userMapper.register(user);
            return 1;
        }
        else return 0;
    }

    public List<User> selectAll(String name){
        return userMapper.selectAll(name);
    }
}
