<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Document</title>
</head>
<style>
#login {
	float: left;
	width: 1200px;
	height: 50px;
	border: 1px solid black;
}

#nav {
	float: left;
	width: 1200px;
	height: 50px;
	margin-top: 10px;
	border: 1px solid black;
}

#mypage {
	float: left;
	width: 1200px;
	height: 70px;
	border: 1px solid black;
	margin-top: 20px;
	text-align: center;
}

#usermod {
	width: 180px;
	height: 50px;
	margin-top: -55px;
	text-align: center;
	/* border: 1px solid black; */
	margin-left: 1000px;
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
	width: 1200px;
	height: 200px;
	margin-top: 10px;
	border: 1px solid black;
}

#photo {
	float: left;
	width: 200px;
	height: 200px;
	margin-left: 30px;
	border-radius: 100px;
	border: 1px solid black;
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
	width: 1200px;
	height: 500px;
	margin-top: 10px;
	border: 1px solid black;
}

footer {
	float: left;
	width: 1200px;
	height: 300px;
	margin-top: 40px;
	text-align: center;
	border: 1px solid black;
}

h3 {
	text-align: center;
}
h2{
	font-size: large;
}
tr,td,th {
	border: 1px solid black;
}
#allmlist{
	float :left;
	width:250px;
	height: 500px;
	border: 1px solid black;
}
#mlist{
	float :left;
	width:925px;
	height: 500px;
	margin-left:20px;
	border: 1px solid black;
}
#mtable{
	border: 1px solid black;
}
</style>
<body>
	<div id="login"></div>
	<div id="nav"></div>
	<section>
		<div id="mypage">
			<h2>???님의 마이페이지입니다</h2>
			<div id="usermod">

				<!-- <h3>나의 정보 수정</h3> -->
			</div>
		</div>
		
		
		<section id="profile">
			<div id="photo"></div>
			
			<div id="info">
				<h2>닉네임: ?????</h2>
				<h2>이메일: ?????</h2>
				<h2>최근 주소: ?????</h2>	
				<form action="mymodpage" method="get">		
				<input type="submit" id="modbutton" value="나의 정보 수정">
				</form>
			</div>
			
			
			<div id="icon">
				<div class="iconimg">
					<img src="./resources/img/주문내역2.png" width="100" height="90">
					<h3>주문내역</h3>
				</div>
				<div class="iconimg">
					<img src="./resources/img/찜목록2.png" width="100" height="90" onclick="location='detail.jsp'">
					<h3>찜목록</h3>
				</div>
				<div class="iconimg">
					<img src="./resources/img/리뷰.png" width="100" height="90">
					<h3>리뷰</h3>
				</div>
				<div class="iconimg">
					<img src="./resources/img/포인트.png" width="100" height="90">
					<h3>포인트</h3>
				</div>


			</div>
		</section>

		<section id="page">
			
			<div id="allmlist">
				<h3>전체 주문 내역</h3>
					
			</div>
			<div id="mlist">
				<table id="mtable">
						
							<tr>
								<th>주문번호</th>
								<th>메뉴</th>
								<th>배달주소</th>
								<th>수령방법</th>
								<th>주문일시</th>
							</tr>
						
							<tr>
								<th>002</th>
								<th>간장치킨</th>
								<th>수원시 장안구 연무동</th>
								<th>배달</th>
								<th>2024.06.11/14.20.12</th>
							</tr>
					
					
					
					</table>
			</div>
		</section>


		<footer>
		
		</footer>

	</section>
	<script>
		
	function list() {
		alert("됬냐");
	}
	
	
	
	</script>
</body>
</html>