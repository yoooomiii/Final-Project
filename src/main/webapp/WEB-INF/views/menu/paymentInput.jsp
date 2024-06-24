<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제</title>
</head>
<body>
	<h1>장바구니다</h1>
    <form action="payment_inputSave" method="post">
        <br>
        	주문 번호<input type="text" value="${i_no}" name="pm_no">
        <br>
        	회원 ID<input type="text" value="${i_id}" name="pm_id">
        <br>
        	주문 금액<input type="text" value="${menu_no}" name="pm_price">
        <br>
        	배달비<input type="text" value="${menu_no2}" name="pm_tip">
        <br>
        	총 결제금액<input type="text" value="${menu_no3}" name="pm_total">
        <br>
        	포인트<input type="text" value="${menu_no4}" name="pm_poion">
        <br>
        	결제 수단<input type="text" value="${menu_name }" name="pm_pay">
        <br>
        	결제 정보<input type="text" value="${i_price}" name="pm_card">
        <br>
        	주문 일시<input type="text" value="${menu_name }" name="pm_date">
        <br>
        	배달 주소<input type="text" value="${i_price}" name="pm_address">
        <br>
        	수령 방법<input type="text" value="${menu_name }" name="pm_pick">
        <br>
        	요청 사항<input type="text" value="${i_price}" name="pm_comment">
        <br>
        <br>
        <button type="submit" value="">결제하기</button>
    </form>
</body>
</html>