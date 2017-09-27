package com.xycode.janebook.mapper;

import java.util.List;

import com.xycode.janebook.model.TRec;
import com.xycode.janebook.model.TRecExample;
import org.apache.ibatis.annotations.Param;

public interface TRecMapper {
    int countByExample(TRecExample example);

    int deleteByExample(TRecExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TRec record);

    int insertSelective(TRec record);

    List<TRec> selectByExample(TRecExample example);

    TRec selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TRec record, @Param("example") TRecExample example);

    int updateByExample(@Param("record") TRec record, @Param("example") TRecExample example);

    int updateByPrimaryKeySelective(TRec record);

    int updateByPrimaryKey(TRec record);
}