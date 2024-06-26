<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 등록</title>
</head>
<body>
    <h1>장바구니다</h1>
    <form action="item_inputSave" method="get">
        <br>
        	회원 아이디<input type="text" value="${i_id}" name="i_id">
        <br>
        	메뉴 코드<input type="text" value="${menu_no}" name="menu_no">
        <br>
        	사이드메뉴 코드1<input type="text" value="${menu_no2}" name="menu_no2">
        <br>
        	사이드 메뉴 코드2<input type="text" value="${menu_no3}" name="menu_no3">
        <br>
        	사이드 메뉴 코드3<input type="text" value="${menu_no4}" name="menu_no4">
        <br>
        	주문한 메뉴이름<input type="text" value="${menu_name }" name="menu_name">
        <br>
        	메뉴 주문 금액<input type="text" value="${i_price}" name="i_price">
        <br>
        <br>
        <button type="submit" value="">결제하기</button>
    </form>
</body>
</html>
