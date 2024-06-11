<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<h1>등록한 상품 리스트</h1>
	<br>
	<table border=1>
		<thead>
			<tr>
				<td>메뉴 코드</td>
				<td>메뉴 번호</td>
				<td>메뉴 이름</td>
				<td>메뉴 가격</td>
				<td>메뉴 설명</td>
				<td>메뉴 평점</td>
				<td>메뉴 사진</td>
				<td>메뉴 수정</td>
				<td>메뉴 삭제</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${menuList}" var="menuvo" varStatus="status">
				<tr>
					<form action="menu_update" method="get">
					<td>${menuvo.menu_code}</td>
					<td>${menuvo.menu_no}</td>
					<td><a href="viewDetail?menu_code=${menuvo.menu_code}">${menuvo.menu_name}</a></td>
					<td>${menuvo.menu_price}</td>
					<td>${menuvo.menu_ex}</td>
					<td>${menuvo.menu_star}</td>
					<td>${menuvo.menu_file}</td>
					<td><button type=submit value="${menuvo.menu_code}" name="menu_code">수정</button></td>
					</form>
					<form action="menu_delete" method="post">
					<td><button type=submit value="${menuvo.menu_code}" name="menu_code">삭제</button></td>
					</form>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>