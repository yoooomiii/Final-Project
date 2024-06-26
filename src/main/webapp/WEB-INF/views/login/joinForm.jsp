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
    	var idCheckT = 0; 
    	
    	function checkForm(){ // 전체체크함수 시작
        var check = nullChek();
        var lengcheck = lengthChek();
        
        
        if(idCheckT==0){ // 아이디 중복체크 통과 안 했으면...
        	alert("ID 중복체크가 완료되지 않았습니다.");
        	return false;
        }else{
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
        
      } // 전체체크함수 끝 

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
    	  
    	  if(idvalue.length<6){
              alert("ID는 6자 이상이어야 합니다.");
              $("#id").focus();
              return false;
            } 
    	  if(pwvalue.length<8){
              alert("PW는 8자 이상이어야 합니다.");
              $("#pw").focus();
              return false;
            } 
    	  if(valiCheck(pwvalue)==false){
    		  alert("PW 조건을 충족하지 않습니다. (영문 대소문자, 8자 이상, 특수문자 및 숫자 포함 필수)");
              $("#pw").focus();
              return false;
    	  }
    	
    	  
      }
      function valiCheck(text){ //Password1!
    	  var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/;
    	  if(!reg.test(text)){
    		  return false
    	  }
    	  return true;
      }
      
      // 아이디 중복체크 함수
	 $(document).ready(function(){
          $('#btn_idcheck').on('click', function(){
              $.ajax({
                  type: 'POST',
                  url: 'checkSignupId', // url 콘트롤러 요청
                  data: {
                      "id" : $('#id').val() // json 데이터로 보내겠다.
                  },
                  
                  // ------------------------->
                  
                  success: function(data){
                      if($.trim(data) == 0){
                    	 // alert("사용 가능한 아이디입니다. ")
                    	 idCheckT = 1;
                    	 $('#checkMsg').html('<p style="color:blue">사용 가능한 아이디입니다.</p>');
                      }
                      else{
                         // alert("중복된 아이디입니다.")
                    	  $('#checkMsg').html('<p style="color:red">중복된 아이디입니다.</p>');
                      }
                  },	// end success 
                  error: function(){
                	  alert("there's something wrong...")
                  }
              });    //end ajax    
          });    //end on    
      });

      
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
            
              <div class = "form-id">
	              <label for="name">회원 ID</label>
	              <input type="text" name="id" id="id" placeholder="사용할 아이디"> 
	              <input type="button" id="btn_idcheck" value="중복체크">
	              <br>
	              <div id = "checkMsg" >아직 중복체크를 하지 않았습니다.</div>  
              </div>
              <br>
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