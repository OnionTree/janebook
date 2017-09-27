package com.xycode.janebook.controller;

import com.xycode.janebook.model.TCommentaryFir;
import com.xycode.janebook.service.CommentaryFirService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ComFirController {

    @Autowired
    CommentaryFirService commentaryFirService;

    @PostMapping("/commentaryfir")
    public String addCommentaryFir(@RequestBody TCommentaryFir commentaryFir){
        return commentaryFirService.addCommentaryFir(commentaryFir);
    }

    @PutMapping("/commentaryfir")
    public String updateCommentaryFir(@RequestBody TCommentaryFir commentaryFir){
        return commentaryFirService.updateCommentaryFir(commentaryFir);
    }

    @DeleteMapping("/commentaryfir/{id}")
    public String delCommentaryFir(@PathVariable Integer id){
        return commentaryFirService.delCommentaryFir(id);
    }

    @GetMapping("/commentaryfir/{id}")
    public TCommentaryFir getCommentaryFir(@PathVariable("id") Integer id){
        return commentaryFirService.getCommentaryFir(id);
    }

    @GetMapping("commentaryfirs/{pagenum}/{pagesize}")
    public List<TCommentaryFir> getCommentaryFirsByPage(@PathVariable Integer pagenum, @PathVariable Integer pagesize){
        return commentaryFirService.getCommentaryFirsPage(pagenum,pagesize);
    }

}
