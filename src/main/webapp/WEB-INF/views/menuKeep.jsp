<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴</title>
</head>
<body>
	${mvo.menu_name }
	<br>
	<c:forEach items="${attackList}" var="fname">
		<img src="download?filename=${fname}" width="500" , height="450">
	</c:forEach>
	<br>
	${mvo.menu_name }
	<br>
	${mvo.menu_ex }
	<br>
	${mvo.menu_price }원
</body>
</html>