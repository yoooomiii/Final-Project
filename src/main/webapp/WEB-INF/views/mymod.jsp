<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Document</title>
</head>
<script src="//t1.daumcdn.net/mapjsapi/bundel/postcode/prod/postcode.v2.js"></script>

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
	border: 1px solid black; /*틀 선 굵기와 종류 색상*/
	width: 800px; /*가로 넓이*/
	height: 700px; /*세로 높이*/
	text-align: center;
	margin-top: 20px;
	margin-left: 200px;
}

#profile {
	float: left;
	border: 1px solid black; /*틀 선 굵기와 종류 색상*/
	width: 800px; /*가로 넓이*/
	height: 280px; /*세로 높이*/
}
#photo{
    float: left;
    width: 150px;
    height: 150px;
    margin-left: 325px;
    margin-top:10px;
    border-radius: 100px;
    border: 1px solid black;
}
#btn{
	margin-top:160px;
}
</style>


<body>
	<div id="login"></div>
	<div id="nav"></div>
	<div id="box">
		<div id="profile">
			<h2>회원 정보 수정</h2>
			<div id="photo">
			<input type="submit" value="사진 편집" id="btn">
			</div>
		</div>
		<div id="ex">
			아이디<input type="text" name="id">
			<br>
			<br>
			이메일<input type="text" name="email">
			<br>
			<br>
			닉네임<input type="text" name="name2">
			<br>
			<br>
			<label>주소</label>
			<input type="text id="address" placeolder="주소를 검색해주세요" readonly>
			<button type="button" id="search" onclick="findaddr()">주소검색</button>
			<br>
			<br>
			전화번호<input type="text" name="address">
			








		</div>























	</div>
	<script>
		function findaddr() {
			new daum.Postcode({
				oncomplete:function(data) {
					var addr='';
					
					if(data.userSelectedType ==='R') {
						addr= data.roadAddress;
					} else {
						addr =data.jibunAddress;
					}
					
					$("#c_main_address").val(addr);
				}
			}).open();
		}
	
	
	</script>
</body>
</html>
