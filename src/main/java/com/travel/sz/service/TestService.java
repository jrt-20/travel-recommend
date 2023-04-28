package com.travel.sz.service;

import com.travel.sz.entity.Test;
import com.travel.sz.mapper.TestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TestService {

    @Resource
    private TestMapper testMapper;

    public List<Test> selectAll(){
        return testMapper.selectAll();
    }
}
