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
<link href="${path}/resources/css/menubar.css" rel="stylesheet" />
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
	height: 200px;
	margin-top: 20px;
	margin-left: 190px;
	border: 4px solid grey;
	border-radius: 30px;
	font-family: 'SUITE-Regular', sans-serif;
}

#photo {
	float: left;
	width: 330px;
	height: auto;
	margin-left: 22px;
	margin-top: -12px;
	/*   border: 1px solid blue;     */
}

#content {
	float: left;
	width: 480px;
	height: 190px;
	margin-left: 35px;
	font-size: x-large;
	font-weight: normal;
	font-family: 'SUITE-Regular', sans-serif;

	/*  border: 1px solid red;    */
}

.image-container {
	width: 150px;
	height: 150px;
	overflow: hidden;
	border-radius: 8px;
	display: inline-block;
	margin-left: 10px;
	margin-top: 30px;
}

.image-container img {
	height: 150px; /* 원하는 높이로 설정 */
	width: 150px;
	object-fit: cover;
}

#num {
	float: left;
	width: 60px;
	height: 30px;
	font-size: 22px;
	margin-top: 5px;
	color: rgb(4, 178, 247);
	font-family: 'SUITE-Regular', sans-serif;
	 /*  border: 1px solid black;    */
}

#star {
	float: left;
	width: 190px;
	height: 40px;
	margin-left:300px;
	margin-top:-40px;
	font-size: 22px;
	/*   border: 1px solid black;   */
}

#menuname {
	float: left;
	width: 500px;
	height: 40px;
	margin-top: 5px;
	font-size: 24px;
	font-weight: bold;
	font-family: 'SUITE-Regular', sans-serif;
	/*  border: 1px solid black;     */
}
#user{
	width:110px;
	height:40px;
	margin-left:50px;
	margin-top:10px;
	/*  border: 1px solid blue;   */
	
}

#review {
	float: left;
	width: 480px;
	height: 100px;
	font-size: 22px;
	font-weight: bold;
	color: grey;
	font-family: 'SUITE-Regular', sans-serif;
	/*   border: 1px solid black;    */
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
					src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
		</div>
		<div class="menu">
			<ul>
				<li><a href="./"> HOME </a></li>
				<li><a href="brand"> 브랜드 소개 </a>
					<ul class="submenu">
						<li><a href="brand"> 브랜드 소개 </a></li>
					</ul></li>
				<li>
                        <a href="menuForm"> 메뉴 주문하기 </a>
                        <ul class="submenu">
                            <li>
                                <a href="menuForm"> 인기 메뉴 </a>
                            </li>
                            <li>
                                <a href="menuForm"> 대표 메뉴 </a>
                            </li>
                            <li>
                                <a href="menuForm"> 전체 메뉴 </a>
                            </li>
                            <li>
                                <a href="menuForm"> 사이드 / 음료 </a>
                            </li>
                            <li>
                            
                            </li>
                        </ul>
                    </li>
				<li><a href="infomain"> 고객센터 </a>
					<ul class="submenu">
						<li><a href="ask"> 1:1 문의 </a></li>
						<li><a href="paqpage"> FAQ </a></li>
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

	<br>
	<br>
	<br>
	<br>
	<h2>전체 리뷰보기</h2>
	<br>
	<br>
	<c:forEach items="${master_review}" var="review">

		<div id="reviewcard">
			<div id="photo">
				<c:forEach items="${photolist}" var="photo">
					<c:if
						test="${review.re_num == photo.re_num && not empty photo.filename}">
						<div class="image-container">
							<img
								src="${pageContext.request.contextPath}/downloads?filename=${photo.filename}"
								alt="Review Photo">
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div id="content">
				<div id="num">${review.re_num}번</div>
				<div id="user">${review.re_id}</div>
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
							<${mmm.m_name}>
						</c:if>
					</c:forEach>
				</div>
				<div id="review">${review.re_ex}</div>
			</div>
		</div>

	</c:forEach>




</body>
</html>