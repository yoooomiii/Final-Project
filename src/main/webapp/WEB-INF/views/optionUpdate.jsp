<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이드 메뉴 수정</title>
</head>
<body>
	<h1>수정이가 수정을 해보아요</h1>
	<form action="option_updateset" method="post">
		<input type=hidden value="${ovo.side_code}" name="side_code">
		<input type=hidden value="${ovo.side_no}" name="side_no">
		<br>
		수정할 사이드 음식 이름<input type=text value="${ovo.side_name}" name="side_name">
		<br>
		수정할 사이드 음식 가격<input type=text value="${ovo.side_price}" name="side_price">
		<br>
		수정할 사이드 음식 설명<input type=text value="${ovo.side_ex}" name="side_ex">
		<br>
		<input type=submit value="수정하기" name="update">
	</form>
</body>
</html>