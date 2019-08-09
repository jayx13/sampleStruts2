package com.jcg.struts2.jsp;


import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class DateView extends ActionSupport{

	private Date currentDate;


	public Date getCurrentDate() {
		return currentDate;
	}


	public void setCurrentDate(Date currentDate) {
		this.currentDate = currentDate;
	}


	public String execute() throws Exception {
		setCurrentDate(new Date());
		return SUCCESS;
	}

}
