package com.xycode.janebook.service;

import com.github.pagehelper.PageHelper;
import com.xycode.janebook.mapper.TCommentaryFirMapper;
import com.xycode.janebook.model.TCommentaryFir;
import com.xycode.janebook.model.TCommentaryFirExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentaryFirService {

    @Autowired
    TCommentaryFirMapper commentaryFirMapper;

    public String addCommentaryFir(TCommentaryFir commentaryFir){
        if(commentaryFirMapper.insertSelective(commentaryFir)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String delCommentaryFir(Integer id){
        if(commentaryFirMapper.deleteByPrimaryKey(id)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String updateCommentaryFir(TCommentaryFir commentaryFir){
        if(commentaryFirMapper.updateByPrimaryKeySelective(commentaryFir)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public TCommentaryFir getCommentaryFir(Integer id){
        return commentaryFirMapper.selectByPrimaryKey(id);
    }

    public List<TCommentaryFir> getCommentaryFirsPage(Integer pagenum, Integer pagesize){
        PageHelper.startPage(pagenum, pagesize);
        return commentaryFirMapper.selectByExample(new TCommentaryFirExample());
    }

}
