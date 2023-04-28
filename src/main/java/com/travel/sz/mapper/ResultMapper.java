package com.travel.sz.mapper;

import com.travel.sz.entity.Result;
import com.travel.sz.entity.ResultExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ResultMapper {

    List<Result> selectById(Integer uid);
    long countByExample(ResultExample example);

    int deleteByExample(ResultExample example);

    int deleteByPrimaryKey(Integer uid);

    int insert(Result record);

    int insertSelective(Result record);

    List<Result> selectByExample(ResultExample example);

    Result selectByPrimaryKey(Integer uid);

    int updateByExampleSelective(@Param("record") Result record, @Param("example") ResultExample example);

    int updateByExample(@Param("record") Result record, @Param("example") ResultExample example);

    int updateByPrimaryKeySelective(Result record);

    int updateByPrimaryKey(Result record);
}