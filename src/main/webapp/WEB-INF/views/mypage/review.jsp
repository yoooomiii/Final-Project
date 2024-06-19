<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
#box {
	float: left;
	width: 800px;
	height: 700px;
	margin-left: 230px;
	margin-top: 130px;
	border: 5px solid gray;
	border-radius: 15px;
}

#myform fieldset {
	display: inline-block;
	direction: rtl;
	border: 0;
}

#myform fieldset legend {
	text-align: right;
}

#myform input[type=radio] {
	display: none;
}

#myform label {
	font-size: 3em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}

#myform label:hover {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform label:hover ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#reviewContents {
	width: 100%;
	height: 350px;
	padding: 10px;
	box-sizing: border-box;
	border: solid 5px #bceefa;
	border-radius: 15px;
	font-size: 16px;
	resize: none;
}

h2 {
	font-family: 'Cafe24Ssurround';
	font-weight: border;
}

#files {
	display: flex;
	justify-content: center;
	gap: 30px; /* 간격 조정 */
	margin-left: 20px;
}

#btn {
	margin-top: 45px;
	width: 100px; /* 너비 설정 */
	height: 40px; /* 높이 설정 */
	border-radius: 20px;
	background-color: skyblue;
	border: 3px solid skyblue;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
	cursor: pointer;
}

#butt {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}
</style>

<body>
	<div id="Box">
		<header>
			<div class="login box">
				<a href="#"><span> 로그인 </span></a>
			</div>
			<div class="join box">
				<a href="#"><span> 회원가입 </span></a>
			</div>
		</header>

		<nav>
			<div class="logo">
				<a href="#"><span><img
						src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
			</div>
			<div class="menu">
				<ul>
					<li><a href="#"> HOME </a></li>
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
		<aside>


			<div id="box">
				<form class="mb-3" name="myform" action="rwrite" id="myform" method="post" >
					<fieldset>
						<h2>리뷰 등록하기</h2>
						<input type="hidden" name="re_id" value="id">
						<input type="hidden" name="number" value="1">
						<span class="text-bold">별점을 선택해주세요</span> 
						<input type="radio"	name="re_star" value="5" id="rate1 "><label for="rate1">★</label>
						<input type="radio" name="re_star" value="4" id="rate2"><label for="rate2">★</label> 
						<input type="radio" name="re_star" value="3" id="rate3"><label for="rate3">★</label> 
						<input type="radio" name="re_star" value="2" id="rate4"><label for="rate4">★</label> 
						<input type="radio" name="re_star" value="1" id="rate5"><label for="rate5">★</label>
					</fieldset>
					<div>
						<textarea class="col-auto form-control" type="text"
							id="reviewContents" name="re_ex"
							placeholder="리뷰를 입력해주세요"></textarea>
					</div>
				
				<div id="files">
				 <input type="file" name="re_file">
				</div>
				<div id="butt">
				<button id="btn">등록</button>
				</div>
				</form>
			</div>
</body>
</html>