<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>Generator</title>
	</head>
	<body>
		<h1>Struts2</h1>

		<s:if test="hasActionErrors()">
        	<s:actionerror />
    	</s:if>
    	<s:if test="hasActionMessages()">
        	<s:actionmessage />
    	</s:if>

		<s:action name = "doGenerator">
			Output from Generator: <br/>
		</s:action>

		<s:iterator value="#attr.names">
			<s:property/><br/>
		</s:iterator>

		<s:form action="Return">
			<s:submit value="Go back"/>
		</s:form>

	</body>
</html>
