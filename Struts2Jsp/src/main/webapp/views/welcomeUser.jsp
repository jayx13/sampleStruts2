<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Struts2 JSP</title>
	</head>
	<body>
		<h1>Struts2 Page</h1>
		<h4>
			Hello <s:property value="user_name"/>
		</h4>
		<s:form action="Upload">
			<s:submit value="Upload File"/>
		</s:form>
		<s:form action="Email">
			<s:submit value="Send Email"/>
		</s:form>
		<s:form action="EmpInfo">
			<s:submit value="Employee Validation"/>
		</s:form>
		<s:form action="EmpInfoMulti">
			<s:submit value="Employee Validation (Multi-Language)"/>
		</s:form>
		<s:form action="System">
			<s:submit value="Check Environment/System Information"/>
		</s:form>
		<s:form action="Generator">
			<s:submit value="View Employee List"/>
		</s:form>
		<s:form action="Counter">
			<s:submit value="Counter"/>
		</s:form>
		<s:form action="Date">
			<s:submit value="View Today's Date"/>
		</s:form>
		<s:form action="Ajax">
			<s:submit value="Ajax Example"/>
		</s:form>
		<s:form action="Logout">
			<s:submit value="Logout"/>
		</s:form>
	</body>
</html>