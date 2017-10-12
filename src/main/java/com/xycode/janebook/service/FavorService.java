package com.xycode.janebook.service;

import com.xycode.janebook.mapper.TFavorMapper;
import com.xycode.janebook.model.TFavor;
import com.xycode.janebook.model.TFavorExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FavorService {

    @Autowired
    TFavorMapper favorMapper;

    public  List<TFavor> getallfavor(String name){
        return favorMapper.getallfavor(name);
    }

    public List<TFavor> getFavors(String userId){
        TFavorExample favorExample = new TFavorExample();
        TFavorExample.Criteria criteria = favorExample.createCriteria();
        criteria.andUserIdEqualTo(userId);
        return favorMapper.selectByExample(favorExample);
    }
}
