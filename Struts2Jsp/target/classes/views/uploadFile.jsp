<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Struts2</title>
	</head>
	<body>
		<h1>Struts 2 Page</h1>
			<s:if test="hasActionErrors()">
        		<s:actionerror />
    		</s:if>
    		<s:if test="hasActionMessages()">
        		<s:actionmessage />
    		</s:if>

    		<s:form action="doUpload" method ="post" enctype="multipart/form-data">
        		<s:file name="sampFile" />
        		<s:submit value="Upload"/>
    		</s:form>
    		<s:form action="Return">
				<s:submit value="Go back"/>
			</s:form>
	</body>
</html>