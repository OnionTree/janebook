package com.xycode.janebook.service;

import com.github.pagehelper.PageHelper;
import com.xycode.janebook.mapper.TCollectionMapper;
import com.xycode.janebook.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CollectionService {

    @Autowired
    TCollectionMapper collectionMapper;

    public  List<TCollection> getallcollections(String name){
        return collectionMapper.getallcollections(name);
    }

    public String addCollection(TCollection collection){
        if(collectionMapper.insertSelective(collection)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String delCollection(Integer id){
        if(collectionMapper.deleteByPrimaryKey(id)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String updateCollection(TCollection collection){
        if(collectionMapper.updateByPrimaryKey(collection)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public TCollection getCollection(Integer id){
        return collectionMapper.selectByPrimaryKey(id);
    }

    public List<TCollection> getCollectionsPage(Integer pagenum, Integer pagesize){
        PageHelper.startPage(pagenum, pagesize);
        return collectionMapper.selectByExample(new TCollectionExample());
    }
}
