package com.jcg.struts2.jsp;

import com.opensymphony.xwork2.ActionSupport;

public class Counter extends ActionSupport {

	private String name;


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String execute() throws Exception {
		return SUCCESS;
	}

}
