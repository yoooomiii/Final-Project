<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>장바구니다</h1>
	<form action="item_inputSaveup" method="post">
	<br>
	결제 번호<input type=text value="47" name="i_no">
	<br>
	회원 아이디<input type=text value="lemon3" name="i_id">
	<br>
	메뉴 코드<input type=text value="${menu_no }" name="menu_no">
	<br>
	사이드메뉴 코드1<input type=text value="${menu_no2 }" name="menu_no2">
	<br>
	사이드 메뉴 코드2<input type=text value="${menu_no3 }" name="menu_no3">
	<br>
	사이드 메뉴 코드3<input type=text value="${menu_no4 }" name="menu_no4">
	<br>
	<input type=text value= 1 name="i_conut">
	<br>
	메뉴 주문 금액<input type=text value="${i_price }" name="i_price">
	<br>
	
	<br>
	<button type=submit value="">결제하기</button>
	</form>

</body>
</html>