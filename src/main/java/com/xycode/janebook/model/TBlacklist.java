package com.xycode.janebook.model;

public class TBlacklist {
    private Integer id;

    private String userId;

    private String bennedId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getBennedId() {
        return bennedId;
    }

    public void setBennedId(String bennedId) {
        this.bennedId = bennedId == null ? null : bennedId.trim();
    }
}