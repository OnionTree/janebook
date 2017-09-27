package com.xycode.janebook.service;

import com.github.pagehelper.PageHelper;
import com.xycode.janebook.mapper.TMessageMapper;
import com.xycode.janebook.model.TMessage;
import com.xycode.janebook.model.TMessageExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageService {
    @Autowired
    TMessageMapper messageMapper;

    public String addMessage(TMessage message){
        if(messageMapper.insertSelective(message)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String delMessage(Integer id){
        if(messageMapper.deleteByPrimaryKey(id)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String updateMessage(TMessage message){
        if(messageMapper.updateByPrimaryKeySelective(message)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public TMessage getMessage(Integer id){
        return messageMapper.selectByPrimaryKey(id);
    }

    public List<TMessage> getMessagesPage(Integer pagenum, Integer pagesize){
        PageHelper.startPage(pagenum, pagesize);
        return messageMapper.selectByExample(new TMessageExample());
    }
}
