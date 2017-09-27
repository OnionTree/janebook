package com.xycode.janebook.controller;

import com.xycode.janebook.model.TFavor;
import com.xycode.janebook.service.FavorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class FavorController {

    @Autowired
    FavorService favorService;

    @GetMapping("favors/{userid}")
    public List<TFavor> getFavors(@PathVariable String userid){
        return favorService.getFavors(userid);
    }

}
