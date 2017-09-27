package com.xycode.janebook.service;

import com.xycode.janebook.mapper.TRecMapper;
import com.xycode.janebook.model.TRec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecService {

    @Autowired
    TRecMapper recMapper;

    public String changeRec(TRec rec){
        if(recMapper.updateByPrimaryKeySelective(rec)>0){
            return "success";
        }else{
            return "failed";
        }
    }
}
