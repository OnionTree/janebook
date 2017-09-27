package com.xycode.janebook.mapper;

import java.util.List;

import com.xycode.janebook.model.TBlacklist;
import com.xycode.janebook.model.TBlacklistExample;
import org.apache.ibatis.annotations.Param;

public interface TBlacklistMapper {
    int countByExample(TBlacklistExample example);

    int deleteByExample(TBlacklistExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TBlacklist record);

    int insertSelective(TBlacklist record);

    List<TBlacklist> selectByExample(TBlacklistExample example);

    TBlacklist selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TBlacklist record, @Param("example") TBlacklistExample example);

    int updateByExample(@Param("record") TBlacklist record, @Param("example") TBlacklistExample example);

    int updateByPrimaryKeySelective(TBlacklist record);

    int updateByPrimaryKey(TBlacklist record);
}