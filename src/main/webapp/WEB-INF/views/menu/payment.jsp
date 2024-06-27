<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>축하드립니다</title>
<link href="./resources/css/payment.css" rel="stylesheet" />
</head>
<body>
	<div id="box">
        <section id="list">
            <br>
            <h1>${username} 님의 결제 완료</h1>
            <br>
            <h2>주문접수 중 입니다 잠시만 기다려주세요</h2>
            <br>
            <img src="./resources/img/화면 캡처 2024-06-27 124437.png" width="400" , height="250">
            <br>
            <br>
            <form action="mlist_inputSave" method="post">
				<input type="hidden" value="${userid}" name="m_id">
				<c:forEach items="${paymentList}" var="pvo">
					<input type="hidden" value="${pvo.pm_no}" name="m_no">
				</c:forEach>
				<input type="hidden" value="주문접수" name="m_state">
				<c:forEach items="${itemList}" var="ivo">
					<input type="hidden" value="${ivo.menu_name }" name="m_name">
				</c:forEach>
				<input type="submit" value="확인" id="but">
			</form>
        </section>
    </div>
</body>
</html>