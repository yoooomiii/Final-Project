<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴선택</title>
<link href="./resources/css/menuPick.css" rel="stylesheet" />
<link href="${path}/resources/css/menubar.css" rel="stylesheet" />
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
<body>
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
	font-weight: 400;
	font-style: normal;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	margin: 0px;
	margin-top: 0px;
}

a {
	text-decoration: none;
	color: inherit;
}

li {
	list-style-type: none;
}

img {
	display: inline;
}

#Box {
	float: left;
	width: 1260px; /*가로 넓이*/
	height: auto; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
}

header {
	width: 1260px; /*가로 넓이*/
	height: 50px; /*세로 높이*/
	padding-right: 100px;
	padding-top: 10px;
	background-color: #e2cf20;
}

header .box {
	font-family: 'Cafe24Ssurround';
	font-size: 16px;
	text-decoration: none;
	background-color: rgb(45, 12, 0);
	border-radius: 15px;
	padding-top: 5px;
	border: 2px solid rgb(40, 10, 0);
}

header a {
	text-decoration: none;
	color: white;
}

header a:hover {
	color: #f3a227;
	text-shadow: 2px 2px 1px rgb(0, 0, 0);
}

.login {
	float: right;
	width: 100px; /*가로 넓이*/
	height: 90%;
	margin-left: 30px;
}

.join {
	float: right;
	width: 100px; /*가로 넓이*/
	height: 90%;
}

.logout {
	float: right;
	width: 100px; /*가로 넓이*/
	height: 90%;
	margin-right: 30px;
}

.quite {
	float: right;
	width: 100px; /*가로 넓이*/
	height: 90%;
	margin-right: 30px;
}

nav {
	position: relative;
	width: 1260px; /*가로 넓이*/
	height: 100px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	/* background-color: rgb(208, 249, 252) */
	padding-top: 10px;
	z-index: 10;
}

.logo {
	float: left;
	width: 150px; /*가로 넓이*/
	height: 80px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
}

.logo img {
	display: inline;
	width: 100px;
	height: 80px;
}

.menu {
	font-family: 'Cafe24Ssurround';
	width: 1000px; /*가로 넓이*/
	height: 50px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	margin-top: 15px;
	padding-top: 20px;
	font-size: 25px;
	margin-left: auto;
}

.menu>ul {
	display: flex;
	justify-content: center;
	align-items: center;
}

.menu>li {
	margin-right: 3px;
}

.menu a {
	text-decoration: none;
	color: rgb(30, 10, 0);
	display: block;
	width: 180px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	outline: 0;
}

.menu a:hover {
	color: #f1b546;
	text-shadow: 0 2px 3px rgb(30, 0, 0);
}

.submenu {
	position: absolute;
	display: none;
	top: 80px;
	height: 200px;
	background: linear-gradient(325deg, rgba(255, 252, 163, 0.8),
		rgba(255, 202, 56, 0.8));
	font-size: 20px;
}

.menu>ul>li:hover .submenu {
	display: block;
	padding: 0 2px;
}

.submenu a {
	display: block;
	width: 180px;
	height: 100%;
	text-align: center;
	line-height: 40px;
}

#foodList {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 1260px; /*가로 넓이*/
	height: 700px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	background-color: rgb(228, 230, 228)
}

aside {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 1260px; /*가로 넓이*/
	height: 154px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	/* background-color: rgb(101, 206, 145) */
}

.title {
	width: 100%;
	height: 35px;
	background-color: #eccd54;
	font-family: 'Cafe24Ssurround';
	font-size: 22px;
	padding-top: 2px;
}

.list {
	float: left;
	border: 0px solid black; /*틀 선 굵기와 종류 색상*/
	border-radius: 30px;
	width: 350px; /*가로 넓이*/
	height: 600px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	margin-top: 50px;
	margin-left: 50px;
	/* background-color: rgb(101, 206, 145) */
}

.list h4 {
	float: right;
	margin-right: 20px;
}

