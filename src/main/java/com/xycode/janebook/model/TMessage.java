package com.xycode.janebook.model;

public class TMessage {
    private Integer id;

    private String type;

    private String mesContent;

    private String sendId;

    private String reciveId;

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
}