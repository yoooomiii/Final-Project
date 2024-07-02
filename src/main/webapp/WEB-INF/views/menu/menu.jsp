<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <c:set var="path" value="${pageContext.request.contextPath}" />
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 보기</title>
<link href="./resources/css/menu.css" rel="stylesheet"/>
<link href="${path}/resources/css/menubar.css" rel="stylesheet"/>
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
body{
	font-family: 'SUITE-Regular';
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
				<a href="./"><span><img src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
			</div>
			<div class="menu">
				<ul>
                    <li>
                        <a href="./"> HOME </a>
                    </li>
                    <li>
                        <a href="brand"> 브랜드 소개 </a>
                        <ul class="submenu">
                            <li>
                                <a href="brand"> 브랜드 소개 </a>
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
                                <a href="faqpage"> FAQ </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="mypage"> 마이 페이지 </a>
                        <ul class="submenu">
                            <li>
                                <a href="mylist"> 주문 내역 </a>
                            </li>
                            <li>
                                <a href="picklist"> 찜목록 </a>
                            </li>
                            <li>
                                <a href="allreview"> 나의 리뷰 </a>
                            </li>
                            <li>
                                <a href="mypage"> 내 정보관리 </a>
                            </li>
                        </ul>
                    </li>
                </ul>
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
		<section id="foodList">
            <br>
            <div class="popoo">
            <br>
            <br>
            	<h1>인기 메뉴</h1>
            <div class="list">
                <img src="./resources/img/egg.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>후라이드 치킨</b></h3>
                <h5>바삭한 튀김옷으로 무장한 치킨</h5>
                <br>
                <a href="viewDetail?menu_no=18"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-21 165935.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>블랙시그니처 치킨</b></h3>
                <h5>지금까지 이런 맛은 없었다 이맛은 차원이 다르다</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=31"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 144811.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>마라바사삭 치킨</b></h3>
                <h5>마라와 치킨의 콜라보</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1007"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg06.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>크리미언 치킨</b></h3>
                <h5>꾸덕꾸덕한 순살 치킨</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=21"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg08.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>통닭 치킨</b></h3>
                <h5>추억의 치킨</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=22"><input type="submit" value="상세보기" class="t"></a>
            </div>
            </div>
            <div class="qoq">
            <br>
            <br>
            <br>
            <br>
            <h1>대표 메뉴</h1>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 144542.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>인절미 치킨</b></h3>
                <h5>누구나 좋아하는 그맛!</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1006"><input type="submit" value="상세보기" class="t"></a>
            </div>
           	<div class="list">
                <img src="./resources/img/땅땅치킨-메뉴-추천-후왕.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>땅콩 치킨</b></h3>
                <h5>땅콩과 치킨의 만남 그결과는?</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=29"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg06.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>크리미언 치킨</b></h3>
                <h5>꾸덕꾸덕한 순살 치킨</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=21"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 144301.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>닭발</b></h3>
                <h5>닭발도 치킨이다!</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1005"><input type="submit" value="상세보기" class="t"></a>
            </div>
            </div>
            <div class="opp">
            <h1>전체 메뉴</h1>
            <div class="list">
                <img src="./resources/img/egg.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>후라이드 치킨</b></h3>
                <h5>바삭한 튀김옷으로 무장한 치킨</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=18"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg03.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>양념 치킨</b></h3>
                <h5>모두가 좋아하는 양념치킨</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=19"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg02.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>고추 치킨</b></h3>
                <h5>불타는 금요일 화끈하게</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=25"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg04.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>치즈마요 치킨</b></h3>
                <h5>치킨과 치즈의 만남</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=24"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg05.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>간장 치킨</b></h3>
                <h5>간장으로 목욕한 치킨</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=20"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg06.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>크리미언 치킨</b></h3>
                <h5>꾸덕꾸덕한 순살 치킨</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=21"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg08.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>통닭 치킨</b></h3>
                <h5>추억의 치킨</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=22"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/egg07.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>마늘 치킨</b></h3>
                <h5>한국인의 맛 마늘 치킨</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=23"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/땅땅치킨-메뉴-추천-후왕.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>땅콩 치킨</b></h3>
                <h5>땅콩과 치킨의 만남 그결과는?</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=29"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-21 165556.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>치킨 케이크</b></h3>
                <h5>이제는 케이크도 치킨으로 만나보아요</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=30"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-21 165935.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>블랙 시그니처 치킨</b></h3>
                <h5>지금까지 이런맛은 없었다 이맛은 차원이 다르다</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=31"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 144301.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>닭발</b></h3>
                <h5>닭발도 치킨이다!</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1005"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 144542.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>인절미 치킨</b></h3>
                <h5>누구나 좋아하는 그맛!</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1006"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 144811.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>마라바사삭 치킨</b></h3>
                <h5>마라와 치킨의 콜라보</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1007"><input type="submit" value="상세보기" class="t"></a>
            </div>
            </div>
            <div class="pop">
            <h1>사이드 / 음료</h1>
            <div class="list">
                <img src="./resources/img/side01.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>콜라</b></h3>
                <h5>코카콜라</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=26"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/side02.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>사이다</b></h3>
                <h5>칠성사이다</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=27"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/side03.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>치킨무</b></h3>
                <h5>느끼하지 않게</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=28"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-24 095304.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>샐러드</b></h3>
                <h5>건강하게 치킨을 잡솨봐요</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=32"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 144052.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>이스터에그타르트</b></h3>
                <h5>시그니처 메뉴</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1004"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 143826.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>떡볶이</b></h3>
                <h5>떡볶이 출시! 치킨과의 조화로운 맛!</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1003"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 143603.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>치즈볼</b></h3>
                <h5>겉바속촉!</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1002"><input type="submit" value="상세보기" class="t"></a>
            </div>
            <div class="list">
                <img src="./resources/img/화면 캡처 2024-06-27 143353.png" width="298" , height="250" class="e">
                <br>
                <br>
                <h3><b>소떡소떡</b></h3>
                <h5>실망할수 없는 맛!</h5>
                <br>
                <a href="http://localhost:8080/hom/viewDetail?menu_no=1001"><input type="submit" value="상세보기" class="t"></a>
            </div>
            </div>
        </section>
        <!-- <section class="main-banner">
			<div class="banner notice">
				<a href="#"> 공지사항 / 안내 </a>
			</div>
			<div class="banner event">
				<a href="#"> 이벤트 </a>
			</div>
		</section> -->
		<footer>
            <div class="footer-box">
                <div class="footer-logo">
                    <a href="./"><img src="${path}/resources/img/footer_logo_s1.png" alt=""></a>
                </div>
                <div class="footer-con">
                    <div class="con-text"><span> 상호명 : Golden Egg chicken (골든에그) </span></div>
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