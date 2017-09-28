package com.xycode.janebook.model;

import java.util.Date;

public class TMessage {
    private Integer id;

    private String type;

    private String mesContent;

    private String sendId;

    private String reciveId;

    private String readed;

    private Date time;

    private String article;

    private String calssify;

    private Integer acid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getMesContent() {
        return mesContent;
    }

    public void setMesContent(String mesContent) {
        this.mesContent = mesContent == null ? null : mesContent.trim();
    }

    public String getSendId() {
        return sendId;
    }

    public void setSendId(String sendId) {
        this.sendId = sendId == null ? null : sendId.trim();
    }

    public String getReciveId() {
        return reciveId;
    }

    public void setReciveId(String reciveId) {
        this.reciveId = reciveId == null ? null : reciveId.trim();
    }

    public String getReaded() {
        return readed;
    }

    public void setReaded(String readed) {
        this.readed = readed == null ? null : readed.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getArticle() {
        return article;
    }

    public void setArticle(String article) {
        this.article = article == null ? null : article.trim();
    }

    public String getCalssify() {
        return calssify;
    }

    public void setCalssify(String calssify) {
        this.calssify = calssify == null ? null : calssify.trim();
    }

    public Integer getAcid() {
        return acid;
    }

    public void setAcid(Integer acid) {
        this.acid = acid;
    }
}