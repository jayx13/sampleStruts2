<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>Email Form</title>
	</head>
	<body>
		<h1>Struts2</h1>

		<s:if test="hasActionErrors()">
        	<s:actionerror />
    	</s:if>
    	<s:if test="hasActionMessages()">
        	<s:actionmessage />
    	</s:if>
		<form action="sendEmail" method="post">
			<label for="from">From</label>
			<input type="text" name="from"/><br/>
			<label for="password">Password</label>
			<input type="password" name="password"/><br/>
			<label for="to">To</label>
			<input type="text" name="to"/><br/>
			<label for="Subject">Subject</label>
			<input type="text" name="subject"/><br/>
			<label for="Body">Body</label>
			<input type="text" name="body"/><br/>
			<input type="submit" value="Send Email"/>
		</form>
		<s:form action="Return">
			<s:submit value="Go back"/>
		</s:form>

	</body>
</html>
