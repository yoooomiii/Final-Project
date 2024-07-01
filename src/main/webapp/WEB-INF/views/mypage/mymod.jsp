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
<script
	src="//t1.daumcdn.net/mapjsapi/bundel/postcode/prod/postcode.v2.js"></script>
</head>

<style>
#boxx {
	float: left;
	border: 5px solid gray; /*틀 선 굵기와 종류 색상*/
	width: 800px; /*가로 넓이*/
	height: 700px; /*세로 높이*/
	text-align: center;
	margin-top: 20px;
	margin-left: 250px;
	border-radius: 20px;
}

#profile {
	float: left;
	width: 800px; /*가로 넓이*/
	height: 280px; /*세로 높이*/
	/* 	border:1px solid blue; */
}

#photo {
    float: left;
    width: 150px;
    height: 150px;
    margin-left: 330px;
    border-radius: 50%; /* 원형으로 만들기 위해 50%로 변경 */
    border: 5px solid grey;
    overflow: hidden; /* 자식 요소가 부모 요소를 넘지 않도록 하기 위해 */
}

#photo .profile-img {
    width: 100%;
    height: 100%;
    object-fit: cover; /* 이미지가 컨테이너에 맞게 조정되도록 */
}

#btn {
	margin-top: 160px;
}

.tx {
	padding-bottom: 10px;
	border: 2.5px solid gray;
	margin-top: 10px;
	item-align: center;
	border-radius: 10px;
}

#savebtn {
	background-color: skyblue;
	border-radius: 15px;
	border: none;
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	transition: background-color 0.3s ease, transform 0.3s ease;
}

#savebtn:hover {
	background-color: skyblue;
}

#savebtn:active {
	transform: scale(0.95);
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

	<div id="boxx">

		<div id="profile">
			<br>
			<h2>회원 정보 수정</h2>
			<br>

			<div id="photo">
				<img
					src="${pageContext.request.contextPath}/resources/img/기본 프로필.png"
					class="profile-img">
			</div>

		</div>

		<div id="ex">
			<form action="msave" method="post">
				<br> 아이디 <input type="text" name="id" class="tx"
					value="${userid}" readonly> <br> <br> 이름 <input
					type="text" name="name" class="tx" value="${username}"> <br>
				<br> 전화번호 <input type="text" name="phone" class="tx"
					value="${userphone}"> <br> <br> 이메일 <input
					type="text" name="email" class="tx" value="${useremail}"> <br>
				<br> 주소 <input type="text" name="address" class="tx"
					value="${useraddress}"> <br> <br> <input
					type="submit" value="저장" id="savebtn">
			</form>
		</div>
	</div>


</body>
</html>
