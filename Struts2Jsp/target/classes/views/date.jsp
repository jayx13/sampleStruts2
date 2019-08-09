<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>View today's date</title>
	</head>
	<body>
		<h1>Struts2</h1>

		<s:if test="hasActionErrors()">
        	<s:actionerror />
    	</s:if>
    	<s:if test="hasActionMessages()">
        	<s:actionmessage />
    	</s:if>

		<h2>Current Date</h2>
		<h3>Day/Month/Year Format</h3>
		<s:date name="currentDate" format="dd//MM/yyyy"/>
		<h3>Month/Day/Year Format</h3>
		<s:date name="currentDate" format="MM/dd/yyyy"/>

		<s:form action="Return">
			<s:submit value="Go back"/>
		</s:form>

	</body>
</html>
