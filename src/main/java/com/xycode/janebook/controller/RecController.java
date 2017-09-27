package com.xycode.janebook.controller;


import com.xycode.janebook.model.TRec;
import com.xycode.janebook.service.RecService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RecController {

    @Autowired
    RecService recService;

    @PutMapping("rec")
    public String changeRec(@RequestBody TRec rec){
        return recService.changeRec(rec);
    }
}
