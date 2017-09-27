package com.xycode.janebook.mapper;

import java.util.List;

import com.xycode.janebook.model.TSearch;
import com.xycode.janebook.model.TSearchExample;
import org.apache.ibatis.annotations.Param;

public interface TSearchMapper {
    int countByExample(TSearchExample example);

    int deleteByExample(TSearchExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TSearch record);

    int insertSelective(TSearch record);

    List<TSearch> selectByExample(TSearchExample example);

    TSearch selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TSearch record, @Param("example") TSearchExample example);

    int updateByExample(@Param("record") TSearch record, @Param("example") TSearchExample example);

    int updateByPrimaryKeySelective(TSearch record);

    int updateByPrimaryKey(TSearch record);
}