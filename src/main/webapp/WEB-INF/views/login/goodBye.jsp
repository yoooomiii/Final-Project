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
    	var usCheckT = 0;
    	// 탈퇴 컨펌 
		function call_confirm(){
    		if(usCheckT==0){
    			alert("회원정보 확인을 먼저 진행해 주세요.");
    			return false;
    		}
			
			if(confirm("정말 탈퇴하시겠습니까?")){
				alert("정상적으로 제출되었습니다.");
				return true;
			}else{
				alert("탈퇴 취소");
				return false;
			}
			
		}
		 // 아이디 중복체크
		 $(document).ready(function(){
	          $('#btn_uscheck').on('click', function(){
	        	  if($("#id").val()==""){ // 공백이면 그냥 종료
	        		  alert('아이디가 입력되지 않았습니다!')
	        		  return false;
	        	  }
	              $.ajax({ // ajax
	                  type: 'POST',
	                  url: 'quiteConfirm_now', // url 콘트롤러 요청
	                  data: {
	                      "id" : $('#id').val(),
	                      "pw" : $('#pw').val()// json 데이터
	                  },
	                  // ------------------------->
	                  success: function(data){
	                      if($.trim(data) == 1){
	                    	 // alert("회원 정보가 확인되었습니다.")
	                    	 usCheckT = 1;
	                    	 $('#uschkpan').html('<p style="color:blue">회원 정보가 확인되었습니다.</p>');
	                      }
	                      else{
	                         // alert("경고: 회원 정보가 존재하지 않습니다.")
	                    	  $('#uschkpan').html('<p style="color:red">경고: 회원 정보가 존재하지 않습니다.</p>');
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
          <!-- Sign in form -->
          <div id="sign-in-container" >
            <h3>Good bye...</h3>
            <h4>
            	이별은 또 다른 시작. 
            </h4>
            <h5>
            	그동안 골든에그를 사랑해 주셔서 감사했습니다.
            </h5>
            <form action="quiteAccount" method="post" onsubmit="return call_confirm()" id="quiteFrm">
            	ID 입력: <input type="text" name="id" id="id"> 
            	PW 입력: <input type="text" name="pw" id ="pw"> 
            	<input type="button" id="btn_uscheck" value="회원정보 확인">
            	<div style="color:orange" id="uschkpan">(wait... 아직 제출하지 않았습니다.)</div>
              <div id="form-controls">
			  	<!-- <input type="hidden" name="id" value=${userid }> -->
                <button type="submit" id="toggleSignIn">회원탈퇴</button>
              </div>
            </form>
          </div>
    </div>
</body>
</html>