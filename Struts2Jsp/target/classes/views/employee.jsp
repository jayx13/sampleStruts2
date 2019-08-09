<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>Employee Validation</title>
	</head>
	<body>
		<h1>Struts2</h1>

		<s:if test="hasActionErrors()">
        	<s:actionerror />
    	</s:if>
    	<s:if test="hasActionMessages()">
        	<s:actionmessage />
    	</s:if>
		<s:form action="valEmp" method="post">
			<s:textfield name="name" label="Name" size="20/"/>
			<s:textfield name="age" label="Age" size="20/"/>
			<s:submit name="submit" label="Submit"/>
		</s:form>
		<s:form action="Return">
			<s:submit value="Go back"/>
		</s:form>

	</body>
</html>
