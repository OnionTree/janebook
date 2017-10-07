package com.xycode.janebook.service;

import com.github.pagehelper.PageHelper;
import com.xycode.janebook.mapper.TCommentarySecMapper;
import com.xycode.janebook.model.TCommentarySec;
import com.xycode.janebook.model.TCommentarySecExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentarySecService {

    @Autowired
    TCommentarySecMapper commentarySecMapper;

    public String addCommentarySec(TCommentarySec commentarySec){
        if(commentarySecMapper.insertSelective(commentarySec)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String delCommentarySec(Integer id){
        if(commentarySecMapper.deleteByPrimaryKey(id)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public String updateCommentarySec(TCommentarySec commentarySec){
        if(commentarySecMapper.updateByPrimaryKeySelective(commentarySec)>0){
            return "success";
        }else{
            return "failed";
        }
    }

    public TCommentarySec getCommentarySec(Integer id){
        return commentarySecMapper.selectByPrimaryKey(id);
    }

    public List<TCommentarySec> getCommentarySecsPage(String articleid, Integer pagenum, Integer pagesize){
        TCommentarySecExample commentarySecExample = new TCommentarySecExample();
        TCommentarySecExample.Criteria criteria = commentarySecExample.createCriteria();
        criteria.andReviewerIdEqualTo(articleid);
        PageHelper.startPage(pagenum, pagesize);
        return commentarySecMapper.selectByExample(commentarySecExample);
    }
}
