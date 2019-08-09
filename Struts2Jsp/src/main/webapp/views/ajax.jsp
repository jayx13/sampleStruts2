<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>Ajax</title>
	</head>
	<body>
		<h1>Struts2</h1>

		<s:if test="hasActionErrors()">
        	<s:actionerror />
    	</s:if>
    	<s:if test="hasActionMessages()">
        	<s:actionmessage />
    	</s:if>

		<s:form>
			<sx:datetimepicker name="deliverydate" label="Delivery Date"/>
			<br/>
			<s:url id="url" value="/ajax.action"/>
			<sx:div href="%{#url}" delay="2000">
				Initial Content
			</sx:div>
			<br/>
			<sx:tabbedpanel id="tabContainer">
				<sx:div label = "Tab 1">Tab 1</sx:div>
				<sx:div label = "Tab 2">Tab 2</sx:div>
			</sx:tabbedpanel>
		</s:form>
		<s:form action="Return">
			<s:submit value="Go back"/>
		</s:form>

	</body>
</html>
