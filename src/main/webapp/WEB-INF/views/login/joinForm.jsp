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
        // var check = nullChek();
        // var lengcheck = lengthChek();
        
        
        if(idCheckT==0){ // 아이디 중복체크 통과 안 했으면...
        	alert("ID 중복체크가 완료되지 않았습니다.");
        	return false;
        }else{
	        if(nullChek()==true){
	        	if(lengthChek()==true){
	        		return true;
	        	}else{
	        	    alert('조건 및 길이를 확인해 주세요.');
	        		return false;
	        	}
	        }else{
	        	alert('공백을 확인해 주세요.');
	        	return false;
	        }
        }
        
      } // 전체체크함수 끝 

      function nullChek(){
          if($("#id").val()==""){
            // alert("ID을 입력해 주세요.");
            $('#checkMsg').html('<p style="color:red">ID를 입력해 주세요.</p>');
            $("#id").focus();
            return false;
          } 
          if($("#pw").val()==""){
            // alert("비밀번호을 입력해 주세요.");
            $('#pwcheckMsg').html('<p style="color:red">PW를 입력해 주세요.</p>');
            return false;
          } 
          if($("#name").val()==""){
            // alert("회원이름을 입력해 주세요.");
            $('#nmcheckMsg').html('<p style="color:red">이름을 입력해 주세요.</p>');
            return false;
          }
           if($("#phone").val()==""){
            // alert("전화번호을 입력해 주세요.");
            $('#clcheckMsg').html('<p style="color:red">전화번호를 입력해 주세요.</p>');
            $("#phone").focus();
            return false;
           } 
          if($("#address").val()==""){
            // alert("자택주소을 입력해 주세요.");
            $('#adcheckMsg').html('<p style="color:red">자택주소를 입력해 주세요.</p>');
            $("#address").focus();
            return false;
           } 
          if($("#email").val()==""){
            // alert("email을 입력해 주세요.");
            $('#emcheckMsg').html('<p style="color:red">email을 입력해 주세요.</p>');
            $("#email").focus();
            return false;
           } 
           
           return true;
      }
      function lengthChek(){
    	  var idvalue = document.querySelector('#id').value;
    	  var pwvalue = document.querySelector('#pw').value;
    	  
    	  if(idvalue.length<6){
              // alert("ID는 6자 이상이어야 합니다.");
              $('#checkMsg').html('<p style="color:red">ID는 6자 이상이어야 합니다.</p>');
              $("#id").focus();
              return false;
            } 
    	  if(pwvalue.length<8){
              // alert("PW는 8자 이상이어야 합니다.");
              $('#pwcheckMsg').html('<p style="color:red">PW는 8자 이상이어야 합니다.</p>');
              $("#pw").focus();
              return false;
            } 
    	  if(valiCheck(pwvalue)==false){
    		  // alert("PW 조건을 충족하지 않습니다. (영문 대소문자, 8자 이상, 특수문자 및 숫자 포함 필수)");
    		  $('#pwcheckMsg').html('<p style="color:red">PW 조건을 충족하지 않습니다. (영문 대소문자, 8자 이상, 특수문자 및 숫자 포함 필수)</p>');
              $("#pw").focus();
              return false;
    	  }
    	  return true
    	
    	  
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
        	  if($("#id").val()==""){ // 공백이면 그냥 종료해라... 
        		  alert('아이디가 입력되지 않았습니다!')
        		  return false;
        	  }
        	  
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
                    	 $('#checkMsg').html('<p style="color:blue">사용 가능한 아이디입니다!</p>');
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

      // div 색바꾸기 함수
      function lengthChek(){
      
      }
      
    </script>
	<link href="${path}./resources/css/sign.css?after" rel="stylesheet"/>
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
		              <!-- <br> -->
		              <div id = "checkMsg" style="color:orange">아직 중복체크를 하지 않았습니다.</div>  
	              </div>
	              <br>
	              <div>
		              <label for="password">비밀번호</label>
		              <input type="password" name="pw" id="pw" placeholder="">
		              <div id = "pwcheckMsg" style="color:orange">waiting...</div>  
	              </div>
	              <br>
	              <div>
		              <label for="username">회원 이름</label>
		              <input type="text" name="name" id="name" placeholder="홍길동">
		              <div id = "nmcheckMsg" style="color:orange">waiting...</div>  
	              </div>
				  <br>
				  <div>
		              <label for="username">전화번호 (*선택)</label>
		              <input type="text" name="phone" id="phone" placeholder="01012341234">
		              <div id = "clcheckMsg" style="color:orange">waiting...</div>  
				  </div>
				  <br>
				  <div>
		              <label for="username">자택 주소 (*메뉴 수령 용도)</label>
		              <input type="text" name="address" id="address" placeholder="도로명 주소 ex:)">
		              <div id = "adcheckMsg" style="color:orange">waiting...</div>  
				  </div>
				  <br>
				  <div>
		              <label for="email">Email</label>
		              <input type="email" name="email" id="email" placeholder="Email">
		              <div id = "emcheckMsg" style="color:orange">waiting...</div> 
				  </div>
	              <br>
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