package com.travel.sz.mapper;

import com.travel.sz.entity.Sight;
import com.travel.sz.entity.SightExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SightMapper {

    List<Sight> selectLimit(Integer num);
    long countByExample(SightExample example);

    int deleteByExample(SightExample example);

    int deleteByPrimaryKey(Integer sid);

    int insert(Sight record);

    int insertSelective(Sight record);

    List<Sight> selectByExample(SightExample example);

    Sight selectByPrimaryKey(Integer sid);

    int updateByExampleSelective(@Param("record") Sight record, @Param("example") SightExample example);

    int updateByExample(@Param("record") Sight record, @Param("example") SightExample example);

    int updateByPrimaryKeySelective(Sight record);

    int updateByPrimaryKey(Sight record);
}