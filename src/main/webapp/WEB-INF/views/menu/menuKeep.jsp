<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴</title>
<link href="./resources/css/menukeep.css" rel="stylesheet"/>
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
                <a href="#"><span><img src="./resources/img/logo1_ size60.png" alt=""></span></a>
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
                        <a href="menu_List"> 메뉴 주문하기 </a>
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
                        <a href="#"> 마이 페이지 </a>
                        <ul class="submenu">
                            <li>
                                <a href="#"> 주문 내역 </a>
                            </li>
                            <li>
                                <a href="#"> 찜목록 </a>
                            </li>
                            <li>
                                <a href="#"> 나의 리뷰 </a>
                            </li>
                            <li>
                                <a href="#"> 내 정보관리 </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <aside>
            <div id="silde">
                <div id="carouselExampleInterval" class="carousel slide"
                    data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="1000">
                            <img src="./resources/img/sing01.png" width="1260" , height="150"
                                class="d-block w-100" alt="준비중">
                        </div>
                        <div class="carousel-item" data-bs-interval="1000">
                            <img src="./resources/img/sing01.png" width="1260" , height="150"
                                class="d-block w-100" alt="준비중">
                        </div>
                        <div class="carousel-item" data-bs-interval="1000">
                            <img src="./resources/img/sing01.png" width="1260" , height="150" class="d-block w-100"
                                alt="준비중">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button"
                        data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button"
                        data-bs-target="#carouselExampleInterval" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </aside>
        <hr>
        <section id="foodList">
        <div class="img">
            <c:forEach items="${attackList}" var="fname">
                <img src="download?filename=${fname}" width="500" height="450" class="lien">
                <input type="hidden" value="${fname}" class="filename">
            </c:forEach>
            <br>
            <input type="hidden" value="${userid}" class="i_id">
            <input type="hidden" value="${mvo.menu_no}" class="menu_no">
            <input type="hidden" value="${mvo.menu_price}" class="menu_price">
            <input type="hidden" value="${mvo.menu_name}" class="menu_name">
            
            <br>
            <h2><b>${mvo.menu_name}</b></h2>
            <br>
            <h6><b>${mvo.menu_ex}</b></h6>
            <br>
            <h4><b>${mvo.menu_price}원</b></h4>
            <br>
            <hr>
            <br>
            <br>
            <table border=1 class="table">
                <thead>
                    <tr>
                        <td>선택</td>
                        <td>이름</td>
                        <td>가격</td>
                        <td>설명</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${List}" var="mvoo">
                        <tr>
                            <td><input type="checkbox" value="${mvoo.menu_no}" data-price="${mvoo.menu_price}" data-name="${mvoo.menu_name}" class="menuCheckbox"></td>
                            <td>${mvoo.menu_name}</td>
                            <td>${mvoo.menu_price}원</td>
                            <td>${mvoo.menu_ex}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br>
            <br>
            <button type="button" onclick="submitOrder()" id="kkk">주문하기</button>
        </div>
    	</section>
        <hr>
        <section class="main-banner">
            <div class="banner notice">
                <a href="#"> 공지사항 / 안내 </a>
            </div>
            <div class="banner event">
                <a href="#"> 이벤트 </a>
            </div>
        </section>
        <footer>
            <div class="footer-box">
                <div class="footer-logo">
                    <a href="#"><img src="./resources/img/logo1_ size60.png" alt=""></a>
                </div>
                <div class="footer-con">
                    <div class="con-text"><span> 상호명 : Golden Egg chicken (골든에그) </span></div>
                    <div class="con-text"><span> 대표자 : 송유미 </span></div>
                    <div class="con-text"><span> 사업자등록번호 : 112-00-001234 </span></div>
                    <div class="con-text"><span> 대표번호 : 031-500-1234 </span></div>
                    <div class="con-text"><span> 주소 : 경기도 수원시 중부대로 500 (인계동) </span></div>
                    <div class="con-text"><span> 이메일 : goldenEgg @ gmail.com </span></div>
                    <div class="con-text"><span> COPYRIGHT © 2024 IDUS KOREA. ALL RIGHTS RESERVED. </span></div>
                </div>
                <div class="sns">
                    <span><a href="#"><img src="./resources/img/instahram_icon.jpg" alt=""></a></span>
                    <span><a href="#"><img src="./resources/img/facebook_icon.jpg" alt=""></a></span>
                    <span><a href="#"><img src="./resources/img/twiter_icon.jpg" alt=""></a></span>
                </div>
            </div>
        </footer>
    </div>
</body>
<script type="text/javascript">
        function submitOrder() {
            var checkboxes = document.querySelectorAll('.menuCheckbox:checked');
            var selectedValues = Array.from(checkboxes).map(cb => cb.value);
            var selectedNames = Array.from(checkboxes).map(cb => cb.getAttribute('data-name'));
            var basePrice = parseFloat(document.querySelector('.menu_price').value);
            var baseName = document.querySelector('.menu_name').value;
            var userid = document.querySelector('.i_id').value;
            var totalPrice = basePrice;
            var allNames = baseName;

            checkboxes.forEach(cb => {
                totalPrice += parseFloat(cb.getAttribute('data-price')) || 0;
                allNames += ', ' + cb.getAttribute('data-name');
            });

            if (isNaN(totalPrice)) {
                alert("총 가격 계산에 오류가 발생했습니다.");
                return false;
            }

            if (selectedValues.length === 0) {
                alert("하나 이상의 항목을 선택하세요.");
                return false;
            }

            if (selectedValues.length > 3) {
                alert("3개까지 선택이 가능합니다.");
                return false;
            }

            // URL 파라미터 생성
            var params = new URLSearchParams();
            params.append('i_no', '47'); // 임의 값, 실제 값으로 변경
            params.append('i_id', userid); // 임의 값, 실제 값으로 변경
            params.append('menu_no', document.querySelector('.menu_no').value);
            for (var i = 0; i < selectedValues.length; i++) {
                params.append('menu_no' + (i + 2), selectedValues[i]); // +2 to start menu_no2
            }
            params.append('i_price', totalPrice);
            params.append('menu_name', allNames);

            // GET 요청 전송
            var url = 'item_inputSave?' + params.toString();
            window.location.href = url;
        }
    </script>
</html>