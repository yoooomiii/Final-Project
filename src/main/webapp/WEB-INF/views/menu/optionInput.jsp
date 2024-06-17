<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사이드 메뉴 등록창입니다</h1>
	<form action="option_inputSave" method="post" encType="multipart/form-data">
		메뉴 코드<input type=text name="side_code">
		<br>
		메뉴 이름<input type=text name="side_name">
		<br>
		메뉴 가격<input type=text name="side_price">
		<br>
		메뉴 설명<input type=text name="side_ex">
		<br>
		참부파일 1<input type=file name="file">
		<br>
		<input type=submit value="사이드 메뉴 저장">
	</form>

</body>
</html>