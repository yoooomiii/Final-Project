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
					<li><a href="#"> 마이 페이지 </a>
						<ul class="submenu">
							<li><a href="#"> 주문 내역 </a></li>
							<li><a href="#"> 찜목록 </a></li>
							<li><a href="#"> 나의 리뷰 </a></li>
							<li><a href="#"> 내 정보관리 </a></li>
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
				<table border=1 id="infotable">
					<thead>
						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>처리여부</td>
							<td>등록일</td>
							<td>답변일</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${allListitems}" var="askvo">
							<c:if test="${askvo.a_id == null}">
								<tr>문의 하신 내역이 없습니다.</tr>
							</c:if>
							<c:if test="${askvo.a_id != null}">
								<tr>
									<td><a href="detailView?a_num=${askvo.a_num}">${askvo.a_num}</a></td>
									<td>${askvo.a_title}</td>
									<td>${askvo.a_checkVal}</td>
									<td>${askvo.a_date}</td>
									<td></td>
								</tr>
							</c:if>
						</c:forEach>
						<%-- <c:if test="${membervo.master==1}">
									<tr class="minfo_row">
										<td>${membervo.id }</td>
										<td>${membervo.name }</td>
										<td>${membervo.phone }</td>
										<td>${membervo.email }</td>
										<td>${membervo.address }</td>
										<td style="color: red;">관리자</td>
										<td><a href="adminMUpform?id=${membervo.id }"><input
												type="button" value="수정하기" id="mbtn"></a></td>
										<td><input type="checkbox" id="chk" name="chkid"
											value=${membervo.id }></td>
									</tr>
								</c:if>
							</c:forEach> --%>
						<%-- <tr>
							<td colspan=4 align=center><c:if test="${pagevo.prev }">
									<a href="allList?page=${pagevo.startPage -1 }">[이전페이지그룹]</a>
								</c:if> <c:forEach begin="${pagevo.startPage }"
									end="${pagevo.endPage }" var="idx">
									<a href="allList?page=${idx}"> <c:if
											test="${idx == pagevo.page }">[</c:if> ${idx } <c:if
											test="${idx == pagevo.page }">]</c:if>
									</a>
								</c:forEach> <c:if test="${pagevo.next }">
									<a href="allList?page=${pagevo.endPage +1 }">[다음페이지그룹]</a>
								</c:if></td>
						</tr> --%>
					</tbody>
				</table>
			</div>
		</section>

		<footer>
			<div class="footer-box">
				<div class="footer-logo">
					<a href="#"><img src="${path}/resources/img/logo1_ size60.png"
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