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
<link href="${path}/resources/css/main.css" rel="stylesheet" />
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
</head>
<style>
#cart {
	float: left;
	width: 1000px;
	height: 900px;
	border: 5px solid gray;
	border-radius: 20px;
	margin-left: 120px;
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

td {
	text-align: center;
	padding: 15px 0px;
	border-bottom: 2px solid grey;
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
	margin-right: 55px;
	border: none;
	border-radius: 15px;
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
	<div id="cart">
		<table class='cart__list'>
			<thead>
				<tr>
					<td>모두 선택 <input type="checkbox" name="checkall" id="checkall"
						onclick="selectAll(this)"></td>
					<td>주문번호</td>
					<td>메뉴 이름</td>
					<td>메뉴 가격</td>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${plist}" var="plist">
					<tr class='cart__list__detail'>
						<td><input type="checkbox" name="checkone" id="checkone"
							class="checkone"></td>
						<td>${plist.f_num}</td>
						<td><a href="viewDetail?menu_no=${plist.f_no}">${plist.f_menu}</a></td>
						<td>${plist.f_price }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="container">
			<button class="delete-button" onclick="deleteSelected()">삭제</button>
		</div>

	</div>
</body>

<!-- <script>
function selectAll(selectAllCheckbox) {
    const checkboxes = document.querySelectorAll('.checkone');
    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAllCheckbox.checked;
    });
}

function deleteSelected() {
    const checkboxes = document.querySelectorAll('.checkone:checked');
    const orderIds = Array.from(checkboxes).map(checkbox => {
        return checkbox.closest('tr').querySelector('.order-id').innerText;
    });
    
    if (orderIds.length > 0) {
        fetch('/deletePick', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ pickIds: pickIds })
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                checkboxes.forEach((checkbox) => {
                    const row = checkbox.closest('tr');
                    row.remove();
                });
                document.getElementById('checkall').checked = false;
            } else {
                alert('Failed to delete orders');
            }
        })
        .catch(error => console.error('Error:', error));
    }
}


document.querySelectorAll('.checkone').forEach(checkbox => {
    checkbox.addEventListener('change', () => {
        if (!checkbox.checked) {
            document.getElementById('checkall').checked = false;
        }
    });
});
</script> -->



</html>