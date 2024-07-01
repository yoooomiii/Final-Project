<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session ="true" %>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>bye...</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">	
	</script>
<link href="${path}./resources/css/sign.css" rel="stylesheet"/>
</head>
<body>
    <div id="form-container"> 
          <!-- Sign in form -->
          <div id="sign-in-container" >
            <h3>잘못된 접근입니다.</h3>
            <h4>
            	페이지 조회 및 url 요청 권한이 없습니다. 
            </h4>
            <c:if test="${usergrade == 1 }">
            <a href="adminEnter">HOME으로...</a>
            </c:if>
            <c:if test="${usergrade == 0 }">
            <a href="./">HOME으로...</a>
            </c:if>
            <c:if test="${userid == null }">
            <a href="./">HOME으로...</a>
            <br>
          	 현재 로그인 정보가 없습니다.
            </c:if>
          </div>
    </div>
</body>
</html>