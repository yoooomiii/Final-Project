<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session ="true" %>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>로그인 ONLY</title>
	<link href="${path}./resources/css/sign.css" rel="stylesheet"/>
</head>
<body>
    <div id="form-container"> 
          <!-- Sign in form -->
          <div id="sign-in-container" >
            <h3>로그인</h3>
            <h5>
            	<c:if test="${userid != null }">
					현재 관리자로 접속된 상태입니다. 
				</c:if>
            </h5>
            <form action="signIn" method="get">
              <label for="username">회원 ID</label>
              <input type="text" name="id" id="id" >
              
              <label for="password">비밀번호</label>
              <input type="password" name="pw" id="pw" placeholder="">
  
              <div id="form-controls">
                <button type="submit" id="toggleSignIn">로그인</button>
              </div>
  
            </form>
          </div>
    </div>
</body>
</html>

