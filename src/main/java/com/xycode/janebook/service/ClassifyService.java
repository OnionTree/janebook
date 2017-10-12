package com.xycode.janebook.service;




import com.github.pagehelper.PageHelper;
import com.xycode.janebook.mapper.TClassifyMapper;
import com.xycode.janebook.model.TClassify;
import com.xycode.janebook.model.TClassifyExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassifyService {

    @Autowired
    TClassifyMapper classifyMapper;

    public  TClassify selectByPrimaryKey(Integer id){
        return classifyMapper.selectByPrimaryKey(id);
    };

    public  List<TClassify> gettClassifies(){
        return classifyMapper.gettClassifies();
    }

    public List<TClassify> getClassifys(Integer pagenum, Integer pagesize){
        PageHelper.offsetPage(pagenum,pagesize);
        return classifyMapper.selectByExample(new TClassifyExample());

    }

    public String addClassify(TClassify classify){
        if(classifyMapper.insertSelective(classify)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String delClassify(Integer id){
        if(classifyMapper.deleteByPrimaryKey(id)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String updateClassify(TClassify classify){
        if(classifyMapper.updateByPrimaryKeySelective(classify)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public List<TClassify> getClassifys(String like){
        TClassifyExample classifyExample = new TClassifyExample();
        TClassifyExample.Criteria c = classifyExample.createCriteria();
        c.andClassifyNameLike("%"+like+"%");
        return classifyMapper.selectByExample(classifyExample);
    }

    public List<TClassify> getClassify(String id){
        TClassifyExample classifyExample = new TClassifyExample();
        TClassifyExample.Criteria criteria = classifyExample.createCriteria();
        criteria.andClassifyAdminEqualTo(id);
        return classifyMapper.selectByExample(classifyExample);
    }
}
