<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">

    <title>로그인 메인</title>
	<link href="${path}./resources/css/sign.css" rel="stylesheet"/>
</head>
<body>
    <div id="form-container">
        <div id="form-inner-container">
          <!-- Sign up form -->
          <div id="sign-up-container">
            <h3>골든에그와 함께하기</h3>
            <form action="#" method="get">
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
                <button type="submit">이메일 인증하기</button>
                <button type="submit">가입</button>
                <button type="button" id="toggleSignIn">로그인</button>
              </div>
  
              <input type="checkbox" name="terms" id="terms">
              <label for="terms"><a href="terms.html" class="termsLink">서비스 이용약관</a> | <a href="policy.html" class="termsLink">개인정보 처리방침</a>에 동의합니다.</label>
            </form>
          </div>
  
          <!-- Sign in form -->
          <div id="sign-in-container" class="hide">
            <h3>반가워요!</h3>
            <form action="#" method="get">
              <label for="username">회원 ID</label>
              <input type="text" name="id" id="userid">
  
              <label for="password">비밀번호</label>
              <input type="password" name="pw" id="password" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;">
  
              <div id="form-controls">
                <button type="submit">로그인</button>
                <button type="button" id="toggleSignIn">가입</button>
              </div>
  
              <input type="checkbox" name="terms" id="terms" hidden>
              <label for="terms"><a href="terms.html" class="termsLink">서비스 이용약관</a> | <a href="policy.html" class="termsLink">개인정보 처리방침</a>에 동의합니다.</label>
            </form>
          </div>
  
          <!-- Lottie animation -->
          <div id="animation-container">
            <lottie-player src="https://assets3.lottiefiles.com/packages/lf20_aesgckiv.json"  background="transparent"  speed="1"  style="width: 520px; height: 520px;" loop autoplay></lottie-player>
          </div>
        </div>
    </div>
</body>
</html>
<script>
    const signInBtn = document.querySelector('#toggleSignIn');
    const signUpBtn = document.querySelector('#toggleSignUp');
    
    const signUpForm = document.querySelector('#sign-up-container');
    const signInForm = document.querySelector('#sign-in-container');
    
    // Change form when clicking on button
    const changeForm = (form1, form2) => {
      form1.classList.toggle('hide');
      form2.classList.toggle('hide');
    }
    
    // Show the Sign In form
    signInBtn.addEventListener('click', () => {
      changeForm(signUpForm, signInForm);
    });
    
    // Show the Sign Up form
    signUpBtn.addEventListener('click', () => {
      changeForm(signUpForm, signInForm);
    });
</script>