.img {
	float: left;
	border: 0px solid black; /*틀 선 굵기와 종류 색상*/
	border-radius: 20px;
	width: 700px; /*가로 넓이*/
	height: 580px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	margin-left: 80px;
	margin-top: 50px;
	padding-top: 70px;
	background-color: rgb(255, 255, 255)
}

.menulist {
	float: left;
	width: 25%; /*가로 넓이*/
	height: 250px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	margin-top: 50px;
	margin-bottom: 50px;
}

.menulist img {
	width: 240px;
	height: 200px;
	margin: 5px 0;
}

.menulist span {
	font-size: 25px;
	font-weight: bold;
}

.menulist a {
	text-decoration: none;
	font-family: 'SUITE-Regular';
	color: black;
	text-shadow: 0px 1px 1px black;
}

.menulist a:hover {
	text-shadow: 0px 2px 3px black;
	font-size: 27px;
}

.main-banner {
	float: left;
	width: 1260px;
	height: 200px;
	padding-top: 20px;
}

.banner {
	display: inline-block;
	height: 85%;
	background-color: #eccd54;
}

.notice {
	width: 35%;
	margin-right: 20px;
}

.event {
	width: 60%;
}

footer {
	font-family: 'SUITE-Regular';
	font-size: 20px;
	float: left;
	background-color: #180e02;
	width: 1260px; /*가로 넓이*/
	height: 250px; /*세로 높이*/
	margin: 20px 0;
}

.footer-box {
	float: left;
	font-size: medium;
	width: 90%;
	height: 90%;
}

.footer-logo {
	width: 100px;
	height: 40px;
}

.footer-con {
	float: left;
	width: 50%;
	padding-top: 10px;
	margin-left: 10px;
	margin-top: 20px;
}

.con-text {
	color: white;
	text-align: left;
}

.sns {
	float: right;
	width: 40%;
	height: 50px;
	margin-top: 20px;
	margin-right: 50px;
}

.sns img {
	width: 40px;
	height: 40px;
	margin-right: 20px;
}

#kkk {
	border-radius: 10px;
	width: 200px; /*가로 넓이*/
	height: 40px; /*세로 높이*/
	color: white;
	background-color: #f06d4c;
}

.lien {
	border-radius: 50px;
}

