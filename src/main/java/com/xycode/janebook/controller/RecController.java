package com.xycode.janebook.controller;


import com.xycode.janebook.model.TRec;
import com.xycode.janebook.service.RecService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RecController {

    @Autowired
    RecService recService;

    @PutMapping("rec")
    public String changeRec(@RequestBody TRec rec){
        return recService.changeRec(rec);
    }

    @GetMapping("rec");
    public List<TRec> getRec(){
        return recService.getRec();
    }
}
