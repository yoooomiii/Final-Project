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
<link href="${path}/resources/css/menubar.css" rel="stylesheet"/>
<title>배달정보</title>
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
#dlv-form{
    font-family: 'SUITE-Regular';
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
	height: 1000px;
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
	width: 1170px;
	
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
body{
	font-family: 'SUITE-Regular';
}
</style>
<body>
	<div id="Box">
		<header>
				관리자 HOME입니다. (MASTER) 
			<c:if test="${userid == null }">
				<div class="login box">
						<a href="login"><span> 로그인 </span></a>
				</div>
			</c:if>
			<c:if test="${userid != null }">
				<div class="logout box">
						<a href="logout"><span> 로그아웃 </span></a>
				</div>
			</c:if>
		</header>
		<nav>
			<div class="logo">
				<a href="adminEnter"><span><img
						src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
			</div>
			<div class="menu">
			<ul>
                    <li>
                        <a href="adminEnter"> HOME </a>
                    </li>
                    <li>
                        <a href="adminMView"> 회원 관리 </a>
                    </li>
                    <li>
                        <a href="adminOView"> 주문 관리 </a>
                        <ul class="submenu">
                            <li>
                                <a href="adminOView"> 주문 상태 관리 </a>
                            </li>
                            <li>
                                <a href="adminDView"> 배달 관리 </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="masterview"> 글 관리 </a>
                        <ul class="submenu">
                            <li>
                                <a href="masterview"> 문의글 관리 </a>
                            </li>
                            <li>
                                <a href="answerList"> 답변 관리 </a>
                            </li>
                            <li>
                                <a href="review_master"> 리뷰 관리 </a>
                            </li>
                        </ul>
                    </li>
                      <li>
                        <a href="menu_List"> 상품 관리 </a>
                        <ul class="submenu">
                            <li>
                                <a href="menu_List"> 상품 조회 </a>
                            </li>
                            <li>
                                <a href="menu_input"> 상품 등록 </a>
                            </li>
                        </ul>
                    </li>
                </ul>
			</div>
		</nav>
		</div>
	<section id="page">
			<form action="요청URL" method="post" id="dlv-form">
					<div id="dpan">
					${dvo.d_no }번 주문의 배달 현황입니다. <a href="adminOView">주문목록으로...</a> | <a href="adminDView">배달목록으로...</a>
					<hr>
					<c:if test="${dvo.d_num != null }">
						<a href="adminDUpform?m_num=${dvo.d_no}"><input type="button" value="수정하기"></a>
					</c:if>
					<c:if test="${dvo.d_num == null }">
						<a href="adminDSpform?m_num=${ordernum}"><input type="button" value="배정하기"></a>
					</c:if>
				</div>
				<table border=1 id="mtable" >
					<tr style="font-size: 15px"><td style="background-color: gray">배달번호:</td><td>(추후수정)</td></tr>
					<tr style="font-size: 15px"><td style="background-color: gray">등록번호:</td><td><a href="배달원보기url">${dvo.d_num}</a></td></tr>
					<tr style="font-size: 15px"><td style="background-color: gray">주문번호:</td><td>${dvo.d_no}</td></tr>
					<tr style="font-size: 15px"><td style="background-color: gray">예상시간:</td><td>${dvo.d_time}</td></tr>
					<tr style="font-size: 15px"><td style="background-color: gray">배달상태:</td><td>${dvo.d_check}</td></tr>
				</table>
			</form>
	</section>
</body>
<footer>
	<div class="footer-box">
		<div class="footer-logo">
			<a href="adminEnter"><img src="${path}/resources/img/footer_logo_s1.png"
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
</script>
</body>
</html>