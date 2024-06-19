<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="cart__list">
    <thead>
        <tr>
            <td colspan="2">체크</td>
            <td>주문번호</td>
            <td>메뉴사진</td>
            <td>메뉴이름</td>
            <td>리뷰</td>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="rvo" items="${reviews}">
            <tr class="cart__list__detail">
                <td style="width: 5%;"></td>
                <td><input type="checkbox"></td>
                <td>${rvo.re_no}</td>
                <td>메뉴사진</td>
                <td>메뉴이름</td>
                <td>
                    <form action="reviewcontent" method="get">
                        <button>리뷰보기</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>