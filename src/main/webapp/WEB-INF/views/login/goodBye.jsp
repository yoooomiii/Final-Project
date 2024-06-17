<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session ="true" %>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>bye...</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
		function call_confirm(){
			
			if(confirm("제출하시겠습니까?")){
				alert("정상적으로 제출되었습니다.");
				return true;
			}else{
				alert("탈퇴 취소");
				return false;
			}
			
		}
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
            <form action="quiteConfirm" method="post">
            	ID 입력: <input type="text" name="id"> 
            	PW 입력: <input type="text" name="pw"> 
            	<button type="submit">제출</button>
            </form>
            <form action="quiteAccount" method="post" onsubmit="return call_confirm()" id="quiteFrm">
              <div id="form-controls">
			  	<input type="hidden" name="id" value=${userid }>
                <button type="submit" id="toggleSignIn">회원탈퇴</button>
              </div>
            </form>
          </div>
    </div>
</body>
</html>

