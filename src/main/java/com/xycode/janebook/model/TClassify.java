package com.xycode.janebook.model;

public class TClassify {
    private Integer id;

    private String classifyName;

    private String classifyInfo;

    private String classifyAdmin;

    private String isSend;

    private String classifyImg;

    private String sendCheck;

    private Integer articleNum;

    private Integer follow;

    private Integer isCity;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassifyName() {
        return classifyName;
    }

    public void setClassifyName(String classifyName) {
        this.classifyName = classifyName == null ? null : classifyName.trim();
    }

    public String getClassifyInfo() {
        return classifyInfo;
    }

    public void setClassifyInfo(String classifyInfo) {
        this.classifyInfo = classifyInfo == null ? null : classifyInfo.trim();
    }

    public String getClassifyAdmin() {
        return classifyAdmin;
    }

    public void setClassifyAdmin(String classifyAdmin) {
        this.classifyAdmin = classifyAdmin == null ? null : classifyAdmin.trim();
    }

    public String getIsSend() {
        return isSend;
    }

    public void setIsSend(String isSend) {
        this.isSend = isSend == null ? null : isSend.trim();
    }

    public String getClassifyImg() {
        return classifyImg;
    }

    public void setClassifyImg(String classifyImg) {
        this.classifyImg = classifyImg == null ? null : classifyImg.trim();
    }

    public String getSendCheck() {
        return sendCheck;
    }

    public void setSendCheck(String sendCheck) {
        this.sendCheck = sendCheck == null ? null : sendCheck.trim();
    }

    public Integer getArticleNum() {
        return articleNum;
    }

    public void setArticleNum(Integer articleNum) {
        this.articleNum = articleNum;
    }

    public Integer getFollow() {
        return follow;
    }

    public void setFollow(Integer follow) {
        this.follow = follow;
    }

    public Integer getIsCity() {
        return isCity;
    }

    public void setIsCity(Integer isCity) {
        this.isCity = isCity;
    }
}