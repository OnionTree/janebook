package com.xycode.janebook.service;


import com.github.pagehelper.PageHelper;
import com.xycode.janebook.mapper.TArticleMapper;
import com.xycode.janebook.model.TArticle;
import com.xycode.janebook.model.TArticleExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleService {

    @Autowired
    TArticleMapper articleMapper;

    //获取首页文章
    public List<TArticle> getHomeArticle(){
        return articleMapper.getHomeArticle();
    }

    public String addArticle(TArticle article){
        if(articleMapper.insertSelective(article)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String delArticle(Integer id){
        if(articleMapper.deleteByPrimaryKey(id)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String updateArticle(TArticle article){
        if(articleMapper.updateByPrimaryKeySelective(article)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public TArticle getArticle(Integer id){
        return articleMapper.selectByPrimaryKey(id);
    }

    public List<TArticle> getArticlesPage(Integer pagenum, Integer pagesize){
        PageHelper.startPage(pagenum, pagesize);
        return articleMapper.selectByExample(new TArticleExample());
    }

    public List<TArticle> getArticlesLike(String like){
        TArticleExample  articleExample = new TArticleExample();
        TArticleExample.Criteria criteria = articleExample.createCriteria();
        like = "%"+like+"%";
        criteria.andTitleLike(like);
        return articleMapper.selectByExample(articleExample);
    }

    public List<TArticle> getallArticle(Integer id){
        return articleMapper.getallArticle(id);
    }

    public List<TArticle> getmenberArticle(String name){
        return articleMapper.getmenberArticle(name);
    }

}
