<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session ="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	  	<div>
	  		<h3>css 없는 심플 버전의 로그인 페이지입니다. (24-06-11)</h3>
	  		<div>
	  			<!-- 사용자 session에서 정보 가져와 띄우는 부분 (변수명 수정해야)-->
				<c:if test="${userid != null }">
					<span> 사용자 정보: ${userid } / ${username } / ${grade }</span>
					<span> <a href="logout">로그아웃</a> </span>
				</c:if>
			</div>
			<hr>
	  	</div>
</body>
</html>