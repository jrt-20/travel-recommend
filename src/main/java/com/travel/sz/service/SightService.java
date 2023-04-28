package com.travel.sz.service;

import com.travel.sz.entity.Sight;
import com.travel.sz.mapper.SightMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SightService {

    @Resource
    private SightMapper sightMapper;

    public Sight selectById(Integer sid){
        return sightMapper.selectByPrimaryKey(sid);
    }

    public List<Sight> selectLimit(Integer num){
        return  sightMapper.selectLimit(num);
    }
}
