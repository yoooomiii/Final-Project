<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이드 상품 목록</title>
</head>
<body>
<h1>등록한 사이드 상품 리스트</h1>
	<br>
	<table border=1>
		<thead>
			<tr>
				<td>사이드 메뉴 코드</td>
				<td>사이드 메뉴 번호</td>
				<td>사이드 메뉴 이름</td>
				<td>사이드 메뉴 가격</td>
				<td>사이드 메뉴 설명</td>
				<td>메뉴 수정</td>
				<td>메뉴 삭제</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${optionList}" var="optionvo">
				<tr>
					<form action="option_update" method="get">
					<td>${optionvo.option_code}</td>
					<td>${optionvo.option_no}</td>
					<td><a href="viewDetail?option_no=${optionvo.option_no}">${optionvo.option_name}</a></td>
					<td>${optionvo.option_price}</td>
					<td>${optionvo.option_ex}</td>
					<td><button type=submit value="${optionvo.option_no}" name="option_no">수정</button></td>
					</form>
					<form action="option_delete" method="post">
					<td><button type=submit value="${optionvo.option_no}" name="option_no">삭제</button></td>
					</form>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>