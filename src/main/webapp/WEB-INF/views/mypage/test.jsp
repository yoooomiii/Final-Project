<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#box {
	width: 800px;
	height: 800px;
	border: 2px solid gray;
	margin-left: 200px;
}
</style>
<body>
	<div id="debug">
		<p>Photo list: ${photoList}</p>
	</div>
	<div id="box">
		<h2>사진</h2>
		<c:forEach items="${photoList}" var="rname">
			<c:if test="${not empty rname}">
				<p>${rname}</p>
				<!-- 파일 이름이 출력되는지 확인 -->
				<img
					src="${pageContext.request.contextPath}/downloads?filename=${rname}"
					width="200" height="200">
			</c:if>
		</c:forEach>
	</div>
</body>
</html>