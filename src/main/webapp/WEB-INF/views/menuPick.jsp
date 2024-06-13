<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴선택</title>
</head>
<body>
	<div class="manuList">
		<span><b>음식 정보</b></span>
		<br>상품 이름 : ${mvo.menu_name }
		<br>상품 설명 : ${mvo.menu_ex }
		<br>상품 가격 : ${mvo.menu_price }
		<br>
		<c:forEach items="${attackList}" var="fname">
			<img src="download?filename=${fname}">
		</c:forEach>
		<form action="box" method="get">
		<button type=submit value="${mvo.menu_no }">주문하기</button>
		</form>
	</div>
</body>
</html>