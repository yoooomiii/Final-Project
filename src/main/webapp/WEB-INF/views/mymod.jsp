<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Document</title>
</head>
<script
	src="//t1.daumcdn.net/mapjsapi/bundel/postcode/prod/postcode.v2.js"></script>

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

#box {
	float: left;
	border: 5px solid gray; /*틀 선 굵기와 종류 색상*/
	width: 800px; /*가로 넓이*/
	height: 700px; /*세로 높이*/
	text-align: center;
	margin-top: 20px;
	margin-left: 200px;
	border-radius: 10px;
}

#profile {
	float: left;
	width: 800px; /*가로 넓이*/
	height: 280px; /*세로 높이*/
}

#photo {
	float: left;
	width: 150px;
	height: 150px;
	margin-left: 325px;
	margin-top: 10px;
	border-radius: 100px;
	border: 1.5px solid black;
}

#btn {
	margin-top: 160px;
}

.tx {
	padding-bottom: 10px;
	border: 2.5px solid gray;
	margin-top: 15px;
	item-align: center;
}

#savebtn {
	margin-top: 35px;
	padding-left: 40px;
	padding-right: 40px;
	padding-top: 10px;
	text-align: center;
}
.txx{
	padding-bottom: 10px;
	border: 2.5px solid gray;
	margin-top: 15px;

	margin-left :30px;
}
span{
	margin-left :80px;
	
}
</style>


<body>
	<div id="login"></div>
	<div id="nav"></div>
	<div id="box">
	<form action="modinput" method="get">
		<div id="profile">
			<h2>회원 정보 수정</h2>
			
			<div id="photo">
				<input type="file" value="사진 편집" id="btn">
			</div>
		</div>
		<div id="ex">
			아이디    <input type="text" name="id" class="tx" value="${mvo.id}" > <br> <br>
			
			이름       <input type="text" name="name" class="tx" value="${mvo.name}"> <br> <br>
			전화번호   <input type="text" name="address" class="tx" value="${mvo.phone}"><br> <br>
			이메일    <input type="text" name="email" class="tx" value="${mvo.email}"> <br> <br>
			주소      <input type="text name="address" class="tx" value="${mvo.address}">
			<button type="button" id="search" onclick="findaddr()">주소검색</button>
		
			<input type="submit" value="저장" id="savebtn">
			</div>
			</form>
		</div>
		

</body>
</html>
