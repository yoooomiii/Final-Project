<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${path}/resources/css/menubar.css" rel="stylesheet"/>
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>

<script type="text/javascript">
	function pick_confirm() {
		var checkcc =document.querySelectorAll('input[name="chkid"]:checked');
		if(checkcc.length ===0) {
			alert("삭제할 항목을 선택해주세요.");
			return false;
		}
		
		
		if (confirm("찜을 삭제하시겠습니까?")) {
			alert("정상적으로 삭제되었습니다.");
			return true;
		} else {
			alert("삭제 취소");
			return false;
		}

	}

	function allpick() {
		var allCheck = document.querySelector('.allCheck');
		var checkboxes = document.querySelectorAll('input[name="chkid"]');
		checkboxes.forEach(function(checkbox) {
			checkbox.checked = allCheck.checked;
		});
	}
</script>
</head>
<style>
#cart {
	float: left;
	width: 1000px;
	height: 950px;
	border: 5px solid  rgb(240, 240, 95);
	border-radius: 50px;
	margin-left: 130px;
}

table {
	border-collapse: collapse;
	width: 950px;
	font-size: 16px;
	margin-left: 13px;
}

thead {
	text-align: center;
	font-weight: bold;
}

tbody {
	font-size: 12px;
}

th {
	border-bottom: 2px solid grey;
	text-align: center;
	font-family: 'SUITE-Regular', sans-serif;
	font-size: 20px;
}

td {
	text-align: center;
	padding: 15px 0px;
	font-family: 'SUITE-Regular', sans-serif;
	font-size: 18px;
	border-bottom: 2px solid grey;
}

.container {
	display: flex;
	justify-content: flex-end;
	width: 100%;
	padding: 20px;
}

.delbtn{
	background-color: skyblue;
	color: gray;
	margin-right: 55px;
	border: none;
	border-radius: 15px;
	padding: 8px 18px;
	font-size: 16px;
	cursor: pointer;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	transition: background-color 0.3s ease, transform 0.3s ease;
}

.delbtn:hover {
	background-color: skyblue;
	transform: scale(1.05);
}

.delbtn:active {
	transform: scale(1);
}


h2 {
	text-align: center;
	font-size: xx-large;
	font-family: 'Cafe24Ssurround', sans-serif;
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
}

.page-container a.current {
	font-weight: bold;
	text-decoration: underline;
}
</style>
<body>
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
				<li><a href="main"> HOME </a></li>
				<li><a href="#"> 브랜드 소개 </a>
					<ul class="submenu">
						<li><a href="#"> 브랜드 소개 </a></li>
					</ul></li>
				<li><a href="menuForm"> 메뉴 주문하기 </a>
					<ul class="submenu">
						<li><a href="#"> 인기 메뉴 </a></li>
						<li><a href="#"> 대표 메뉴 </a></li>
						<li><a href="#"> 치킨 메뉴 </a></li>
						<li><a href="#"> 사이드 / 음료 </a></li>
						<li><a href="#"> 세트 메뉴 </a></li>
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
	<br>
	<br>
	<br>
	<br>
	<div id="cart">
		<form action="pickdelete" method="get"
			onsubmit="return pick_confirm()">
			<table class='cart__list'>
				<thead>
					<br>
					<br>
					<h2>${username}님의 찜목록</h2>
					<br>
					<br>
					<tr>
						<th>모두 선택 <input type="checkbox" class="allCheck"
							name="allCheck" onclick="allpick()"></th>
						<th>찜 번호</th>
						<th>메뉴 이름</th>
						<th>메뉴 가격</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${plist}" var="plist">
						<tr class='cart__list__detail'>
							<td><input type="checkbox" id="chk" name="chkid"
								value="${plist.f_no}"></td>
							<td>${plist.f_num}</td>
							<td><a href="viewDetail?menu_no=${plist.f_no}">${plist.f_menu}</a></td>
							<td>${plist.f_price }</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			
			<div class="page-container">
			<div class="container">
				<input type="submit" value="삭제" class="delbtn">
			</div>
				<tr>
					<td colspan=4 align=center><c:if test="${pagevo.prev }">
							<a href="picklist?page=${pagevo.startPage -1 }">[이전페이지그룹]</a>
						</c:if> <c:forEach begin="${pagevo.startPage }" end="${pagevo.endPage }"
							var="idx">
							<a href="picklist?page=${idx}"> <c:if
									test="${idx == pagevo.page }">[</c:if> ${idx } <c:if
									test="${idx == pagevo.page }">]</c:if>
							</a>
						</c:forEach> <c:if test="${pagevo.next }">
							<a href="picklist?page=${pagevo.endPage +1 }">[다음페이지그룹]</a>
						</c:if></td>
				</tr>
			</div>

		</form>
		<br>
		<br>
		 <br>
		 <br>
	</div>
</body>


</html>