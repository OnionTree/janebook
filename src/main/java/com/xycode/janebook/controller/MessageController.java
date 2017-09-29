package com.xycode.janebook.controller;

import com.xycode.janebook.model.TMessage;
import com.xycode.janebook.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class MessageController {

    @Autowired
    MessageService messageService;

    @PostMapping("/message")
    public String addMessage(@RequestBody TMessage message){
        return messageService.addMessage(message);
    }

    @PutMapping("/message")
    public String updateMessage(@RequestBody TMessage message){
        return messageService.updateMessage(message);
    }

    @DeleteMapping("/message/{id}")
    public String delMessage(@PathVariable Integer id){
        return messageService.delMessage(id);
    }

    @GetMapping("/messages/{id}")
    public List<TMessage> getMessage(@PathVariable("id") String id){
        return messageService.getMessages(id);
    }

    @GetMapping("messages/{pagenum}/{pagesize}")
    public List<TMessage> getMessagesByPage(@PathVariable Integer pagenum, @PathVariable Integer pagesize){
        return messageService.getMessagesPage(pagenum,pagesize);
    }

}
