package com.xycode.janebook.service;

import com.xycode.janebook.mapper.TRecMapper;
import com.xycode.janebook.model.TRec;
import com.xycode.janebook.model.TRecExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    public List<TRec> getRec(){
        return recMapper.selectByExample(new TRecExample());
    }
}
