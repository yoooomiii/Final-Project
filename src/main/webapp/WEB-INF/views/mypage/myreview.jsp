<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#box {
	float: left;
	width: 900px;
	height: 1000px;
	margin-left :110px;
	border: 2px solid red;
}

h3 {
	text-align: center;
}

h2 {
	font-size: large;
}

table {
	border-collapse: collapse;
	width: 800px;
	font-size: 16px;
	margin-left: 28px;
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
#btn{
	margin-left:-50px;
}

</style>
<body>
	<div id="box">
		<div id="review" class="content">
			<table class='review__list'>
				<thead>
					<tr>
						<td>메뉴사진</td>
						<td>메뉴이름</td>
						<td>별점</td>
						<td>리뷰</td>
					</tr>
				</thead>
				
				<tbody>
					<!-- 내일 학원가서 데이터 넣어보기 -->
					<c:forEach items="${photolist}" var="photo">
						<tr>
							<td><img src="download?filename=${photo}"></td>
							<td>${rvo.re_ex}</td>
							<td>${rvo.re_ex}</td>
							<td>${rvo.re_ex}</td>
							
						</tr>
			 		</c:forEach> 


				</tbody>
			</table>
		</div>

	</div>

</body>
</html>