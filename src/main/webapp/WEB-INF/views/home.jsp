<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>

	<form action="inputSave" method="post">
	<input type=text name="code">
	<input type=text name="no">
	<input type=text name="name">
	<input type=text name="price">
	<input type=text name="ex">
	<input type=text name="star">
	<input type=text name="file">
	<input type=submit value="저장">
	</form>
</body>
</html>
