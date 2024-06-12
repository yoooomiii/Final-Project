<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴선택</title>
<link rel="stylesheet" href="./resources/css/menuPick.css">
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
<body>
	<div id="Box">
		<header>
			<div class="logo">
				<span><b>로고</b></span>
			</div>
			<div class="login">
				<span><b>로그인</b></span>
			</div>
			<div class="user">
				<span><b>회원가입</b></span>
			</div>
		</header>
		<nav>
			<div class="but">
				<span><b>홈으로</b></span>
			</div>
			<div class="but">
				<span><b>브랜드소개</b></span>
			</div>
			<div class="but">
				<span><b>메뉴 주문하기</b></span>
			</div>
			<div class="but">
				<span><b>고객센터</b></span>
			</div>
			<div class="but">
				<span><b>마이페이지</b></span>
			</div>
		</nav>
		<aside>
			<div id="bar">
				<div id="carouselExampleInterval" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active" data-bs-interval="1000">
							<img src="/Gold.html/img/sing01.png" width="1260" , height="150"
								class="d-block w-100" alt="준비중">
						</div>
						<div class="carousel-item" data-bs-interval="1000">
							<img src="/Gold.html/img/sing02.png" width="1260" , height="150"
								class="d-block w-100" alt="준비중">
						</div>
						<div class="carousel-item" data-bs-interval="1000">
							<img src="..." width="1260" , height="150" class="d-block w-100"
								alt="준비중">
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
		<section>
			<div class="manuList">
				<span><b>음식 정보</b></span> <br>상품 이름 : ${mvo.menu_name } <br>상품
				설명 : ${mvo.menu_ex } <br>상품 가격 : ${mvo.menu_price } <br>음식
				사진
				<c:forEach items="${attackList }" var="fname">
					<img src="download.do?filename=${fname }">
					<a href="download.do?filename=${fname }">${fname }</a>
				</c:forEach>

				<div class="sideList">
					<span><b>사이드 음식 정보</b></span>

				</div>
			</div>
		</section>
		<footer>
			<span><b>회사 정보, 지도, 전화번호, 등등</b></span>
		</footer>
	</div>
</body>
</html>