#ppp {
	border-radius: 10px;
	width: 40px; /*가로 넓이*/
	height: 40px; /*세로 높이*/
	color: rgb(255, 255, 255);
	background-color: #f89359;
}
</style>
<body>
	<div id="Box">
		<header>
			<c:if test="${userid != null }">
					'${userid }'님 접속을 환영합니다.
			</c:if>
				<c:if test="${userid == null }">
					<div class="login box">
						<a href="login"><span> 로그인 </span></a>
					</div>
				</c:if>
			<c:if test="${userid == null }">
				<div class="join box">
					<a href="join"><span> 회원가입 </span></a>
				</div>
			</c:if>
			<c:if test="${userid != null }">
				<div class="logout box">
					<a href="logout"><span> 로그아웃 </span></a>
				</div>
			</c:if>
			<c:if test="${userid != null }">
				<div class="quite box">
					<a href="byebye"><span> 회원탈퇴 </span></a>
				</div>
			</c:if>
		</header>

		<nav>
			<div class="logo">
				<a href="./"><span><img
						src="./resources/img/logo1_ size60.png" alt=""></span></a>
			</div>
			<div class="menu">
				<ul>
					<li><a href="./"> HOME </a></li>
					<li><a href="brand"> 브랜드 소개 </a>
						<ul class="submenu">
							<li><a href="brand"> 브랜드 소개 </a></li>
						</ul></li>
					<li><a href="menuForm"> 메뉴 주문하기 </a>
						<ul class="submenu">
							<li><a href="menuForm"> 인기 메뉴 </a></li>
							<li><a href="menuForm"> 대표 메뉴 </a></li>
							<li><a href="menuForm"> 전체 메뉴 </a></li>
							<li><a href="menuForm"> 사이드 / 음료 </a></li>
							<li></li>
						</ul></li>
					<li><a href="infomain"> 고객센터 </a>
						<ul class="submenu">
							<li><a href="ask"> 1:1 문의 </a></li>
							<li><a href="faqpage"> FAQ </a></li>
						</ul></li>
					<li><a href="mypage"> 마이 페이지 </a>
						<ul class="submenu">
							<li><a href="mylist"> 주문 내역 </a></li>
							<li><a href="picklist"> 찜목록 </a></li>
							<li><a href="allreview"> 나의 리뷰 </a></li>
							<li><a href="mypage"> 내 정보관리 </a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
		<aside>
			<div id="silde">
				<div id="carouselExampleInterval" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active" data-bs-interval="1000">
							<img src="./resources/img/화면 캡처 2024-06-27 121409.png"
								width="1260" , height="150" class="d-block w-100" alt="준비중">
						</div>
						<div class="carousel-item" data-bs-interval="1000">
							<img src="./resources/img/화면 캡처 2024-06-27 121753.png"
								width="1260" , height="150" class="d-block w-100" alt="준비중">
						</div>
						<div class="carousel-item" data-bs-interval="1000">
							<img src="./resources/img/화면 캡처 2024-06-27 122740.png"
								width="1260" , height="150" class="d-block w-100" alt="준비중">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleInterval" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</aside>
		<hr>
		<section id="foodList">
			<div class="img">
				<c:forEach items="${attackList}" var="fname">
					<img src="download?filename=${fname}" width="500" , height="450"
						class="lien">
				</c:forEach>
			</div>
			<div class="list">
				<br>

				<h2>
					<b>${mvo.menu_name }</b>
				</h2>
				<br>
				<h6>
					<b>${mvo.menu_ex }</b>
				</h6>
				<br>
				<h4>
					<b>${mvo.menu_price }원</b>
				</h4>
				<br>
				<hr>
				<br> <a href="mviewDetail?menu_no=${mvo.menu_no}"><button
						type=submit id="kkk">주문하기</button></a>
				<form action="pickcart_insert" method="post">
					<input type="hidden" name="menu_no" value="${mvo.menu_no}">
					<input type="hidden" name="menu_name" value="${mvo.menu_name}">
					<input type="hidden" name="menu_price" value="${mvo.menu_price}">
					<button type="submit" id="ppp">찜</button>
				</form>

				<br> <br> <br> <img
					src="https://i3.ruliweb.net/ori/22/06/17/18170fbac2d4b2a07.gif"
					width="300" , height="250">
			</div>
		</section>
		<hr>
		<section class="main-banner">
			<div class="banner notice">
				<a href="#"><img alt="" src="${path}./resources/img/공지사항.png"></a>

			</div>
			<div class="banner event">
				<a href="#"><img alt="" src="${path}./resources/img/이벤트 배너.png">
				</a>
			</div>
		</section>
		<footer>

			<div class="footer-box">
				<div class="footer-logo">
					<a href="main"><img
						src="${path}./resources/img/footer_logo_s1.png" alt=""></a>
				</div>
				<div class="footer-con">
					<div class="con-text">
						<span> 상호명 : Golden Egg Chicken (골든에그) </span>
					</div>
					<div class="con-text">
						<span> 대표자 : 송유미 </span>
					</div>
					<div class="con-text">
						<span> 사업자등록번호 : 112-00-001234 </span>
					</div>
					<div class="con-text">
						<span> 대표번호 : 031-500-1234 </span>
					</div>
					<div class="con-text">
						<span> 주소 : 경기도 수원시 중부대로 500 (인계동) </span>
					</div>
					<div class="con-text">
						<span> 이메일 : goldenEgg @ gmail.com </span>
					</div>
					<div class="con-text">
						<span> COPYRIGHT © 2024 IDUS KOREA. ALL RIGHTS RESERVED. </span>
					</div>
				</div>
				<div class="sns">
					<span><a href="#"><img
							src="${path}./resources/img/instahram_icon.jpg" alt=""></a></span> <span><a
						href="#"><img src="${path}./resources/img/facebook_icon.jpg"
							alt=""></a></span> <span><a href="#"><img
							src="${path}./resources/img/twiter_icon.jpg" alt=""></a></span>
				</div>
			</div>

		</footer>
	</div>
</body>
</html>