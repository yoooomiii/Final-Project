<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 수정</title>
</head>
<body>
	<h1>수정이가 수정을 해보아요</h1>
	<form action="menu_updateset" method="post">
		<input type=hidden value="${mvo.menu_code}" name="menu_code">
		<input type=hidden value="${mvo.menu_no}" name="menu_no">
		<br>
		수정할 음식 이름<input type=text value="${mvo.menu_name}" name="menu_name">
		<br>
		수정할 음식 가격<input type=text value="${mvo.menu_price}" name="menu_price">
		<br>
		수정할 음식 설명<input type=text value="${mvo.menu_ex}" name="menu_ex">
		<br>
		수정할 음식 평점<input type=text value="${mvo.menu_star}" name="menu_star">
		<input type=hidden value="${mvo.menu_file}" name="menu_file">
		<br>
		<input type=submit value="수정하기" name="update">
	</form>
</body>
</html>