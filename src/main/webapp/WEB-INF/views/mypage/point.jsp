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
h2 {
	text-align: center;
	font-size: 40px;
	font-family: 'Cafe24Ssurround', sans-serif;
}
hr {
	width: 500px;
	border: 3px solid grey;
	margin-left :370px;
}
h3{
	text-align: center;
	font-family: 'SUITE-Regular', sans-serif;
}
h1{
	text-align: center;
	font-size :20px;
	font-family: 'SUITE-Regular', sans-serif;
}
#pointbox{
	float :left;
	width:505px;
	height:120px;
	margin-left:360px;
	/* border: 1px solid black; */
}
#menu{
	width:210px;
	height:60px;
	margin-top:10px;
	margin-left:-25px;
	font-family: 'SUITE-Regular', sans-serif;
	/* border: 1px solid black;  */
}
#plus{
	width:140px;
	height:60px;
	margin-left:350px;
	margin-top :-35px;
	/* border: 1px solid black; */
}
#date{
	width:210px;
	height:30px;
	margin-left:30px;
	margin-top :-30px;
	font-family: 'SUITE-Regular', sans-serif;
	/* border: 1px solid black; */
}
p{
	font-size:20px;
	font-family: 'SUITE-Regular', sans-serif;
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
	
	<br>
	<br>
	<br>
	<br>
	<h2>${username}님의 포인트</h2>
	<hr>
	<br>
	<h1>누적 포인트 : point</h1>
	<br>
	<div id="pointbox">
		<div id="menu">	<h3>간장치킨</h3></div>
		<div id="plus">	<h3>+1170p</h3></div>
		<div id="date">	<p>2024-06-24</p></div>
	
	</div>
	<br>
	<br>
	
</body>
</html>