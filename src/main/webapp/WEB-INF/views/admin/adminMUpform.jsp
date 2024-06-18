<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@ page session="true"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${path}/resources/css/menuPick.css" rel="stylesheet" />
<title>수정페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
	   <script type="text/javascript">
		function call_confirm(){
			
			if(confirm("회원 정보를 삭제하시겠습니까?")){
				alert("정상적으로 제출되었습니다.");
				return true;
			}else{
				alert("삭제 취소");
				return false;
			}
			
		}
		
		function tdCng(){
			var chktr = $(this);
			var td = chktr.children();
			var master = td.eq(5).text();
			
			alert(master);
		}
		
		$("tbody > tr").click(function() {
			alert($(this).children().eq(2).text());
		});
	</script>
</head>
<style>
.login {
	float: right;
	width: 100px; /*가로 넓이*/
    height: 90%;
    margin-left: 30px;
    
}

.logout {
    float: right;
	width: 100px; /*가로 넓이*/
    height: 90%;
    margin-right: 30px;
   
}

#span {
	width: 1210px;
	height: 150px;
	border: 4px solid gray;
	margin-left: 20px;
	border-radius: 30px;
}

#surchpan {
	float: left;
	width: 1210px;
	height: 70px;
	/* border: 1px solid black; */
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
	height: 500px;
	margin-top: 10px;
	border: 4px solid gray;
	margin-left: 20px;
	border-radius: 30px;
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
#dpan{
	float: left;
	padding-left: 40px;
	margin-top: 20px;
	margin-bottom: 10px;
	width: 800px;
	
}
#sbtn{
	width: 80px;
}

table {
	border-collapse: collapse;
	width: 1130px;
	font-size: 16px;
	margin-left: 38px;
	border: 1px solid black
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
#mbtn{
	width: 60px;
}
.iconimg:hover{
	box-shadow : 4px 4px 4px black;
	transition-duration: 0.3s;
}
</style>

<body>
	<div id="Box">
		<header>
				관리자 HOME입니다. (MASTER) 
			<div class="login box">
				<c:if test="${userid == null }">
					<a href="login"><span> 로그인 </span></a>
				</c:if>
			</div>
			<div class="logout box">
				<c:if test="${userid != null }">
					<a href="logout"><span> 로그아웃 </span></a>
				</c:if>
			</div>
		</header>

		<nav>
			<div class="logo">
				<a href="adminEnter"><span><img
						src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
			</div>
			<div class="menu">
			<ul>
                    <li>
                        <a href="main"> HOME </a>
                    </li>
                    <li>
                        <a href="adminMView"> 회원 관리 </a>
                        <ul class="submenu">
                            <li>
                                <a href="#"> 회원 정보 조회 </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"> 주문 관리 </a>
                        <ul class="submenu">
                            <li>
                                <a href="#"> 주문 상태 관리 </a>
                            </li>
                            <li>
                                <a href="#"> (정산 관리) </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"> 글 관리 </a>
                        <ul class="submenu">
                            <li>
                                <a href="#"> 문의글 관리 </a>
                            </li>
                            <li>
                                <a href="#"> (답변 관리) </a>
                            </li>
                            <li>
                                <a href="#"> 리뷰 관리 </a>
                            </li>
                        </ul>
                    </li>
                      <li>
                        <a href="#"> 상품 관리 </a>
                        <ul class="submenu">
                            <li>
                                <a href="#"> 상품 조회 </a>
                            </li>
                            <li>
                                <a href="#"> (상품 등록) </a>
                            </li>
                        </ul>
                    </li>
                </ul>
			</div>
		</nav>

		<div id="span">
			<div id="surchpan">
				<h2>${username} 회원 관리 페이지입니다.</h2>
				<form action="adminMSearch" method="get">
				
					  <label for="loc">지역(광역시)</label>
					  <select name="address" id="loc">
					  		<option value="">(선택안함)</option>
						  <option value="수원시">수원시</option>
						  <option value="화성시">화성시</option>
					  <option value="용인시">용인시</option>
					  </select>
					  
						  <label for="option1">일반</label>
					    <input type="radio" id="option1" name="master" value="0">
						  <label for="option2">관리자</label>
						  <input type="radio" id="option2" name="master" value="1">

					<input type="text" name="sword"> <input type="submit" value="검색">
				</form>
			</div>
		</div>

		</div>

		<section id="page">



	<form action="adminMUp" method="post">
			<div id="dpan">
			회원 권한만 수정하실 수 있습니다.
		</div>
		<table border=1 id="mtable">
			<thead>
				<tr>
					<td>회원ID</td>
					<td>회원명</td>
					<td>전화번호</td>
					<td>이메일</td>
					<td>주소</td>
					<td>권한</td>
					<td>제출</td>
				</tr>
			</thead>
			<tbody>
					<c:if test="${mvo.master==0}">
						<tr class="minfo_row">
							<td><input type="text" name="id" value=${mvo.id } readonly></td>
							<td><input type="text" name="name" value=${mvo.name } readonly></td>
							<td><input type="text" name="phone" value=${mvo.phone } readonly></td>
							<td><input type="text" name="email" value=${mvo.email } readonly></td>
							<td><input type="text" name="address" value=${mvo.address } readonly></td>
							<!-- <td><input type="text" name="master" value=${mvo.master }></td> -->
							<td>
								 <select name="master" id="ms">
						  			<option value="0">일반</option>
						  			<option value="1">관리자</option>
					  			</select>
							</td>
							<td><input type="submit" value="제출하기" id="sbtn"></td>
						</tr>
					</c:if>
						<c:if test="${mvo.master==1}">
						<tr class="minfo_row">
							<td><input type="text" name="id" value=${mvo.id } readonly></td>
							<td><input type="text" name="name" value="" readonly></td>
							<td><input type="text" name="phone" value="" readonly></td>
							<td><input type="text" name="email" value="" readonly></td>
							<td><input type="text" name="address" value="" readonly></td>
							<td>
								 <select name="master" id="ms">
						  			<option value="1">관리자</option>
						  			<option value="0">일반</option>
					  			</select>
							</td>
							<td><input type="submit" value="제출하기" id="sbtn"></td>
						</tr>
					</c:if>
			</tbody>
		</table>
	</form>
		</section>
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

<script>
	function list() {
		alert("hohoho");
	}

	function review() {
		location.href = "main";
	}
</script>
</body>
</html>