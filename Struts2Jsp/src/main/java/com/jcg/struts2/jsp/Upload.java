package com.jcg.struts2.jsp;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;


import com.opensymphony.xwork2.ActionSupport;

public class Upload extends ActionSupport {

	private File sampFile;
	private String sampFileContentType;
	private String sampFileName;
	private String destPath;


	public File getSampFile() {
		return sampFile;
	}

	public void setSampFile(File sampFile) {
		this.sampFile = sampFile;
	}

	public String getSampFileContentType() {
		return sampFileContentType;
	}

	public void setSampFileContentType(String sampFileContentType) {
		this.sampFileContentType = sampFileContentType;
	}

	public String getSampFileName() {
		return sampFileName;
	}

	public void setSampFileName(String sampFileName) {
		this.sampFileName = sampFileName;
	}




	public String execute() throws Exception {
		return SUCCESS;
	}

	public String upload() throws Exception {
		destPath = "C:/sampUpload/";

		try{
			System.out.println("Source File Name " + sampFile);
			sampFileName = "sampleUploadedFile.txt";
			System.out.println("Destination File Name: " + sampFileName);

			File destFile = new File(destPath, sampFileName);
			FileUtils.copyFile(sampFile, destFile);

		} catch(IOException e){
			e.printStackTrace();
			addActionError("Error while uploading " + e.getMessage());
			return ERROR;
		}
		addActionMessage(sampFileName + " was uploaded successfuly");
		return SUCCESS;
	}



}
