package com.xycode.janebook.service;


import com.xycode.janebook.mapper.TBlacklistMapper;
import com.xycode.janebook.model.TBlacklist;
import com.xycode.janebook.model.TBlacklistExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlackService {

    @Autowired
    TBlacklistMapper blacklistMapper;

    public List<TBlacklist> getBlackLists(String userid){
        TBlacklistExample tBlacklistExample = new TBlacklistExample();
        TBlacklistExample.Criteria criteria = tBlacklistExample.createCriteria();
        criteria.andUserIdEqualTo(userid);
        return blacklistMapper.selectByExample(tBlacklistExample);
    }

    public String addBlackList(TBlacklist blacklist){
        if(blacklistMapper.insertSelective(blacklist)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String delBlackList(Integer id){
        if(blacklistMapper.deleteByPrimaryKey(id)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String updateBlackList(TBlacklist blacklist){
        if(blacklistMapper.updateByPrimaryKey(blacklist)>0){
            return "success";
        }else{
            return "failed";
        }
    }
}
