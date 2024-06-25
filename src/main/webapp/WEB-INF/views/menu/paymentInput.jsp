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
        	<input type="hidden" value="${pm_no}" class="pm_no">
        <br>
        	회원 ID<input type="text" value="${userid}" name="pm_id">
        <br>
        	주문 금액<input type="text" value="${i_price}" name="pm_price">
        <br>
        	배달비<input type="text" value="2000" name="pm_tip">
        <br>
        	총 결제금액<input type="text" value="${pm_total}" name="pm_total">
        <br>
        	포인트<input type="text" value="${pm_poion}" name="pm_poion">
        <br>
        	결제 수단<input type="text" name="pm_pay">
        <br>
        	결제 정보<input type="text" name="pm_card">
        <br>
        	배달 주소<input type="text" value="${useraddress}" name="pm_address">
        <br>
        	수령 방법<input type="text" name="pm_pick">
        <br>
        	요청 사항<input type="text" name="pm_comment">
        <br>
        <br>
        <button type="submit" value="">결제하기</button>
    </form>
</body>
</html>