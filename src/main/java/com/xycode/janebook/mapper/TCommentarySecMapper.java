package com.xycode.janebook.mapper;

import java.util.List;

import com.xycode.janebook.model.TCommentarySec;
import com.xycode.janebook.model.TCommentarySecExample;
import org.apache.ibatis.annotations.Param;

public interface TCommentarySecMapper {
    int countByExample(TCommentarySecExample example);

    int deleteByExample(TCommentarySecExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TCommentarySec record);

    int insertSelective(TCommentarySec record);

    List<TCommentarySec> selectByExample(TCommentarySecExample example);

    TCommentarySec selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TCommentarySec record, @Param("example") TCommentarySecExample example);

    int updateByExample(@Param("record") TCommentarySec record, @Param("example") TCommentarySecExample example);

    int updateByPrimaryKeySelective(TCommentarySec record);

    int updateByPrimaryKey(TCommentarySec record);
}