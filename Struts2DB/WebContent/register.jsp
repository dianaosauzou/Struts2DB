<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Struts2 and MySQL database connectivity</title>
</head>
<body style="background-color: lightyellow;">
	<div style="margin-left: 25%; margin-top: 50px;">
		<h1>Struts2 and MySQL database connectivity example</h1>
		 <s:form action="Register">
			<s:textfield label="ID" name="id" />
			<s:textfield label="Name" name="name" />
			<s:textfield label="Email" name="email" />
			<s:textfield label="City" name="city" />
			<s:submit value="Register" />
		</s:form>
</div>
</body>
</html>