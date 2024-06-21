<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>InfoPage</title>
<link rel="stylesheet" href="${path}/resources/css/infoList_master.css">
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
					<li><a href="adminMView"> 회원 관리 </a>
						<ul class="submenu">
							<li><a href="#"> 회원 정보 조회 </a></li>
						</ul></li>
					<li><a href="adminOView"> 주문 관리 </a>
						<ul class="submenu">
							<li><a href="adminOView"> 주문 상태 관리 </a></li>
							<li><a href="adminDView"> (배달 관리) </a></li>
							<li><a href="#"> 배달 관리 </a></li>
						</ul></li>
					<li><a href="#"> 글 관리 </a>
						<ul class="submenu">
							<li><a href="#"> 문의글 관리 </a></li>
							<li><a href="#"> (답변 관리) </a></li>
							<li><a href="#"> 리뷰 관리 </a></li>
						</ul></li>
					<li><a href="#"> 상품 관리 </a>
						<ul class="submenu">
							<li><a href="#"> 상품 조회 </a></li>
							<li><a href="#"> (상품 등록) </a></li>
						</ul>
			</div>
		</nav>
		<hr
			style="border: 0px; height: 30px; background: linear-gradient(to left, rgb(230, 217, 15), white, rgb(255, 255, 20))">
		<section>
			<div class="info_form">
				<div class="title">
					<h1>고객센터 문의 게시판</h1>
					<hr style="height: 5px; background-color: rgb(25, 0, 0); border-radius: 2px;">
				</div>
				<div class="del_btn">
					<input type="button" value="선택항목삭제"> 
					<input type="button" value="전체삭제">
				</div>
				<div class="info_table">
					<table>
						<thead>
							<tr>
								<td><input type="checkbox" name="choose" id="allcheck-box" onclick="allchk(this)"></td>
								<td>번호</td>
								<td>작성자</td>
								<td>제목</td>
								<td>처리여부</td>
								<td>등록일</td>
								<td>답변일</td>
								<td>삭제</td>
								<td>답변하기</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${allListitems}" var="askvo">
								<tr>
									<td><input type="checkbox" name="rowchk" id="checkbox" value="${askvo.a_num }"></td>
									<td><a href="detailViewMa?a_num=${askvo.a_num}">${askvo.a_num}</a></td>
									<td>${askvo.a_id}</td>
									<td>${askvo.a_title}</td>
									<td>${askvo.a_checkVal}</td>
									<td>${askvo.a_date}</td>
									<td>${askvo.a_date}</td>
									<td>
										<div class="btn-td">
											<input type="button" value="삭제" name="delbtn" onclick="delchk(${askvo.a_num })">
										</div>
									</td>
									<td>
										<div class="btn-td">
											<input type="button" name="rebtn" value="답변하기" onclick="location.href='replyPage?a_num=${askvo.a_num }'">
										</div>
									</td>
								</tr>
							</c:forEach>
							
							<script>
								function delchk(dnum) {
									if (confirm("삭제합니까?") == true) {
										location.href = "delList?a_num=" + dnum
									} else {
										alert("취소합니다")
									}
								}
								
								function allchk(obj){
								      var chkObj = document.getElementsByName("rowchk");
								      var rowCnt = chkObj.length - 1;
								      var check = obj.checked;
								      if (check) {
								          for (var i=0; i<=rowCnt; i++){
								           if(chkObj[i].type == "checkbox")
								               chkObj[i].checked = true; 
								          }
								      } else {
								          for (var i=0; i<=rowCnt; i++) {
								           if(chkObj[i].type == "checkbox"){
								               chkObj[i].checked = false; 
								           }
								          }
								      }
								  } 
							</script>

						</tbody>
					</table>
				</div>
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