<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메뉴 고르기</title>
<link rel="stylesheet" href="./gold.css">
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
body {
	margin: 0px;
}

#Box {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 1260px; /*가로 넓이*/
	height: 4000px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
}

header {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 1260px; /*가로 넓이*/
	height: 100px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	/* background-color: rgb(222, 252, 213) */
}

nav {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 1260px; /*가로 넓이*/
	height: 50px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	/* background-color: rgb(208, 249, 252) */
}

aside {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 1260px; /*가로 넓이*/
	height: 150px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	/* background-color: rgb(101, 206, 145) */
}

#bar {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 1260px; /*가로 넓이*/
	height: 150px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	/* background-color: rgb(204, 159, 224) */
}

section {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 1260px; /*가로 넓이*/
	height: 3500px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	/* background-color: rgb(192, 240, 188) */
}

footer {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 1260px; /*가로 넓이*/
	height: 140px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	margin-top: 20px;
	/* background-color: rgb(97, 128, 212) */
}

.manuList {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 340px; /*가로 넓이*/
	height: 300px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	margin-top: 80px;
	margin-left: 55px;
	/* background-color: rgb(234, 247, 52) */
}

.but {
	float: left;
	border: 2px solid black; /*틀 선 굵기와 종류 색상*/
	width: 135px; /*가로 넓이*/
	height: 50px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	margin-left: 100px;
	padding-top: 10px;
	/* background-color: rgb(234, 247, 52) */
}

.logo {
	float: left;
	border: 2px solid black;
	width: 300px; /*가로 넓이*/
	height: 100px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	/* background-color: rgb(163, 221, 54) */
}

.login {
	float: left;
	border: 2px solid black;
	width: 300px; /*가로 넓이*/
	height: 100px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	margin-left: 340px;
	/* background-color: rgb(240, 71, 41) */
}

.user {
	float: left;
	border: 2px solid black;
	width: 300px; /*가로 넓이*/
	height: 100px; /*세로 높이*/
	text-align: center; /*중앙 정렬*/
	/* background-color: rgb(62, 173, 131) */
}

span {
	font-size: 20px;
}

span:hover {
	color: rgb(252, 3, 3);
}
</style>
<!--시멘틱 태그 div id ="header" 라는 태그랑
    비슷하지만 header 자체의 의미를 갖고 있다.
    시멘틱 태그의 종류는
    header : 홈페이지의 이름 또는 정보
    nav : 홈페이지의 메뉴를 구성하는 영역
    secion : 홈페이지의 주요 내용
    aside : 홈페이지의 사이드 내용 . 광고 같은 것
    footer : 홈페이지의 개발정보, 업체 정보 등
    시멘틱 태그를 사용하지 않고 div 로 해도 된다.
    시멘틱 태그를 사용하면 검색엔진에서 검색시
    시멘틱 태그로 분석하기 때문에 노출이 용이하다-->
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
				<img src="/Gold.html/img/image.png" width="340" , height="250">
				<span><b><a href="gold01.html" order>후라이드 치킨</a></b></span>
			</div>
			<div class="manuList">
				<img src="/Gold.html/img/egg02.png" width="340" , height="250">
				<span><b><a href="gold01.html" order>고 추 치킨</a></b></span>
			</div>
			<div class="manuList">
				<img src="/Gold.html/img/egg03.png" width="340" , height="250">
				<span><b><a href="gold01.html" order>양념 치킨</a></b></span>
			</div>
			<div class="manuList">
				<img src="/Gold.html/img/egg04.png" width="340" , height="250">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
			<div class="manuList">
				<span><b><a href="gold01.html" order>치킨이름</a></b></span>
			</div>
		</section>
		<footer>
			<span><b>회사 정보, 지도, 전화번호, 등등</b></span>
		</footer>
	</div>
</body>
</html>