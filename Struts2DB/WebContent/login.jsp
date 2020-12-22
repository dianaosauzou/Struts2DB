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
		<h1>Struts2 and MySQL database  example</h1>
		 <s:form action="Login">
		
			<s:textfield label="userame" name="username" />
			<s:textfield label="password" name="password" />
			<s:submit value="Login" />
		</s:form>
</div>
</body>
</html>