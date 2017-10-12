package com.xycode.janebook.mapper;

import java.util.List;

import com.xycode.janebook.model.TClassify;
import com.xycode.janebook.model.TClassifyExample;
import org.apache.ibatis.annotations.Param;

public interface TClassifyMapper {


    List<TClassify> gettClassifies();

    int countByExample(TClassifyExample example);

    int deleteByExample(TClassifyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TClassify record);

    int insertSelective(TClassify record);

    List<TClassify> selectByExample(TClassifyExample example);

    TClassify selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TClassify record, @Param("example") TClassifyExample example);

    int updateByExample(@Param("record") TClassify record, @Param("example") TClassifyExample example);

    int updateByPrimaryKeySelective(TClassify record);

    int updateByPrimaryKey(TClassify record);
}