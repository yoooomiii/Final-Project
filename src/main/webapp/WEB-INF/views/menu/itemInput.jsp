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
	<form action="item_inputSave" method="post">
	<br>
	<input type=text name="i_no">
	<br>
	<input type=text name="i_no">
	<br>
	메인 메뉴 코드
	<br>
	<input type=text value="${mvo.menu_no }" name="i_code">
	<br>
	사이드메뉴 코드
	<br>
	<input type=text value="${ovo.side_no }" name="i_scode">
	<br>
	메뉴 수량
	<br>
	<input type=text value= 1 name="i_count">
	<br>
	메뉴 주문 금액
	<br>
	<input type=text value="${mvo.menu_price }${ovo.side_price }" name="i_price">
	<br>
	<button type=submit value="">결제하기</button>
	</form>

</body>
</html>