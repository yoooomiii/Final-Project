<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 등록</title>
</head>
<body>
	<h1>메뉴 등록창입니다</h1>
	<form action="inputSave" method="post" encType="multipart/form-data">
	메뉴 코드<input type=text name="menu_code">
	<br>
	메뉴 이름<input type=text name="menu_name">
	<br>
	메뉴 가격<input type=text name="menu_price">
	<br>
	메뉴 설명<input type=text name="menu_ex">
	<br>
	메뉴 평점<input type=text name="menu_star">
	<br>
	메뉴 사진<input type=test name="menu_file">
	<br>
	<input type=submit value="메뉴 저장">
	</form>

</body>
</html>