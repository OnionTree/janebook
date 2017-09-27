package com.xycode.janebook.controller;

import com.xycode.janebook.model.TSearch;
import com.xycode.janebook.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
public class SearchController {

    @Autowired
    SearchService searchService;

    @PostMapping("/search")
    public String addSearch(@RequestBody TSearch search){
        return searchService.addSearch(search);
    }

    @PutMapping("/search")
    public String updateSearch(@RequestBody TSearch search){
        return searchService.updateSearch(search);
    }

    @DeleteMapping("/search/{id}")
    public String delSearch(@PathVariable Integer id){
        return searchService.delSearch(id);
    }

    @GetMapping("/search/{id}")
    public TSearch getSearch(@PathVariable("id") Integer id){
        return searchService.getSearch(id);
    }

    @GetMapping("searchs/{pagenum}/{pagesize}")
    public Map<String, Object> getSearchsByPage(@PathVariable Integer pagenum, @PathVariable Integer pagesize){
        return searchService.getSearchsPage(pagenum,pagesize);
    }

    @GetMapping("searchs/{like}")
    public Map<String, Object> getSearchByName(@PathVariable String like){
        return searchService.getSearchByName(like);
    }

}
