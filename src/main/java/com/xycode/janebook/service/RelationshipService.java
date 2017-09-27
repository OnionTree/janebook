package com.xycode.janebook.service;

import com.github.pagehelper.PageHelper;
import com.xycode.janebook.mapper.TRelationshipMapper;
import com.xycode.janebook.model.TRelationship;
import com.xycode.janebook.model.TRelationshipExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RelationshipService {

    @Autowired
    TRelationshipMapper relationshipMapper;

    public String addRelationship(TRelationship relationship){
        if(relationshipMapper.insertSelective(relationship)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String delRelationship(Integer id){
        if(relationshipMapper.deleteByPrimaryKey(id)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String updateRelationship(TRelationship relationship){
        if(relationshipMapper.updateByPrimaryKeySelective(relationship)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public TRelationship getRelationship(Integer id){
        return relationshipMapper.selectByPrimaryKey(id);
    }

    public List<TRelationship> getRelationshipsPage(Integer pagenum, Integer pagesize){
        PageHelper.startPage(pagenum, pagesize);
        return relationshipMapper.selectByExample(new TRelationshipExample());
    }

}
