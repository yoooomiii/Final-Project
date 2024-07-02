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
	.info_form .title {
		font-family: 'Cafe24Ssurround';
		border: 2px soild;
		font-size: 50px;
		margin-top: 20px;
	}
	
	.btn-td input[type=button] {
		width: 50px;
		height: 35px;
		border: 3px solid rgb(180, 180, 180);
		border-radius: 5px;
		font-weight: bold;
		background-color: white;
		padding: 5px;
	}
	
	.rebtn input[type=button] {
		width: 80px;
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
				<a href="adminEnter"><span><img
						src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
			</div>
			<div class="menu">
				<ul>
					<li><a href="adminEnter"> HOME </a></li>
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
					<li><a href="masterview"> 글 관리 </a>
						<ul class="submenu">
							<li><a href="masterview"> 문의글 관리 </a></li>
							<li><a href="answerList"> (답변 관리) </a></li>
							<li><a href="#"> 리뷰 관리 </a></li>
						</ul></li>
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
		<hr
			style="border: 0px; height: 30px; background: linear-gradient(to left, rgb(230, 217, 15), white, rgb(255, 255, 20))">
		<section>
			<div class="info_form">
				<div class="title">
					<span>고객센터 문의 게시판</span>
					<hr style="height: 5px; background-color: rgb(25, 0, 0); border-radius: 2px;">
				</div>
				<div class="search-box">
					<form action="search-action" method="get" name="search-form">
						<label for="keyword"> 검색어 : </label> 
						<input type="radio" id="option1" name="optionname" value="0"> 
						<label for="option"> 작성자 </label> 
						&nbsp; 
						<input type="radio" id="option2" name="optionname" value="1">
						<label for="option"> 제목 </label> 
						&nbsp; 
						<input type="radio" id="option3" name="optionname" value="2"> 
						<label for="option"> 처리여부 </label> 
						&nbsp; 
						<input type="text" size="20" name="keyword-text" >
						<input id=search-save type="submit" value="검색" name="searchS">
					</form>
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
								<td>답변</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${allListitems}" var="infovo">
								<tr>
									<td>
										<input type="checkbox" name="rowchk" id="checkbox" value="${infovo.askVO.a_num}"></td>
									<td><a href="detailViewMa?a_num=${infovo.askVO.a_num}">${infovo.askVO.a_num}</a></td>
									<td>${infovo.askVO.a_id}</td>
									<td>${infovo.askVO.a_title}</td>
									<td>${infovo.askVO.a_checkVal}</td>
									<td>${infovo.askVO.a_date}</td>
									<td>${infovo.answerVO.an_date}</td>
									<td>
										<div class="btn-td">
											<input type="button" value="삭제" name="delbtn"
												onclick="delchk(${infovo.askVO.a_num})">
										</div>
									</td>
									<td>
										<div class="btn-td rebtn">
											<input type="button" name="rebtn" value="답변하기"
												onclick="location.href='replyPage?a_num=${infovo.askVO.a_num}'">
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

					<div>
						<tr>
							<td colspan=4 align=center><c:if test="${pvo.prev }">
									<a href="masterview?page=${pvo.startPage -1 }">[이전페이지그룹]</a>
								</c:if> <c:forEach begin="${pvo.startPage }" end="${pvo.endPage }"
									var="idx">
									<a href="masterview?page=${idx}"> <c:if
											test="${idx == pvo.page }">[</c:if> ${idx } <c:if
											test="${idx == pvo.page }">]</c:if>
									</a>
								</c:forEach> <c:if test="${pvo.next }">
									<a href="masterview?page=${pvo.endPage +1 }">[다음페이지그룹]</a>
								</c:if></td>
						</tr>
					</div>
				</div>
			</div>
		</section>

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
					<span><a href="#"><img src="${path}/resources/img/instahram_icon.jpg" alt=""></a></span> 
					<span><a href="#"><img src="${path}/resources/img/facebook_icon.jpg" alt=""></a></span> 
					<span><a href="#"><img src="${path}/resources/img/twiter_icon.jpg" alt=""></a></span>
				</div>
			</div>
		</footer>