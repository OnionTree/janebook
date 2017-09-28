package com.xycode.janebook.service;

import com.github.pagehelper.PageHelper;
import com.xycode.janebook.mapper.TUserMapper;
import com.xycode.janebook.model.TUser;
import com.xycode.janebook.model.TUserExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserService {

    @Autowired
    TUserMapper tUserMapper;

    //获取个人信息页面的信息
    

    //获取首页文章
    public List<TUser> getHomeUser(){

        return tUserMapper.getHomeUser();
    }

    public List<TUser> getUserlist(){

        List<TUser> users = tUserMapper.selectByExample(new TUserExample());
        return users;
    }

    //通过username选择user信息
    public TUser getUserByUserName(String username){
        return tUserMapper.selectByPrimaryKey(username);
    }

    //添加user
    public String addUser(TUser tUser){
        if(tUserMapper.insertSelective(tUser)>0){
            return "add success!";
        }else{
            return "add failed";
        }
    }

    //更新user
    public String updateUser(TUser tUser){
        if(tUserMapper.updateByPrimaryKeySelective(tUser)>0){
            return "update success!";
        }else{
            return "update failed";
        }
    }

    //删除user
    public String delUser(String username){
        if(tUserMapper.deleteByPrimaryKey(username)>0){
            return "delete success!";
        }else{
            return "delete failed";
        }
    }


    public Map<String, Object> getUsers(Integer pageNum, Integer pageSize){
        PageHelper.startPage(pageNum, pageSize);
        Map<String,Object> map = new HashMap<String, Object>();
        List<TUser> data = tUserMapper.selectByExample(new TUserExample());
        map.put("code", "0");
        map.put("msg", "success");
        map.put("count", String.valueOf(data.size()));
        map.put("data", data);
        return map;
    }

    public Map<String, Object> getUsers(String like){
        TUserExample userExample = new TUserExample();
        TUserExample.Criteria criteria = userExample.createCriteria();
        criteria.andNicknameLike("%"+like+"%");
        Map<String,Object> map = new HashMap<String, Object>();
        List<TUser> data = tUserMapper.selectByExample(userExample);
        map.put("code", "0");
        map.put("msg", "success");
        map.put("count", String.valueOf(data.size()));
        map.put("data", data);
        return map;
    }
}
