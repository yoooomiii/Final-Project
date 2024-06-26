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

h2 {
	text-align: center;
	font-size: xx-large;
	font-family: 'Cafe24Ssurround', sans-serif;
}

hr {
	width: 500px;
	border: 3px solid grey;
}

#reviewcard {
	float: left;
	width: 900px;
	height: 250px;
	margin-top: 20px;
	margin-left: 150px;
	border: 4px solid skyblue;
	border-radius: 30px;
	font-family: 'SUITE-Regular', sans-serif;
}

#photo {
	float: left;
	width: 350px;
	height: 230px;
	margin-left: 22px;
	margin-top: 10px;
	/*  border: 1px solid blue;  */
}

#content {
	float: left;
	width: 480px;
	height: 230px;
	margin-left: 35px;
	margin-top: 10px;
	font-size: x-large;
	font-weight: normal;
	font-family: 'SUITE-Regular', sans-serif;

	/*  border: 1px solid red;  */
}

.image-container {
	display: flex;
	gap: 30px; /* 이미지 간의 간격 설정 */
	justify-content: center; /* 이미지를 가운데 정렬 */
	align-items: center; /* 이미지가 가운데 정렬되도록 설정 */
}

.image-container img {
	height: 200px; /* 원하는 높이로 설정 */
	width: auto;
}

#num {
	float: left;
	width: 150px;
	height: 30px;
	font-size: 22px;
	margin-top:5px;
	font-family: 'SUITE-Regular', sans-serif;
	/* border: 1px solid black;  */
}

#star {
	float: left;
	width: 190px;
	height: 40px;
	font-size: 22px;
	margin-left: 130px;
	/*  border: 1px solid black; */
}

#menuname {
	float: left;
	width: 300px;
	height: 40px;
	margin-top: 15px;
	font-size: 24px;
	font-family: 'SUITE-Regular', sans-serif;
/* 	 border: 1px solid black;  */
}

#review {
	float: left;
	width: 480px;
	height: 120px;
	font-size: 24px;
	margin-top: 15px;
	font-family: 'SUITE-Regular', sans-serif;
	/*  border: 1px solid black;  */
}

.star-rating {
	display: inline-block;
	padding: 0;
	margin: 0;
}

.star-rating label.star {
	font-size: 1.4em; /* 별의 크기를 조정 */
	color: #ddd;
	cursor: pointer;
}

.star-rating label.star.checked {
	color: gold;
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
	<h2>${username}님의 리뷰</h2>
	<c:forEach items="${review}" var="review">
	
		<div id="reviewcard">
			<div id="photo">
				<div class="image-container">
					<c:forEach items="${photolist}" var="photo">
						<c:if
							test="${review.re_num == photo.re_num && not empty photo.filename}">
							<img
								src="${pageContext.request.contextPath}/downloads?filename=${photo.filename}"
								alt="Review Photo" width="200" height="200">
						</c:if>
					</c:forEach>
				</div>
			</div>
			<div id="content">
				<div id="num">${review.re_num}번</div>
				<div id="star">
					<div class="star-rating">
						<c:forEach var="star" begin="1" end="5">
							<label for="rate${star}"
								class="star ${review.re_star >= star ? 'checked' : ''}">★</label>
						</c:forEach>
					</div>
				</div>
				<div id="menuname">
					<c:forEach items="${mmm}" var="mmm">
						<c:if test="${mmm.m_num == review.re_no}">
							${mmm.m_name}
						</c:if>
					</c:forEach>
				</div>
				<div id="review">${review.re_ex}</div>
			</div>
		</div>
		
	</c:forEach>




</body>
</html>