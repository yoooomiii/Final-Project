<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
	font-size: 18px;
	text-align: left;
}

table thead tr {
	background-color: #f2f2f2;
	color: #333;
	text-align: left;
	font-weight: bold;
}

table th, table td {
	padding: 12px 15px;
	border: 1px solid #ddd;
}

table tbody tr {
	border-bottom: 1px solid #ddd;
}

table tbody tr:nth-of-type(even) {
	background-color: #f9f9f9;
}

table tbody tr:last-of-type {
	border-bottom: 2px solid #009879;
}

table tbody tr:hover {
	background-color: #f1f1f1;
}

img {
	max-width: 100px;
	height: auto;
	display: block;
	margin: 0 auto;
}
</style>
<body>
	<h2>나의 리뷰 목록</h2>
	<table>
		<thead>
			<tr>
				<th>사진</th>
				<th>메뉴 이름</th>
				<th>별점</th>
				<th>리뷰</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${review}" var="reviewItem">
				<tr>
					<td><c:forEach items="${photolist}" var="photo">
							<c:if test="${reviewItem.re_no == photo.no}">
								<img
									src="${pageContext.request.contextPath}/download?filename=${photo.filename}"
									alt="Review Photo" width="100">
								<p>Review No: ${reviewItem.re_no}, Photo Filename:
									${photo.filename}</p>
								<!-- 디버깅 메시지 -->
							</c:if>
						</c:forEach></td>
					<td>${reviewItem.re_no}</td>
					<td>${reviewItem.re_star}</td>
					<td>${reviewItem.re_ex}</td>
					<form action="view" method="get">
					<td><button>사진보기</button></td>
					</form>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>