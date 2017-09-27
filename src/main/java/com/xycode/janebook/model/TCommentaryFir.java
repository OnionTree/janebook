package com.xycode.janebook.model;

import java.util.Date;

public class TCommentaryFir {
    private Integer id;

    private String reviewerId;

    private String commentCont;

    private Date reviewTime;

    private String favor;

    private String beReviewerId;

    private String reviewerName;

    private String beReviewerName;

    private Integer articleId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getReviewerId() {
        return reviewerId;
    }

    public void setReviewerId(String reviewerId) {
        this.reviewerId = reviewerId == null ? null : reviewerId.trim();
    }

    public String getCommentCont() {
        return commentCont;
    }

    public void setCommentCont(String commentCont) {
        this.commentCont = commentCont == null ? null : commentCont.trim();
    }

    public Date getReviewTime() {
        return reviewTime;
    }

    public void setReviewTime(Date reviewTime) {
        this.reviewTime = reviewTime;
    }

    public String getFavor() {
        return favor;
    }

    public void setFavor(String favor) {
        this.favor = favor == null ? null : favor.trim();
    }

    public String getBeReviewerId() {
        return beReviewerId;
    }

    public void setBeReviewerId(String beReviewerId) {
        this.beReviewerId = beReviewerId == null ? null : beReviewerId.trim();
    }

    public String getReviewerName() {
        return reviewerName;
    }

    public void setReviewerName(String reviewerName) {
        this.reviewerName = reviewerName == null ? null : reviewerName.trim();
    }

    public String getBeReviewerName() {
        return beReviewerName;
    }

    public void setBeReviewerName(String beReviewerName) {
        this.beReviewerName = beReviewerName == null ? null : beReviewerName.trim();
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }
}