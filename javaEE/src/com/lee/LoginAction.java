package com.lee;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	String userid, pass;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String execute() {
		if (getUserid().equals("admin") && getPass().equals("pass")) {
			return "SUCCESS";
		} else
			return "ERROR";
	}
}
