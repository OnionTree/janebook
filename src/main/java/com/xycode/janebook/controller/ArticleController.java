package com.xycode.janebook.controller;

import com.xycode.janebook.model.TArticle;
import com.xycode.janebook.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController

public class ArticleController {

    @Autowired
    ArticleService articleService;

    @PostMapping("/article")
    public String addArticle(@RequestBody TArticle article){
        return articleService.addArticle(article);
    }

    @PutMapping("/article")
    public String updateArticle(@RequestBody TArticle article){
        return articleService.updateArticle(article);
    }

    @DeleteMapping("/article/{id}")
    public String delArticle(@PathVariable Integer id){
        return articleService.delArticle(id);
    }

    @GetMapping("/article/{id}")
    public TArticle getArticle(@PathVariable("id") Integer id){
        return articleService.getArticle(id);
    }

    @GetMapping("articles/{pagenum}/{pagesize}")
    public Map<String, Object> getArticlesByPage(@PathVariable Integer pagenum, @PathVariable Integer pagesize){
        Map<String, Object> map = new HashMap<String, Object>();
        List<TArticle> data = articleService.getArticlesPage(pagenum,pagesize);
        map.put("code", "0");
        map.put("msg", "success");
        map.put("count", String.valueOf(data.size()));
        map.put("data", data);
        return map;
    }

    @GetMapping("articles/{like}")
    public Map<String, Object> getArticleByLike(@PathVariable String like){
        Map<String, Object> map = new HashMap<String, Object>();
        List<TArticle> data = articleService.getArticlesLike(like);
        map.put("code", "0");
        map.put("msg", "success");
        map.put("count", String.valueOf(data.size()));
        map.put("data", data);
        return map;
    }

}
