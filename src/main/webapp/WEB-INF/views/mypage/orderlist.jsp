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
</script>
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
	height: 1040px;
	margin-left: 135px;
	margin-top: 40px;
	margin-bottom: 100px;
	border: 7px solid rgb(240, 240, 95);
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

.page-container {
	text-align: center;
	margin-top: 20px;
}

.page-container a {
	margin: 0 5px;
	text-decoration: none;
	font-size: 20px;
	font-family: 'SUITE-Regular', sans-serif;
	color: black;
	font-family: 'SUITE-Regular', sans-serif;
}

.page-container a.current {
	font-weight: bold;
	text-decoration: underline;
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
	<div id="box">
		<br>
		<h2>${username}님의주문내역</h2>
		<br> <br>
		<div id="orderlist" class="content">
			<table class='order__list'>
				<thead>
					<tr>
						<td>결제 번호</td>
						<td>메뉴 이름</td>
						<td>주문 상태</td>
						<td>리뷰</td>
					</tr>
				</thead>

				<tbody>
					<!-- 내일 학원가서 데이터 넣어보기 -->
					<c:forEach items="${mlist}" var="mm">
						<tr>
							<td>${mm.m_num}</td>
							<td>${mm.m_name}</td>
							<td>${mm.m_state}</td>
							<td>
								<form action="write" method="get">
									<input type="hidden" name="m_num" value="${mm.m_num}">
									<input type="hidden" name="m_name" value="${mm.m_name}">
									<button type="submit" id="rbtn" onsubmit="pickcheck"
										name="chkpick">리뷰쓰기</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
			<div class="page-container">
				<tr>
					<td colspan=4 align=center><c:if test="${pagevo.prev }">
							<a href="mylist?page=${pagevo.startPage -1 }">[이전페이지그룹]</a>
						</c:if> <c:forEach begin="${pagevo.startPage }" end="${pagevo.endPage }"
							var="idx">
							<a href="mylist?page=${idx}"> <c:if
									test="${idx == pagevo.page }">[</c:if> ${idx } <c:if
									test="${idx == pagevo.page }">]</c:if>
							</a>
						</c:forEach> <c:if test="${pagevo.next }">
							<a href="mylist?page=${pagevo.endPage +1 }">[다음페이지그룹]</a>
						</c:if></td>
				</tr>
			</div>
			<br> <br> <br>
		</div>
	</div>
	<footer>
		<div class="footer-box">
			<div class="footer-logo">
				<a href="./"><img src="${path}/resources/img/footer_logo_s1.png"
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