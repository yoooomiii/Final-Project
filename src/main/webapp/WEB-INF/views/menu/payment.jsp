<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>축하드립니다</title>
</head>
<body>
	
	<h1>${username} 님의 주문접수 완료</h1>
	<h1>쬬아!</h1>
	
	
	<form action="mlist_inputSave" method="post">
		<input type="hidden" value="${userid}" name="m_id">
		<c:forEach items="${paymentList}" var="pvo">
		<input type="hidden" value="${pvo.pm_no}" name="m_no">
		</c:forEach>
		<input type="hidden" value="주문접수" name="m_state">
		<c:forEach items="${itemList}" var="ivo">
		<input type="hidden" value="${ivo.menu_name }" name="m_name">
		</c:forEach>
		<input type="submit" value="확인">
	</form>
</body>
</html>