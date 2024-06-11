<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품</h1>

	<br>상품 이름 : ${mvo.menu_name }
	<br>상품 설명 : ${mvo.menu_ex }
	<br>상품 가격 : ${mvo.menu_price }
	<br>음식 사진
	<c:forEach items="${attackList }" var="fname">
		<img src="download.do?filename=${fname }">
		<a href="download.do?filename=${fname }">${fname }</a>
	</c:forEach>

</body>
</html>