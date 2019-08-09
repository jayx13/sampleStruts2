<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>System Details</title>
	</head>
	<body>
		<h1>Struts2</h1>
		<p>Environments</p>
		(Method 1) Environment Name:
		<s:property value="environment.name"/><br/>
		(Method 2) Environment Name:
		<s:push value="environment">
			<s:property value="name"/><br/>
		</s:push>
		(Method 3) Environment Name:
		<s:set name="myenv" value="environment.name"/><br/>
		<s:property value="myenv"/>

		Operating System: <s:property value="operatingSystem"/>

		<s:form action="Return">
			<s:submit value="Go back"/>
		</s:form>

	</body>
</html>
