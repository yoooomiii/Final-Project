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

.image-container {
	display: flex;
	gap: 30px; /* 이미지 간의 간격 설정 */
	justify-content: center; /* 이미지를 가운데 정렬 */
	align-items: center; /* 이미지가 가운데 정렬되도록 설정 */
}

.image-container img {
	height: 100px; /* 원하는 높이로 설정 */
	width: auto;
}

.table-cell {
	vertical-align: middle; /* 테이블 셀 안의 내용을 수직 가운데 정렬 */
	padding: 0; /* 셀 안의 패딩을 제거 */
	width: 220px; /* 테이블 셀의 너비 설정 */
}
</style>
<body>
	<h2>나의 리뷰 목록</h2>
	<table>
		<thead>
			<tr>
				<th>사진</th>
				<th>메뉴 이름(지금은 주문번호)</th>
				<th>별점</th>
				<th>리뷰</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${review}" var="review">
				<tr>
					<td class="table-cell">
						<div class="image-container">
							<c:forEach items="${photolist}" var="photo">
								<c:if
									test="${review.re_num == photo.re_num && not empty photo.filename}">
									<img
										src="${pageContext.request.contextPath}/downloads?filename=${photo.filename}"
										alt="Review Photo">
								</c:if>
							</c:forEach>
						</div>
					</td>
					<td class="table-cell">${review.re_num}</td>
					<td class="table-cell">${review.re_star}점</td>
					<td class="table-cell">${review.re_ex}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>