<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id="foodList">
            <div class="img">
                <c:forEach items="${attackList}" var="fname">
					<img src="download?filename=${fname}" width="500" , height="450" class="lien">
				</c:forEach>
                <br>
                <h2><b>${mvo.menu_name }</b></h2>
                <br>
                <h6><b>${mvo.menu_ex }</b></h6>
                <br>
                <h4><b>${mvo.menu_price }원</b></h4>
                <br>
                <hr>
                <br>
                <br>
                <table border=1 class="table">
					<thead>
						<tr>
							<td>선택</td>
							<td>이름</td>
							<td>갸격</td>
							<td>설명</td>
						</tr>
					</thead>
                	<tbody>
                		<c:forEach items="${List}" var="mvoo">
                			<tr>
                				<td><input type="checkbox" value="${mvoo.menu_no}"></td>
								<td>${mvoo.menu_name}</td>
								<td>${mvoo.menu_price}</td>
								<td>${mvoo.menu_ex}</td>
                			</tr>
                		</c:forEach>
                	</tbody>
                </table>
                <br>
                <br>
                <a href="Detail?menu_no=${mvo.menu_no }menu_no=${mvo.menu_no }"><button type="submit" onclick="return checkbox()" id="kkk">${mvo.menu_price }원 주문하기</button></a>
            </div>
        </section>
</body>
<script type="text/javascript">
	function checkbox(){
		var flag = false;
		var a = []
		var values = document.querySelectorAll(".a")
	
		for(var i=0; i<values.length; i++){
			if(values[i].checked){
				a[i]= values[i]
				alert(values[i].value)
			}
		}
		
		return  location.href="Detail?side_no="+a
	}

</script>
</html>