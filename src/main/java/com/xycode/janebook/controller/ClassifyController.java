package com.xycode.janebook.controller;

import com.xycode.janebook.model.TClassify;
import com.xycode.janebook.service.ClassifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class ClassifyController {

    @Autowired
    ClassifyService classifyService;

    @PostMapping("/classify")
    public String addClassify(@RequestBody TClassify classify){
        return classifyService.addClassify(classify);
    }

    @DeleteMapping("/classify/{id}")
    public String delClassify(@PathVariable Integer id){
        return classifyService.delClassify(id);
    }

    @PutMapping("/classify")
    public String updateClassify(@RequestBody TClassify classify){
        return classifyService.updateClassify(classify);
    }

    @GetMapping("/classifys/{pagenum}/{pagesize}")
    public Map<String, Object> getClassifys(@PathVariable Integer pagenum, @PathVariable Integer pagesize){
        Map<String, Object> map = new HashMap<String, Object>();
        List<TClassify> data = classifyService.getClassifys(pagenum,pagesize);
        map.put("code", "0");
        map.put("msg", "success");
        map.put("count", String.valueOf(data.size()));
        map.put("data", data);
        return map;
    }

    @GetMapping("/classifys/{like}")
    public Map<String, Object> getClassifyss(@PathVariable String like){
        Map<String, Object> map = new HashMap<String, Object>();
        List<TClassify> data = classifyService.getClassifys(like);
        map.put("code", "0");
        map.put("msg", "success");
        map.put("count", String.valueOf(data.size()));
        map.put("data", data);
        return map;
    }

    @GetMapping("/classify/{id}")
    public List<TClassify> getClassify(@PathVariable String id){
        return classifyService.getClassify(id);
    }

}
