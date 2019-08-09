<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>Counter</title>
	</head>
	<body>
		<h1>Struts2</h1>

		<s:if test="hasActionErrors()">
        	<s:actionerror />
    	</s:if>
    	<s:if test="hasActionMessages()">
        	<s:actionmessage />
    	</s:if>

		<s:bean name = "org.apache.struts2.util.Counter" var="counter">
			<s:param name="first" value="20"/>
			<s:param name="last" value="25"/>
		</s:bean>

		<s:iterator value="#counter">
			<s:property/><br/>
		</s:iterator>

		<s:form action="Return">
			<s:submit value="Go back"/>
		</s:form>

	</body>
</html>
