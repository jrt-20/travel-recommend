package com.travel.sz.service;

import com.travel.sz.entity.Comment;
import com.travel.sz.entity.Sight;
import com.travel.sz.mapper.CommentMapper;
import com.travel.sz.mapper.SightMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CommentsService {

    @Resource
    private SightMapper sightMapper;

    @Resource
    private CommentMapper commentMapper;

    public Sight selectById(Integer id){
        return sightMapper.selectByPrimaryKey(id);
    }

    public List<Comment> selectBySid(Integer sid){
        return commentMapper.selectById(sid);
    }

}
