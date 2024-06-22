<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#box{
	width :800px;
	height:800px;
	border: 2px solid gray;
	margin-left :200px;
}

</style>
<body>
	<div id="box">
		<h2>사진</h2>
		<c:forEach items="${photo}" var="rname">
			<img src="download?filename=${rname}" width="500" , height="450">
		</c:forEach>
	
	
	
	</div>
</body>
</html>