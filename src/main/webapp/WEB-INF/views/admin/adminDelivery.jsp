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
<title>배달관리</title>
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
			
			if(confirm("배달 정보를 삭제하시겠습니까?")){
				alert("정상적으로 제출되었습니다.");
				return true;
			}else{
				alert("삭제 취소");
				return false;
			}
			
		}
		//------------>
     var cnt = new Array();
     cnt[0] = new Array('전체');
     cnt[1] = new Array('전체','강남구','강동구','강북구','강서구','관악구','광진구','구로구','금천구','노원구','도봉구','동대문구','동작구','마포구','서대문구','서초구','성동구','성북구','송파구','양천구','영등포구','용산구','은평구','종로구','중구','중랑구');
     cnt[2] = new Array('전체','강서구','금정구','남구','동구','동래구','부산진구','북구','사상구','사하구','서구','수영구','연제구','영도구','중구','해운대구','기장군');
     cnt[3] = new Array('전체','남구','달서구','동구','북구','서구','수성구','중구','달성군');
     cnt[4] = new Array('전체','계양구','남구','남동구','동구','부평구','서구','연수구','중구','강화군','옹진군');
     cnt[5] = new Array('전체','광산구','남구','동구','북구','서구');
     cnt[6] = new Array('전체','대덕구','동구','서구','유성구','중구');
     cnt[7] = new Array('전체','남구','동구','북구','중구','울주군');
     cnt[8] = new Array('전체','고양시','과천시','광명시','구리시','군포시','남양주시','동두천시','부천시','성남시','수원시','시흥시','안산시','안양시','오산시','의왕시','의정부시','평택시','하남시','가평군','광주시','김포시','안성시','양주군','양평군','여주군','연천군','용인시','이천군','파주시','포천시','화성시');
     cnt[9] = new Array('전체','강릉시','동해시','삼척시','속초시','원주시','춘천시','태백시','고성군','양구군','양양군','영월군','인제군','정선군','철원군','평창군','홍천군','화천군','황성군');
     cnt[10] = new Array('전체','제천시','청주시','충주시','괴산군','단양군','보은군','영동군','옥천군','음성군','진천군','청원군');
     cnt[11] = new Array('전체','공주시','보령시','서산시','아산시','천안시','금산군','논산군','당진군','부여군','서천군','연기군','예산군','청양군','태안군','홍성군');
     cnt[12] = new Array('전체','군산시','김제시','남원시','익산시','전주시','정읍시','고창군','무주군','부안군','순창군','완주군','임실군','장수군','진안군');
     cnt[13] = new Array('전체','광양시','나주시','목포시','순천시','여수시','여천시','강진군','고흥군','곡성군','구례군','담양군','무안군','보성군','신안군','여천군','영광군','영암군','완도군','장성군','장흥군','진도군','함평군','해남군','화순군');
     cnt[14] = new Array('전체','경산시','경주시','구미시','김천시','문겅시','상주시','안동시','영주시','영천시','포항시','고령군','군위군','봉화군','성주군','영덕군','영양군','예천군','울릉군','울진군','의성군','청도군','청송군','칠곡군');
     cnt[15] = new Array('전체','거제시','김해시','마산시','밀양시','사천시','울산시','진주시','진해시','창원시','통영시','거창군','고성군','남해군','산청군','양산시','의령군','창녕군','하동군','함안군','함양군','합천군');
     cnt[16] = new Array('전체','서귀포시','제주시','남제주군','북제주군');
     function change(add) {
     sel=document.form.county
       /* 옵션메뉴삭제 */
       for (i=sel.length-1; i>=0; i--){
         sel.options[i] = null
         }
       /* 옵션박스추가 */
       for (i=0; i < cnt[add].length;i++){                     
                         sel.options[i] = new Option(cnt[add][i], cnt[add][i]);
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
	font-family: 'SUITE-Regular';
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
#srcbtn{
	width: 100px;
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
	float: right;
	padding-rgit: 5px;
	margin-top: 20px;
	margin-bottom: 10px;
	width: 100px;
	
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
#paging{
	text-align: center;
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
		<div id="span">
			<div id="surchpan">
				<h2>${username} 배달관리 페이지입니다.</h2>
				<form action="adminDSearch" method="get" name=form>
				
					  <label for="d_check">배달상태</label>
					  <select name="d_check" id="loc" class=select>
					  		<option value="">(선택안함)</option>
					  		<option value="배정대기">배정대기</option>
					  		<option value="배달준비">배달준비</option>
					  		<option value="배달중">배달중</option>
					  		<option value="배달완료">배달완료</option>
					  </select>

					주문번호: <input type="text" name="sword"> <input type="submit" value="주문번호 검색" id="srcbtn">
					<br>
					<br>
					Rider번호: <input type="text" name="d_num"> <input type="submit" value="Rider번호 검색" id="srcbtn">
				</form>
			</div>
		</div>
		</div>
    <section id="page">
	<form action="adminDDelete" method="get" onsubmit="return call_confirm()" id="dlv-form">
		<div id="dpan">
			<input type="submit" value="삭제하기">
		</div>
		<table border=1 id="dtable" style="font-size: 15px">
			<thead>
				<tr style="background-color: gray">
					<td>등록번호</td>
					<td>주문번호</td>
					<td>배달주소</td>
					<td>예상시간</td>
					<td>배달상태</td>
					<td>수정</td>
					<td>선택</td>
				</tr>
			</thead>
			<tbody style="font-size: 15px">
			    <c:forEach items="${deliverys }" var="deliveryvo">
					<tr class="minfo_row">
						<td>${deliveryvo.d_num }</td>
						<td>${deliveryvo.d_no }</td>
						<td style="color:gray">(배달주소)</td>
						<td>${deliveryvo.d_time }</td>
						<td>${deliveryvo.d_check }</td>
						<td><a href="adminDUpform?m_num=${deliveryvo.d_no }"><input type="button" value="수정하기" id="mbtn"></a></td>
						<td><input type="checkbox" id="chk" name="chkid" value=${deliveryvo.d_no }></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
		<div id ="paging">
						<c:if test="${not_data !=null }">
							<div>${not_data }</div>
						</c:if>
						<br>
						<c:if test="${d_check != null}">
								<div>검색조건 | 주문번호: ${d_no } 주문상태: ${d_check} </div>
							<div>
								검색결과 목록:
									<c:if test="${pagevo.prev }">
										<a href="adminDSearch?page=${pagevo.startPage -1 }&sword=${sword}&m_state=${m_state}">[이전페이지그룹]</a>
									</c:if> 
									<c:forEach begin="${pagevo.startPage }" end="${pagevo.endPage }"
										var="idx">
										<a href="adminDSearch?page=${idx}&sword=${sword}&m_state=${m_state }"> 
											<c:if
												test="${idx == pagevo.page }">[</c:if> ${idx } <c:if
												test="${idx == pagevo.page }">]</c:if>
										</a>
									</c:forEach> 
									<c:if test="${pagevo.next }">
										 <a href="adminDSearch?page=${pagevo.endPage +1 }&sword=${sword}&m_state=${m_state}">[다음페이지그룹]</a>
									</c:if>
							</div>
						</c:if>
						<c:if test="${d_check == null}">
							<div>
								일반 목록:
									<c:if test="${pagevo.prev }">
										<a href="adminDView?page=${pagevo.startPage -1 }">[이전페이지그룹]</a>
									</c:if> 
									<c:forEach begin="${pagevo.startPage }" end="${pagevo.endPage }"
										var="idx">
										<a href="adminDView?page=${idx}"> 
											<c:if
												test="${idx == pagevo.page }">[</c:if> ${idx } <c:if
												test="${idx == pagevo.page }">]</c:if>
										</a>
									</c:forEach> 
									<c:if test="${pagevo.next }">
										<a href="adminDView?page=${pagevo.endPage +1 }">[다음페이지그룹]</a>
									</c:if>
							</div>
						</c:if>
			</div>
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