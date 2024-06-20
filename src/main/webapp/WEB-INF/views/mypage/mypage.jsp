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
#line {
	width: 1210px;
	height: 350px;
	border: 4px solid gray;
	margin-left: 20px;
	border-radius: 30px;
	/*  border: 1px solid black; */
}

#mypage {
	float: left;
	width: 1210px;
	height: 70px;
	/* border: 1px solid black;  */
	margin-top: 20px;
}

#modbutton {
	padding-left: 40px;
	padding-right: 40px;
	padding-top: 5px;
	padding-bottom: 5px;
	text-align: center;
	font-size: large;
	margin-top: 5px;
}

#profile {
	float: left;
	width: 1210px;
	height: 200px;
	margin-left: 20px;
	/* border: 1px solid black; */
}

#photo {
	float: left;
	width: 200px;
	height: 200px;
	margin-left: 20px;
	border-radius: 100px;
	border: 5px solid yellow;;
}

#info {
	float: left;
	width: 300px;
	height: 200px;
	margin-left: 15px;
	/* border: 1px solid black; */
}

#icon {
	float: left;
	width: 650px;
	height: 200px;
	/* border: 1px solid black; */
}

.iconimg {
	float: left;
	margin-left: 50px;
	margin-top: 20px;
}

#page {
	float: left;
	width: 1210px;
	height: 800px;
	margin-top: 10px;
	border: 4px solid gray;
	margin-left: 20px;
	border-radius: 30px;
	/*  border: 1px solid black;  */
}

footer {
	float: left;
	width: 100%;
	height: 300px;
	margin-top: 40px;
	text-align: center;
	border: 1px solid black;
}

h3 {
	text-align: center;
}

h2 {
	font-size: large;
}

table {
	border-collapse: collapse;
	width: 1130px;
	font-size: 16px;
	margin-left: 28px;
}

thead {
	text-align: center;
	font-weight: bold;
}

tbody {
	font-size: 12px;
}

td {
	padding: 15px 0px;
	border-bottom: 2px solid grey;
}

.iconimg:hover {
	box-shadow: 4px 4px 4px black;
	transition-duration: 0.3s;
}
 button {
        
        padding: 0;
        box-sizing: border-box;
    }
        .container {
        display: flex;
        justify-content: flex-end;
        width: 100%;
        padding: 20px;
    }


    .delete-button {
        background-color: skyblue;
        color: gray;
        margin-right:100px;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .delete-button:hover {
        background-color: skyblue;
    }

    .delete-button:active {
        transform: scale(0.95);
    }
    .delete-button2 {
        background-color: skyblue;
        color: gray;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        font-size: 13px;
        cursor: pointer;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
</style>

<body>
	<div id="Box">
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

		<div id="line">
			<div id="mypage">
				<h2>${username}님의마이페이지입니다</h2>
			</div>




			<div id="profile">
				<div id="photo"></div>

				<div id="info">

					<h2>아이디:${userid}</h2>
					<h2>이메일:${useremail}</h2>
					<h2>최근 주소:${useraddress}</h2>
					<form action="mod" method="get">
						<button type="submit">나의 정보 수정</button>
					</form>


				</div>



				<div id="icon">
					<div class="iconimg">
						<img src="./resources/img/주문내역2.png" width="100" height="90"
							onclick="changeContent('mlist')">
						<h3>주문내역</h3>
					</div>
					<div class="iconimg">
						<img src="./resources/img/찜목록2.png" width="100" height="90"
							onclick="changeContent('cart')">
						<h3>찜목록</h3>
					</div>
					<div class="iconimg">
						<img src="./resources/img/리뷰.png" width="100" height="90"
							onclick="changeContent('review')">
						<h3>리뷰</h3>
					</div>
					<div class="iconimg">
						<img src="./resources/img/포인트.png" width="100" height="90"
							onclick="changeContent('point')">
						<h3>포인트</h3>
					</div>
				</div>
			</div>
		</div>

		<section id="page">
			<div id="menupick">
				<div id="mlist" class="content">
					<table class='order__list'>
						<thead>
							<tr>
								<td>주문번호</td>
								<td>메뉴이름</td>
								<td>수령방법</td>
								<td>주문날짜</td>
							</tr>
						</thead>
						<tbody>
							<tr class='order__list__detail'>
								<td>12345</td>
								<td>간장치킨</td>
								<td>배달</td>
								<td>023-06-19</td>
							</tr>
							<!-- 여기에 더 많은 주문 항목을 추가할 수 있습니다 -->
						</tbody>
					</table>
				</div>
				<div id="cart" class="content">
					<table class='cart__list'>
						<thead>
							<tr>
								<td>체크박스</td>
								<td>메뉴사진</td>
								<td>메뉴</td>
							</tr>
						</thead>
						<tbody>
							<tr class='cart__list__detail'>
								<td><input type="checkbox"></td>
								<td>사진</td>
								<td>후라이드 치킨</td>
							</tr>
							<!-- 여기에 더 많은 찜 목록 항목을 추가할 수 있습니다 -->
						</tbody>
					</table>
					<div class="container">
					<button class="delete-button">삭제</button>
					</div>
				</div>
				<div id="review" class="content">
					<table class='review__list'>
						<thead>
							<tr>
								<td>주문번호</td>
								<td>메뉴사진</td>
								<td>메뉴이름</td>
								<td>리뷰</td>
							</tr>
						</thead>
						<tbody>
							<%-- <c:forEach var="review" items="${reviews}"> --%>
							<!-- 내일 학원가서 데이터 넣어보기 -->
							<tr class='review__list__detail'>
								<td>${review.re_no}</td>
								<td><img src='${review.re_file}' alt='메뉴사진'></td>
								<td>${review.menu_name}</td>
								<td>
									<form action='reviewcontent' method='get'>
										<button class="delete-button2">리뷰보기</button>
									</form>
								</td>
							</tr>
							<%--  </c:forEach> --%>
						</tbody>
					</table>
				</div>
				<div id="point" class="content">
					<div>
						<h1>현재 포인트: 10,000P</h1>
						<br>
						<table class='point__list'>
						<thead>
							<tr>
								<td>날짜</td>
								<td>가게명</td>
								<td>포인트</td>
							</tr>
						</thead>
						<tbody>
							<tr class='point__list__detail'>
								<td>2024.06.20</td>
								<td>도미노피자</td>
								<td>+120p적립</td>
							</tr>
							<!-- 여기에 더 많은 찜 목록 항목을 추가할 수 있습니다 -->
						</tbody>
					</table>
					</div>
				</div>
			</div>

		</section>

		<script>
	function changeContent(type) {
        // 모든 content 클래스를 숨기기
        const contents = document.querySelectorAll('.content');
        contents.forEach(content => content.style.display = 'none');
      	/*   각 요소의 style.display 속성을 'none'으로 설정하여 해당 요소를 숨깁니다. */

        // 선택한 type에 맞는 content만 보이기
        const selectedContent = document.getElementById(type);
        if (selectedContent) {
            selectedContent.style.display = 'block';
        }
    }

    // 초기 로딩 시 기본 콘텐츠 보이기 (예: 'mlist')
   /*  changeContent('mlist'); */
    document.querySelectorAll('.content').forEach(content => content.style.display = 'none');
    document.getElementById('message').style.display = 'block';
</script>
</body>









<footer>
	<div class="footer-box">
		<div class="footer-logo">
			<a href="#"><img src="${path}/resources/img/logo1_ size60.png"
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