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
<link href="${path}/resources/css/menubar.css" rel="stylesheet"/>
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
#line {
	width: 1200px;
	height: 600px;
	border: 4px solid gray;
	margin-left: 20px;
	border-radius: 30px;
	/*  border: 1px solid black; */
}

#mypage {
	float: left;
	width: 1200px;
	height: 30px;
	/* border: 1px solid black;  */
	margin-top: 25px;
	font-size: 26px; 
	font-family: 'SUITE-Regular', sans-serif;
	
}
.username {
	font-family: 'Cafe24Ssurround', sans-serif;
	font-size :30px;
}

#modbutton {
	padding-left: 40px;
	padding-right: 40px;
	padding-top: 5px;
	padding-bottom: 5px;
	text-align: center;
	font-size: large;
	margin-top: 5px;
}

#profile {
	float: left;
	width: 1100px;
	height: 240px;
	margin-left: 40px;
	margin-top: 40px;
	/* border: 1px solid red; */
}

#photo {
	float: left;
	width: 240px;
	height: 240px;
	margin-left: 110px;
	border-radius: 50%; /* 원형으로 만들기 위해 50%로 변경 */
	border: 5px solid grey;
	overflow: hidden; /* 자식 요소가 부모 요소를 넘지 않도록 하기 위해 */
}

#photo .profile-img {
	width: 100%;
	height: 100%;
	object-fit: cover; /* 이미지가 컨테이너에 맞게 조정되도록 */
}

#info {
	float: left;
	width: 400px;
	height: 200px;
	margin-left: 250px;
	margin-top: 20px;
	/* border: 1px solid black; */
}

#icons {
	float: left;
	width: 1100px;
	height: 150px;
	margin-top: 25px;
	margin-left: 100px;
	/* border: 1px solid blue; */
}

.iconimg {
	float: left;
	margin-left: 150px;
	margin-top: 20px;
}
.iconimg:hover {
	transform: scale(1.05);
}
.iconimg:active {
	transform: scale(1);
}

footer {
	float: left;
	width: 100%;
	height: 300px;
	margin-top: 40px;
	text-align: center;
	/* border: 1px solid black; */
}

h3 {
	text-align: center;
	font-family: 'SUITE-Regular', sans-serif;
}

#name {
	text-align: center;
	font-size:30px;
	font-family: 'Cafe24Ssurround', sans-serif;
}
h2{
	font-family: 'SUITE-Regular', sans-serif;
	font-size: 22px;
}

table {
	border-collapse: collapse;
	width: 1130px;
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

.container {
	display: flex;
	justify-content: flex-end;
	width: 100%;
	padding: 20px;
}

#mod-button {
	background-color:  #b3c5fd;
	color: black;
	border: none;
	border-radius: 15px;
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	transition: background-color 0.3s ease, transform 0.3s ease;
}

#mod-button:hover {
	background-color:  #b3c5fd;
	transform: scale(1.05);
}

#mod-button:active {
	transform: scale(1);
}
</style>

<body>
	<div id="Box">
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
				<a href="./"><span><img
						src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
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
							<li><a href="popoo"> 인기 메뉴 </a></li>
							<li><a href="#"> 대표 메뉴 </a></li>
							<li><a href="#"> 치킨 메뉴 </a></li>
							<li><a href="#"> 사이드 / 음료 </a></li>
							<li><a href="#"> 세트 메뉴 </a></li>
						</ul></li>
					<li><a href="infomain"> 고객센터 </a>
						<ul class="submenu">
							<li><a href="ask"> 1:1 문의 </a></li>
							<li><a href="faqpage"> FAQ </a></li>
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
		<div id="line">
			<div id="mypage">
				<span class="username" id="name">${username}</span>  님의 마이페이지입니다
			</div>


			<div id="profile">
				<div id="photo">
					<img
						src="${pageContext.request.contextPath}/resources/img/기본 프로필.png"
						class="profile-img">
				</div>
				
				<div id="info">
					<h2>아이디 : ${userid}</h2>
					<br>
					<h2>이메일 : ${useremail}</h2>
					<br>
					<h2>최근 주소 : ${useraddress}</h2>
					<br>
					<form action="mod" method="get">
						<button type="submit" id="mod-button">나의 정보 수정</button>
					</form>
				</div>
			</div>

			<div id="icons">
				<div class="iconimg">
					<a href="${pageContext.request.contextPath}/mylist"> <img
						src="${pageContext.request.contextPath}/resources/img/주문내역 최최종.png"
						width="140" height="140">
					</a>
					<h3>주문내역</h3>
				</div>
				<div class="iconimg">
					<a href="${pageContext.request.contextPath}/picklist"> <img
						src="${pageContext.request.contextPath}/resources/img/찜목록 최종.png"
						width="140" height="140">
					</a>
					<h3>찜목록</h3>

				</div>
				<div class="iconimg">
					<a href="${pageContext.request.contextPath}/allreview"> <img
						src="${pageContext.request.contextPath}/resources/img/리뷰 최최최종.png"
						width="140" height="140">
					</a>
					<h3>리뷰</h3>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>

		<footer>
			<div class="footer-box">
				<div class="footer-logo">
					<a href="#"><img src="${path}/resources/img/logo1_ size60.png"
						alt=""></a>
				</div>
				<div class="footer-con">
					<div class="con-text">
						<span> 상호명 : Golden Egg chicken (골든에그) </span>
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
							src="${path}/resources/img/instahram_icon.jpg" alt=""></a></span> <span><a
						href="#"><img src="${path}/resources/img/facebook_icon.jpg"
							alt=""></a></span> <span><a href="#"><img
							src="${path}/resources/img/twiter_icon.jpg" alt=""></a></span>
				</div>
			</div>
		</footer>
</body>
</html>