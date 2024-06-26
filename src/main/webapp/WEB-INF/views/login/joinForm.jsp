<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>회원가입 ONLY</title>
    <!-- <script src="${path}./resources/js/jquery.js"></script> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
    	function checkForm(){
        var check = nullChek();
        var lengcheck = lengthChek();
        
        if(check==true){
        	if(lengcheck==true){
        		return check;
        	}else{
        		return lengcheck;
        	}
        }else{
        	return check;
        }
      }

      function nullChek(){
          if($("#id").val()==""){
            alert("ID을 입력해 주세요.");
            $("#id").focus();
            return false;
          } 
          if($("#pw").val()==""){
            alert("비밀번호을 입력해 주세요.");
            $("#pw").focus();
            return false;
          } 
          if($("#name").val()==""){
            alert("회원이름을 입력해 주세요.");
            $("#name").focus();
            return false;
          }
           if($("#call").val()==""){
             alert("전화번호을 입력해 주세요.");
            $("#call").focus();
            return false;
           } 
          if($("#address").val()==""){
             alert("자택주소을 입력해 주세요.");
            $("#address").focus();
            return false;
           } 
          if($("#email").val()==""){
             alert("email을 입력해 주세요.");
            $("#email").focus();
            return false;
           } 
           
           return true;
          }
      function lengthChek(){
    	  var idvalue = document.querySelector('#id').value;
    	  var pwvalue = document.querySelector('#pw').value;
    	  
    	  if(idvalue.length<8){
              alert("ID는 8자 이상이어야 합니다.");
              $("#id").focus();
              return false;
            } 
    	  if(pwvalue.length<8){
              alert("PW는 8자 이상이어야 합니다.");
              $("#pw").focus();
              return false;
            } 
    	  if(valiCheck(pwvalue)==false){
    		  alert("PW에 특수문자가 포함되지 않았습니다.");
              $("#pw").focus();
              return false;
    	  }
    	
    	  
      }
      function valiCheck(text){
    	  var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/;
    	  if(!reg.test(text)){
    		  return false
    	  }
    	  return true;
      }
      
    </script>
	<link href="${path}./resources/css/sign.css" rel="stylesheet"/>
</head>
<body>
    <div id="form-container">
          <!-- Sign up form -->
          <div id="sign-up-container">
            <h3>회원가입</h3>
            <h5>골든에그와 함께하기!</h5>
            <form action="signUp" method="post"  onsubmit="return checkForm()">
              <label for="name">회원 ID</label>
              <input type="text" name="id" id="id" placeholder="사용할 아이디">
              
              <label for="password">비밀번호</label>
              <input type="password" name="pw" id="pw" placeholder="">
              
              <label for="username">회원 이름</label>
              <input type="text" name="name" id="name" placeholder="홍길동">

              <label for="username">전화번호 (*선택)</label>
              <input type="text" name="phone" id="phone" placeholder="01012341234">

              <label for="username">자택 주소 (*메뉴 수령 용도)</label>
              <input type="text" name="address" id="address" placeholder="도로명 주소 ex:)">
  
  
              <label for="email">Email</label>
              <input type="email" name="email" id="email" placeholder="Email">

              
              <div id="form-controls">
                <button type="button">이메일 인증하기</button>
                <button type="submit" onclick="checkForm()">가입</button>
              </div>
              
              <h5 style="color:gray;">
              	<a href="./">메인 HOME</a> | <a href="login">로그인</a>
              </h5>
            </form>
          </div>
    </div>
</body>
</html>