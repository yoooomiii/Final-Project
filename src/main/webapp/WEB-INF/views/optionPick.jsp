<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="optionList">
		<span><b>사이드 음식 정보</b></span>
		<br>상품 이름 : ${ovo.side_name }
		<br>상품 설명 : ${ovo.side_ex }
		<br>상품 가격 : ${ovo.side_price }
		<br>
		<c:forEach items="${attackList}" var="fname">
			<img src="download?filename=${fname}">
		</c:forEach>
		<form action="box" method="get">
		<button type=submit value="${ovo.side_no }">주문하기</button>
		</form>
	</div>
</body>
</html>