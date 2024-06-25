<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${path}/resources/css/main.css" rel="stylesheet" />
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</head>
<style>
@font-face {
	font-family: 'Cafe24Ssurround';
	src:
		url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'SUITE-Regular';
	src:
		url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2')
		format('woff2');
	font-weight: 200;
	font-style: normal;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#box {
	float: left;
	width: 1000px;
	height: 800px;
	margin-left: 135px;
	margin-top: 40px;
	border: 7px solid rgb(249, 245, 194);
	border-radius: 50px;
}

h3 {
	text-align: center;
}

h2 {
	text-align: center;
	font-size: xx-large;
	font-family: 'Cafe24Ssurround', sans-serif;
}

table {
	border-collapse: collapse;
	width: 985px;
	font-size: 16px;
	text-align: center;
	 
}

thead {
	text-align: center;
	font-weight: bold;
	font-size: x-large;
	font-family: 'Cafe24Ssurround', sans-serif;
}

tbody {
	font-size: 15px;
	font-family: 'SUITE-Regular', sans-serif;
	
}

td {
	padding: 15px 0px;
	border-bottom: 2px solid rgb(197, 194, 194);
	
}

#rbtn {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 8px 24px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 15px;
	transition: background-color 0.3s, transform 0.3s;
	font-family: 'SUITE-Regular', sans-serif;
}

#rbtn:hover {
	background-color: #45a049;
	transform: scale(1.05);
}

#rbtn:active {
	background-color: #3e8e41;
	transform: scale(1);
}
</style>
<body>
	<header>
		<div class="login box">
			<a href="login"><span> 로그인 </span></a>
		</div>
		<div class="join box">
			<a href="#"><span> 회원가입 </span></a>
		</div>
	</header>

	<nav>
		<div class="logo">
			<a href="main"><span><img
					src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
		</div>
		<div class="menu">
			<ul>
				<li><a href="main"> HOME </a></li>
				<li><a href="#"> 브랜드 소개 </a>
					<ul class="submenu">
						<li><a href="#"> 브랜드 소개 </a></li>
					</ul></li>
				<li><a href="#"> 메뉴 주문하기 </a>
					<ul class="submenu">
						<li><a href="#"> 인기 메뉴 </a></li>
						<li><a href="#"> 대표 메뉴 </a></li>
						<li><a href="#"> 치킨 메뉴 </a></li>
						<li><a href="#"> 사이드 / 음료 </a></li>
						<li><a href="#"> 세트 메뉴 </a></li>
					</ul></li>
				<li><a href="#"> 고객센터 </a>
					<ul class="submenu">
						<li><a href="#"> 1:1 문의 </a></li>
						<li><a href="#"> FAQ </a></li>
					</ul></li>
				<li><a href="mypage"> 마이 페이지 </a>
					<ul class="submenu">
						<li><a href="mypage"> 주문 내역 </a></li>
						<li><a href="mypage"> 찜목록 </a></li>
						<li><a href="mypage"> 나의 리뷰 </a></li>
						<li><a href="mypage"> 내 정보관리 </a></li>
					</ul></li>
			</ul>
		</div>
	</nav>

	<div id="box">
		<br>
		<h2>${username}님의 주문내역</h2>
		<br>
		<br>
		<div id="orderlist" class="content">
			<table class='order__list'>
				<thead>
					<tr>
						<td>주문번호</td>
						<td>메뉴사진</td>
						<td>주문상태</td>
						<td>리뷰</td>
					</tr>
				</thead>

				<tbody>
					<!-- 내일 학원가서 데이터 넣어보기 -->
					<c:forEach items="${plist}" var="pp">
						<tr>
							<td>${pp.pm_no}</td>
							<td>${pp.pm_id}</td>
							<td>${pp.pm_id}</td>
							<td>
								<form action="write" method="get">
									<input type="hidden" name="m_num" value="${mlvo.m_num}">
									<button type="submit" id="rbtn">리뷰쓰기</button>
								</form>
							</td>
						</tr>
					</c:forEach>


				</tbody>
			</table>
		</div>

	</div>


</body>
</html>