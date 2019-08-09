package com.jcg.struts2.jsp;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;


public class Generator extends ActionSupport{

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String execute() throws Exception {

		List names = new ArrayList();
		names.add("Employee1");
		names.add("Employee2");
		names.add("Employee3");

		ServletActionContext.getRequest().setAttribute("names", names);

		return SUCCESS;
	}



}
