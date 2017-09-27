package com.xycode.janebook.model;

import java.util.List;

public class Image {

    private int errno;

    public int getErrno() {
        return errno;
    }

    public void setErrno(int errno) {
        this.errno = errno;
    }

    public List<String> getData() {
        return data;
    }

    public void setData(List<String> data) {
        this.data = data;
    }

    private List<String> data;

}
