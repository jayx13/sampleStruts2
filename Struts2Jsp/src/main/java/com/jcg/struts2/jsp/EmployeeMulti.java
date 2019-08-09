package com.jcg.struts2.jsp;

import com.opensymphony.xwork2.ActionSupport;

public class EmployeeMulti extends ActionSupport {

	private String name;
	private int age;


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String execute() {
		addActionMessage(name + " was successfully verified.");
		return SUCCESS;
	}
}
