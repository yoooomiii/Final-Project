<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>회원가입 ONLY</title>
	<link href="${path}./resources/css/sign.css" rel="stylesheet"/>
</head>
<body>
    <div id="form-container">
          <!-- Sign up form -->
          <div id="sign-up-container">
            <h3>회원가입</h3>
            <form action="signUp" method="get">
              <label for="name">회원 ID</label>
              <input type="text" name="id" id="name" placeholder="사용할 아이디">
              
              <label for="password">비밀번호</label>
              <input type="password" name="pw" id="password" placeholder="">
              
              <label for="username">회원 이름</label>
              <input type="text" name="name" id="realname" placeholder="홍길동">

              <label for="username">전화번호 (*선택)</label>
              <input type="text" name="call" id="callnum" placeholder="01012341234">

              <label for="username">자택 주소 (*메뉴 수령 용도)</label>
              <input type="text" name="address" id="callnum" placeholder="도로명 주소 ex:)">
  
  
              <label for="email">Email</label>
              <input type="email" name="email" id="email" placeholder="Email">

              
              <div id="form-controls">
                <button type="button">이메일 인증하기</button>
                <button type="submit">가입</button>
              </div>
            </form>
          </div>
    </div>
</body>
</html>

