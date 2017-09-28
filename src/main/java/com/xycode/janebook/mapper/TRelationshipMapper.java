package com.xycode.janebook.mapper;

import com.xycode.janebook.model.TRelationship;
import com.xycode.janebook.model.TRelationshipExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TRelationshipMapper {
    int countByExample(TRelationshipExample example);

    int deleteByExample(TRelationshipExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TRelationship record);

    int insertSelective(TRelationship record);

    List<TRelationship> selectByExample(TRelationshipExample example);

    TRelationship selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TRelationship record, @Param("example") TRelationshipExample example);

    int updateByExample(@Param("record") TRelationship record, @Param("example") TRelationshipExample example);

    int updateByPrimaryKeySelective(TRelationship record);

    int updateByPrimaryKey(TRelationship record);

    int countFansNum(String friendid);
}