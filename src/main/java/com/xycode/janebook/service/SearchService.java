package com.xycode.janebook.service;

import com.github.pagehelper.PageHelper;
import com.xycode.janebook.mapper.TSearchMapper;
import com.xycode.janebook.model.TSearch;
import com.xycode.janebook.model.TSearchExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SearchService {

    @Autowired
    TSearchMapper searchMapper;

    public String addSearch(TSearch search){
        if(searchMapper.insertSelective(search)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String delSearch(Integer id){
        if(searchMapper.deleteByPrimaryKey(id)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String updateSearch(TSearch search){
        if(searchMapper.updateByPrimaryKeySelective(search)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public TSearch getSearch(Integer id){
        return searchMapper.selectByPrimaryKey(id);
    }

    public Map<String, Object> getSearchsPage(Integer pagenum, Integer pagesize){
        PageHelper.startPage(pagenum, pagesize);
        Map<String, Object> map = new HashMap<String, Object>();
        List<TSearch> data = searchMapper.selectByExample(new TSearchExample());
        map.put("code", "0");
        map.put("msg", "success");
        map.put("count", String.valueOf(data.size()));
        map.put("data", data);
        return  map;
    }

    public  Map<String, Object> getSearchByName(String like){
        Map<String, Object> map = new HashMap<String, Object>();
        TSearchExample articleExample = new TSearchExample();
        TSearchExample.Criteria criteria = articleExample.createCriteria();
        criteria.andSearchNameLike("%"+like+"%");
        List<TSearch> data = searchMapper.selectByExample(articleExample);
        map.put("code", "0");
        map.put("msg", "success");
        map.put("count", String.valueOf(data.size()));
        map.put("data", data);
        return map;
    }

}
