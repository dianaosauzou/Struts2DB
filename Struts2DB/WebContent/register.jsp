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
			<s:textfield label="username" name="username" />
			<s:textfield label="password" name="password" />
			<s:textfield label="email" name="email" />
			<s:textfield label="age" name="age" />
			<s:submit value="Register" />
	
		</s:form>
</div>
</body>
</html>