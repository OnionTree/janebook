package com.xycode.janebook.model;

import java.util.List;

public class Msg {
	//状态码   100-成功    200-失败
	private int code;
	//提示信息
	private String msg;
	//用户
	private List<TUser> data;

	private int count;

	public Msg() {
	}

	public Msg(int code, String msg, List<TUser> data, int count) {
		this.code = code;
		this.msg = msg;
		this.count = count;
		this.data = data;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public List<TUser> getData() {
		return data;
	}

	public void setData(List<TUser> data) {
		this.data = data;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
}
