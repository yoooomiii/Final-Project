<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${path}/resources/css/main.css" rel="stylesheet"/>
<title> Home </title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</head>
<style>
#box{
	float:left;
	width:800px;
	height:700px;
	margin-left: 230px;
	margin-top : 130px;
	border: 3px solid gray;
}

</style>

<body>
	<div id="Box">
		<header>
			<div class="login box">
				<a href="#"><span> 로그인 </span></a>
			</div>
			<div class="join box">
				<a href="#"><span> 회원가입 </span></a>
			</div>
		</header>
        
		<nav>
            <div class="logo">
				<a href="#"><span><img src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
			</div>
			<div class="menu">
				<ul>
                    <li>
                        <a href="#"> HOME </a>
                    </li>
                    <li>
                        <a href="#"> 브랜드 소개 </a>
                        <ul class="submenu">
                            <li>
                                <a href="#"> 브랜드 소개 </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"> 메뉴 주문하기 </a>
                        <ul class="submenu">
                            <li>
                                <a href="#"> 인기 메뉴 </a>
                            </li>
                            <li>
                                <a href="#"> 대표 메뉴 </a>
                            </li>
                            <li>
                                <a href="#"> 치킨 메뉴 </a>
                            </li>
                            <li>
                                <a href="#"> 사이드 / 음료 </a>
                            </li>
                            <li>
                                <a href="#"> 세트 메뉴 </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"> 고객센터 </a>
                        <ul class="submenu">
                            <li>
                                <a href="#"> 1:1 문의 </a>
                            </li>
                            <li>
                                <a href="#"> FAQ </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="mypage"> 마이 페이지 </a>
                        <ul class="submenu">
                            <li>
                                <a href="mypage"> 주문 내역 </a>
                            </li>
                            <li>
                                <a href="mypage"> 찜목록 </a>
                            </li>
                            <li>
                                <a href="mypage"> 나의 리뷰 </a>
                            </li>
                            <li>
                                <a href="mypage"> 내 정보관리 </a>
                            </li>
                        </ul>
                    </li>
                </ul>
			</div>
		</nav>
		<aside>
		
		
		<div id="box">
			
		
		
		</div>

</body>
</html>