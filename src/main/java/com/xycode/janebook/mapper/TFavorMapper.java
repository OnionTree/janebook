package com.xycode.janebook.mapper;

import com.xycode.janebook.model.TFavor;
import com.xycode.janebook.model.TFavorExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TFavorMapper {
    int countByExample(TFavorExample example);

    int deleteByExample(TFavorExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TFavor record);

    int insertSelective(TFavor record);

    List<TFavor> selectByExample(TFavorExample example);

    TFavor selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TFavor record, @Param("example") TFavorExample example);

    int updateByExample(@Param("record") TFavor record, @Param("example") TFavorExample example);

    int updateByPrimaryKeySelective(TFavor record);

    int updateByPrimaryKey(TFavor record);
}