<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="${path}/resources/css/main_fixed.css" rel="stylesheet" />
<title>Home</title>
<script type="text/javascript">
	function call_confirm(){
		
		if(confirm("제출하시겠습니까?")){
			alert("정상적으로 제출되었습니다.");
			// frm.submit();
		}else{
			alert("제출실패");
		}
		
	}
</script>

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
			<div class="login box">
				<c:if test="${userid == null }">
					<a href="login"><span> 로그인 </span></a>
				</c:if>
			</div>
			<div class="join box">
				<c:if test="${userid == null }">
					<a href="join"><span> 회원가입 </span></a>
				</c:if>
			</div>
			<div class="logout box">
				<c:if test="${userid != null }">
					<a href="logout"><span> 로그아웃 </span></a>
				</c:if>
			</div>
			<div class="quite box">
				<c:if test="${userid != null }">
					<a href="byebye"><span> 회원탈퇴 </span></a>
				</c:if>
			</div>
		</header>

		<nav>

            <div class="logo">
				<a href="./"><span><img src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
			</div>
			
			<div class="menu">
		 		<ul>

                    <li>

                        <a href="./"> HOME </a>

                    </li>
                    <li>
                        <a href="#"> 브랜드 소개 </a>
                        <ul class="submenu">
                            <li>
                                <a href="#"> 브랜드 소개 </a>
                            </li>
                        </ul>
                    </li>
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
                    <li>
                        <a href="infomain"> 고객센터 </a>
                        <ul class="submenu">
                            <li>
                                <a href="ask"> 1:1 문의 </a>
                            </li>
                            <li>
                                <a href="#"> FAQ </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="mypage"> 마이 페이지 </a>
                        <ul class="submenu">
                            <li>
                                <a href="mypage"> 주문 내역 </a>
                            </li>
                            <li>
                                <a href="mypage"> 찜목록 </a>
                            </li>
                            <li>
                                <a href="mypage"> 나의 리뷰 </a>
                            </li>
                            <li>
                                <a href="mypage"> 내 정보관리 </a>
                            </li>
                        </ul>
                    </li>
                </ul> 

					<!-- <li><a href="#"> HOME </a></li>
					<li><a href="#"> 브랜드 소개 </a>
						<ul class="submenu">
							<li><a href="#"> 브랜드 소개 </a></li>
						</ul></li>_
					<li><a href="#"> 메뉴 주문하기</a>
						<ul class="submenu">
							<li><a href="#"> 인기 메뉴 </a></li>
							<li><a href="#"> 대표 메뉴 </a></li>
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
 -->
			</div>
		</nav>
		<aside>
			<div id="silde">
				<div id="carouselExampleInterval" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active" data-bs-interval="1000">
							<img src="./resources/img/화면 캡처 2024-06-27 121409.png" width="1260" , height="150"
								class="d-block w-100" alt="준비중">
						</div>
						<div class="carousel-item" data-bs-interval="1000">
							<img src="./resources/img/화면 캡처 2024-06-27 121753.png" width="1260" , height="150"
								class="d-block w-100" alt="준비중">
						</div>
						<div class="carousel-item" data-bs-interval="1000">
							<img src="./resources/img/화면 캡처 2024-06-27 122740.png" width="1260" , height="150"
								class="d-block w-100" alt="준비중">
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
		<section class="fame-menu">
			<div class="title">인기 메뉴</div>
			<div class="menulist">
				<div class="menu-img">
					<img src="${path}/resources/img/egg.png">
				</div>
				<span><a href="http://localhost:8080/hom/viewDetail?menu_no=18" order> 후라이드 치킨 </a></span>
			</div>
			
			<div class="menulist">
				<div class="menu-img">
					<img src="${path}/resources/img/화면 캡처 2024-06-21 165935.png">
				</div>
				<span><a href="http://localhost:8080/hom/viewDetail?menu_no=31" order> 블랙시그니처 치킨 </a></span>
			</div>
			
			<div class="menulist">
				<div class="menu-img">
					<img src="${path}/resources/img/화면 캡처 2024-06-27 144811.png">
				</div>
				<span><a href="http://localhost:8080/hom/viewDetail?menu_no=1007" order> 마라바사삭 치킨 </a></span>
			</div>
			
			<div class="menulist">
				<div class="menu-img">
					<img src="${path}/resources/img/egg06.png">
				</div>
				<span><a href="http://localhost:8080/hom/viewDetail?menu_no=21" order> 크리미언 치킨 </a></span>
			</div>
			
		</section>
		<section class="main-banner">
			<div class="banner notice">
				<a href="#"> 공지사항 / 안내 </a>
			</div>
			<div class="banner event">
				<a href="#"> 이벤트 </a>
			</div>
		</section>
		<footer>

            <div class="footer-box">
                <div class="footer-logo">
                    <a href="main"><img src="${path}/resources/img/footer_logo_s1.png" alt=""></a>
                </div>
                <div class="footer-con">
                    <div class="con-text"><span> 상호명 : Golden Egg Chicken (골든에그) </span></div>
                    <div class="con-text"><span> 대표자 : 송유미 </span></div>
                    <div class="con-text"><span> 사업자등록번호 : 112-00-001234 </span></div>
                    <div class="con-text"><span> 대표번호 : 031-500-1234 </span></div>
                    <div class="con-text"><span> 주소 : 경기도 수원시 중부대로 500 (인계동) </span></div>
                    <div class="con-text"><span> 이메일 : goldenEgg @ gmail.com </span></div>
                    <div class="con-text"><span> COPYRIGHT © 2024 IDUS KOREA. ALL RIGHTS RESERVED. </span></div>
                </div>
                <div class="sns">
                    <span><a href="#"><img src="${path}/resources/img/instahram_icon.jpg" alt=""></a></span>
                    <span><a href="#"><img src="${path}/resources/img/facebook_icon.jpg" alt=""></a></span>
                    <span><a href="#"><img src="${path}/resources/img/twiter_icon.jpg" alt=""></a></span>
                </div>
            </div>

		</footer>
	</div>
</body>
</html>