<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#box {
	float: left;
	width: 900px;
	height: 1000px;
	margin-left :110px;
	border: 2px solid red;
}

h3 {
	text-align: center;
}

h2 {
	font-size: large;
}

table {
	border-collapse: collapse;
	width: 800px;
	font-size: 16px;
	margin-left: 28px;
}

thead {
	text-align: center;
	font-weight: bold;
}

tbody {
	font-size: 12px;
}

td {
	padding: 15px 0px;
	border-bottom: 2px solid grey;
}
#btn{
	margin-left:-50px;
}

</style>
<body>
	<div id="box">
		<div id="orderlist" class="content">
			<table class='order__list'>
				<thead>
					<tr>
						<td>주문번호</td>
						<td>ID</td>
						<td>주문상태</td>
						<td>리뷰</td>
					</tr>
				</thead>
				
				<tbody>
					<!-- 내일 학원가서 데이터 넣어보기 -->
					<c:forEach items="${mlvo}" var="mlvo">
						<tr>
							<td>${mlvo.m_num}</td>
							<td>${mlvo.m_id}</td>
							<td>${mlvo.m_state}</td>
							<form action="write" method="get">
							<td><button>리뷰쓰기</button></td>
							</form>
						</tr>
					</c:forEach>


				</tbody>
			</table>
		</div>

	</div>

</body>
</html>