package com.xycode.janebook.controller;

import com.xycode.janebook.model.TCommentarySec;
import com.xycode.janebook.service.CommentarySecService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ComSecController {

    @Autowired
    CommentarySecService commentarSecService;

    @PostMapping("/commentarysec")
    public String addCommentarySec(@RequestBody TCommentarySec commentarySec){
        return commentarSecService.addCommentarySec(commentarySec);
    }

    @PutMapping("/commentarysec")
    public String updateCommentarySec(@RequestBody TCommentarySec commentarySec){
        return commentarSecService.updateCommentarySec(commentarySec);
    }

    @DeleteMapping("/commentarysec/{id}")
    public String delCommentarySec(@PathVariable Integer id){
        return commentarSecService.delCommentarySec(id);
    }

    @GetMapping("/commentarysec/{id}")
    public TCommentarySec getCommentarySec(@PathVariable("id") Integer id){
        return commentarSecService.getCommentarySec(id);
    }

    @GetMapping("commentarysecs/{articleid}/{pagenum}/{pagesize}")
    public List<TCommentarySec> getCommentarySecsByPage( @PathVariable Integer pagenum, @PathVariable Integer pagesize,@PathVariable String articleid){
        return commentarSecService.getCommentarySecsPage(articleid, pagenum,pagesize);
    }

}

