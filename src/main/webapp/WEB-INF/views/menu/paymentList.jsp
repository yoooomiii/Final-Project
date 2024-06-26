<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영수증</title>
</head>
<body>
	<table border=1 id="table">
		<thead>
			<tr>
				<td>결제번호</td>
				<td>장바구니 번호</td>
				<td>회원ID</td>
				<td>주문 금액</td>
				<td>배달팁</td>
				<td>총 결제금액</td>
				<td>포인트</td>
				<td>결제수단</td>
				<td>결제정보</td>
				<td>주문일시</td>
				<td>배달 주소</td>
				<td>수령 방법</td>
				<td>요청사항</td>
				<td>삭제</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${paymentList}" var="pvo">
				<tr>
					<td>${pvo.pm_no}</td>
					<td>${pvo.pm_num }</td>
					<td>${pvo.pm_id}</td>
					<td>${pvo.pm_price}</td>
					<td>${pvo.pm_tip }원</td>
					<td>${pvo.pm_total}원</td>
					<td>${pvo.pm_point}</td>
					<td>${pvo.pm_pay }</td>
					<td>${pvo.pm_card}</td>
					<td>${pvo.pm_date}</td>
					<td>${pvo.pm_address}</td>
					<td>${pvo.pm_pick}</td>
					<td>${pvo.pm_comment}</td>
					<td><a href="payment_delete?pm_no=${pvo.pm_no}">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>