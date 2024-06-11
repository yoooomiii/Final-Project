<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>로그인 메인</title>
</head>
<link rel="stylesheet" href="#">
<body>
    <div id="form-container">
          <!-- Sign up form -->
          <div id="sign-up-container">
          	<h3>css 없는 심플 버전의 로그인 페이지입니다. (24-06-11)</h3>
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
  
          <hr>

          <!-- Sign in form -->
          <div id="sign-in-container" class="hide">
            <h3>로그인</h3>
            <form action="signIn" method="get">
              <label for="username">회원 ID</label>
              <input type="text" name="id" id="username" placeholder="user@example.com">
  

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

