package com.xycode.janebook.mapper;

import java.util.List;

import com.xycode.janebook.model.TMessage;
import com.xycode.janebook.model.TMessageExample;
import org.apache.ibatis.annotations.Param;

public interface TMessageMapper {
    int countByExample(TMessageExample example);

    int deleteByExample(TMessageExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TMessage record);

    int insertSelective(TMessage record);

    List<TMessage> selectByExample(TMessageExample example);

    TMessage selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TMessage record, @Param("example") TMessageExample example);

    int updateByExample(@Param("record") TMessage record, @Param("example") TMessageExample example);

    int updateByPrimaryKeySelective(TMessage record);

    int updateByPrimaryKey(TMessage record);
}