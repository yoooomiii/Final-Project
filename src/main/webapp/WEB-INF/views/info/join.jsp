<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${path}/resources/css/infoList.css" rel="stylesheet" />
<link href="${path}/resources/css/menubar.css" rel="stylesheet"/>
<title>Info Page</title>
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
				<a href="#"><span><img
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
							<li><a href="menuForm"> 인기 메뉴 </a></li>
							<li><a href="menuForm"> 대표 메뉴 </a></li>
							<li><a href="menuForm"> 전체 메뉴 </a></li>
							<li><a href="menuForm"> 사이드 / 음료 </a></li>
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
		<hr
			style="border: 0px; height: 30px; background: linear-gradient(to left, rgb(230, 217, 15), white, rgb(255, 255, 20))">
		<section>
			<div class="info_form">
				<div class="title">
					<h1>"${userid} 님의 문의 게시판"</h1>
					<hr style="height: 5px; background-color: rgb(24, 0, 0);">
				</div>
				<div class="white-btn">
					<input type="button" value="글쓰기" onclick="location.href=infoList">
				</div>
				<table border=1 id="infotable">
					<thead>
						<tr>
							<td>번호</td>
							<td>아이디</td>
							<td>제목</td>
							<td>내용</td>
							<td>처리여부</td>
							<td>등록일</td>
							<td>번호</td>
							<td>답변</td>
							<td>답변일</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${allListitems}" var="infovo">
							<tr>
								<td>${infovo.askVO.a_num}</a></td>
								<td>${infovo.askVO.a_id}</td>
								<td>${infovo.askVO.a_title}</td>
								<td>${infovo.askVO.a_ex}</td>
								<td>${infovo.askVO.a_checkVal}</td>
								<td>${infovo.askVO.a_date}</td>
								<td>${infovo.answerVO.an_num}</td>
								<td>${infovo.answerVO.an_re}</td>
								<td>${infovo.answerVO.an_date}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>

		<footer>
			<div class="footer-box">
				<div class="footer-logo">
					<a href="./"><img src="${path}/resources/img/logo1_ size60.png"
						alt=""></a>
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
							src="${path}/resources/img/instahram_icon.jpg" alt=""></a></span> <span><a
						href="#"><img src="${path}/resources/img/facebook_icon.jpg"
							alt=""></a></span> <span><a href="#"><img
							src="${path}/resources/img/twiter_icon.jpg" alt=""></a></span>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>