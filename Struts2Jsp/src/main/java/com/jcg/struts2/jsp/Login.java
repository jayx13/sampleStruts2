package com.jcg.struts2.jsp;

import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport{

	private String user_name;
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	//struts logic

	public String execute() throws Exception {
		if(user_name.equals("user") && password.equals("pass")){
			return SUCCESS;
		}
		return ERROR;
	}
}