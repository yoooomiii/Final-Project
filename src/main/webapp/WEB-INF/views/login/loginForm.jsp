<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <form action="signIn" method="get">
              <label for="username">회원 ID</label>
              <input type="text" name="id" id="username" >
  

              <label for="password">비밀번호</label>
              <input type="password" name="pw" id="password" placeholder="">
  
              <div id="form-controls">
                <button type="submit" id="toggleSignIn">로그인</button>
              </div>
  
            </form>
          </div>
    </div>
</body>
</html>

