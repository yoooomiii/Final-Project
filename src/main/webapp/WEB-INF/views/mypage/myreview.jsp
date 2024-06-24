<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<style>
h2 {
	text-align: center;
	font-size: xx-large;
}

hr {
	width: 500px;
	border: 3px solid grey;
}

#reviewcard {
	float: left;
	width: 900px;
	height: 250px;
	margin-top: 20px;
    margin-left: 150px;
	border: 4px solid skyblue;
	border-radius: 20px;
}

#photo {
	float: left;
	width: 350px;
	height: 230px;
	margin-left: 8px;
	margin-top: 10px;
	/*  border: 1px solid blue;  */
}

#content {
	float: left;
	width: 480px;
	height: 230px;
	margin-left: 45px;
	margin-top: 10px;
	font-size: x-large;
	font-weight: normal;
	
   /*  border: 1px solid red;  */
}

.image-container {
	display: flex;
	gap: 30px; /* 이미지 간의 간격 설정 */
	justify-content: center; /* 이미지를 가운데 정렬 */
	align-items: center; /* 이미지가 가운데 정렬되도록 설정 */
}

.image-container img {
	height: 220px; /* 원하는 높이로 설정 */
	width: auto;
}
#num{
    float: left;
    width: 150px;
    height: 30px;
    font-size :22px;
   /*  border: 1px solid black; */
}
#star{
    float: left;
    width: 170px;
    height: 30px;
    font-size :22px;
    margin-left: 150px;
  /*   border: 1px solid black; */
}
#menuname{
    float: left;
    width: 300px;
    height: 40px;
    margin-top: 10px;
     font-size :24px;
   /*  border: 1px solid black; */
}
#review{
    float: left;
    width: 480px;
    height: 120px;
     font-size :24px;
    margin-top: 10px;
    /* border: 1px solid black; */
}
.star-rating {
    display: inline-block;
    padding: 0;
    margin: 0;
}

.star-rating label.star {
    font-size: 1.2em; /* 별의 크기를 조정 */
    color: #ddd;
    cursor: pointer;
}

.star-rating label.star.checked {
    color: gold;
}

</style>
<body>
	<h2>나의 리뷰</h2>
	<hr>
	<c:forEach items="${review}" var="review">
		<div id="reviewcard">
			<div id="photo">
				<div class="image-container">
					<c:forEach items="${photolist}" var="photo">
						<c:if
							test="${review.re_num == photo.re_num && not empty photo.filename}">
							<img
								src="${pageContext.request.contextPath}/downloads?filename=${photo.filename}"
								alt="Review Photo" width="220" height="220">
						</c:if>
					</c:forEach>
				</div>
			</div>
			<div id="content">
                <div id="num">${review.re_num}번</div>
			    <div id="star">
			   		 <div class="star-rating">
   						 <c:forEach var="star" begin="1" end="5">
      					  	<label for="rate${star}" class="star ${review.re_star >= star ? 'checked' : ''}">★</label>
   					 	</c:forEach>
					</div>			 
			    </div>
                <div id="menuname">메뉴 이름 : 메뉴 이름</div>
                 <div id="review">${review.re_ex}</div>
			</div>
		</div>
	</c:forEach>
	



</body>
</html>