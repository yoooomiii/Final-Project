<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${path}/resources/css/faq.css" rel="stylesheet"/>
<link href="${path}/resources/css/menubar.css" rel="stylesheet"/>
<title> Info Page </title>
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
			<c:if test="${userid != null }">
					'${userid }'님 접속을 환영합니다.
			</c:if>
			<c:if test="${userid == null }">
				<div class="login box">
						<a href="login"><span> 로그인 </span></a>
				</div>
			</c:if>
			<c:if test="${userid == null }">
				<div class="join box">
						<a href="join"><span> 회원가입 </span></a>
				</div>
			</c:if>
			<c:if test="${userid != null }">
				<div class="logout box">
						<a href="logout"><span> 로그아웃 </span></a>
				</div>
			</c:if>
			<c:if test="${userid != null }">
				<div class="quite box">
						<a href="byebye"><span> 회원탈퇴 </span></a>
				</div>
			</c:if>
		</header>
        
		<nav>
            <div class="logo">
				<a href="./"><span><img src="${path}/resources/img/logo1_ size60.png" alt=""></span></a>
			</div>
			<div class="menu">
				<ul>
                    <li>
                        <a href="./"> HOME </a>
                    </li>
                    <li>
                        <a href="brand"> 브랜드 소개 </a>
                        <ul class="submenu">
                            <li>
                                <a href="brand"> 브랜드 소개 </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="menuForm"> 메뉴 주문하기 </a>
                        <ul class="submenu">
                            <li>
                                <a href="menuForm"> 인기 메뉴 </a>
                            </li>
                            <li>
                                <a href="menuForm"> 대표 메뉴 </a>
                            </li>
                            <li>
                                <a href="menuForm"> 전체 메뉴 </a>
                            </li>
                            <li>
                                <a href="menuForm"> 사이드 / 음료 </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="infomain"> 고객센터 </a>
                        <ul class="submenu">
                            <li>
                                <a href="ask"> 1:1 문의 </a>
                            </li>
                            <li>
                                <a href="faqpage"> FAQ </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="mypage"> 마이 페이지 </a>
                        <ul class="submenu">
                            <li>
                                <a href="mylist"> 주문 내역 </a>
                            </li>
                            <li>
                                <a href="picklist"> 찜목록 </a>
                            </li>
                            <li>
                                <a href="allreview"> 나의 리뷰 </a>
                            </li>
                            <li>
                                <a href="mypage"> 내 정보관리 </a>
                            </li>
                        </ul>
                    </li>
                </ul>
			</div>
		</nav>
		<section>
            <hr style="border:0px; height: 30px; background : linear-gradient(to left, rgb(230, 217, 15), rgb(247, 203, 110), rgb(255, 255, 20))" >
            <h1>FAQ</h1>
            <hr>
            <div class="question-menu">
                <ul class="category">
                    <li><input type="button" value="회 원" onclick="showCategory('users')"></li>
                    <li><input type="button" value="주 문" onclick="showCategory('order')"></li>
                    <li><input type="button" value="결 제" onclick="showCategory('payment')"></li>
                    <li><input type="button" value="배 달" onclick="showCategory('delivery')"></li>
                    <li><input type="button" value="기 타" onclick="showCategory('other')" ></li>
                </ul>
            </div>
            <hr style="margin-left: auto; margin-right: auto; border:0px; width: 700px; height: 10px; background-color: rgb(200, 200, 200);" >
            
            <div class="question-content-all">
                <div class="question-category" id="users">
                    <div class="question-ask">
                        <span> Q. Golden Egg Chicken 웹사이트에서 회원 가입이 필요한가요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. Golden Egg Chicken의 모든 메뉴를 검색하고 주문하려면 회원 가입이 필요합니다. 
                            <br>
                            회원 가입은 간단하며, 온라인 계정을 통해 최신 할인 및 이벤트 정보와 특별 혜택도 받을 수 있습니다. </span>
                    </div>

                    
                    <div class="question-ask">
                        <span> Q. Golden Egg Chicken 회원 가입 절차는 어떻게 되나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                            </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 회원 가입 페이지에서 필요한 정보(사용하실 아이디, 비밀번호, 개인 회원 확인을 위한 이름, 이메일, 전화번호 등)를 입력합니다.<br>
                            필수 정보: 일반적으로 이름, 이메일 주소, 비밀번호가 필수입니다. 추가적으로 생년월일, 연락처 등이 포함될 수 있습니다.<br>
                            입력한 정보의 유효성을 검사하고, 이메일 인증이나 핸드폰 인증 등을 요구할 수 있습니다.<br>
                            가입 동의 및 필수 약관 동의 후 가입을 완료합니다.</span>
                        </div>
                        
                        <div class="question-ask">
                            <span> Q. 회원 가입 시 유효성 검사는 어떻게 이루어지나요? </span>
                            <button class="toggle-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                              </svg>
                            </button>
                        </div>
                        <div class="question-answer hidden-ex">
                            <span> 입력한 정보의 형식(이메일 주소의 유효성, 아이디의 사용 여부 등)을 검사하여 유효성 검사를 실행합니다. <br>
                                중복된 이메일 주소나 이미 존재하는 회원 정보를 확인할 수 있습니다. </span>
                        </div>

                        <div class="question-ask">
                            <span> Q. 로그인 방법은 무엇인가요? </span>
                            <button class="toggle-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                              </svg>
                            </button>
                        </div>
                        <div class="question-answer hidden-ex">
                            <span> A. 로그인 페이지에서 회원가입 시 입력한 아이디와 비밀번호를 입력하여 로그인 하시면 웹사이트를 회원으로 이용하실 수 있습니다. </span>
                        </div>

                        <div class="question-ask">
                            <span> Q. 비밀번호를 잊어버렸을 때 어떻게 하나요? </span>
                            <button class="toggle-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                              </svg>
                            </button>
                        </div>
                        <div class="question-answer hidden-ex">
                            <span> A. 비밀번호를 재설정하는 링크를 제공하거나, 등록된 이메일 주소로 임시 비밀번호를 발송하여 재설정할 수 있는 방법을 제공합니다. </span>
                        </div>

                        <div class="question-ask">
                            <span> Q. 회원 정보를 수정하는 방법은 어떻게 되나요? </span>
                            <button class="toggle-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                              </svg>
                            </button>
                        </div>
                        <div class="question-answer hidden-ex">
                            <span> A. 로그인 후 마이페이지의 회원 정보 수정에서 정보를 수정할 수 있습니다. 주로 이름, 비밀번호, 연락처 등을 수정할 수 있습니다. </span>
                        </div>

                        <div class="question-ask">
                            <span> Q. 회원 탈퇴 절차는 어떻게 되나요? </span>
                            <button class="toggle-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                              </svg>
                            </button>
                        </div>
                        <div class="question-answer hidden-ex">
                            <span> A. 탈퇴를 원할 경우, 회원 탈퇴 페이지에서 탈퇴 요청을 할 수 있습니다. <br>
                                일반적으로 탈퇴 사유를 선택하고 비밀번호를 입력하여 탈퇴를 완료할 수 있습니다. <br>
                                탈퇴 후, 일정 시간 재가입이 불가할 수 있습니다. </span>
                        </div>

                        <div class="question-ask">
                            <span> Q. 개인 정보는 어떻게 보호되나요? </span>
                            <button class="toggle-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                              </svg>
                            </button>
                        </div>
                        <div class="question-answer hidden-ex">
                            <span> A. 회원 정보는 보안 프로토콜(SSL 등)을 통해 암호화되며, 접근 권한이 제한된 데이터베이스에 안전하게 저장됩니다. <br>
                                정보 유출을 방지하기 위해 보안 조치를 강화하고 있습니다. </span>
                        </div>

                        <div class="question-ask">
                            <span> Q. 회원 정보는 어떤 목적으로 사용되나요? </span>
                            <button class="toggle-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                              </svg>
                            </button>
                        </div>
                        <div class="question-answer hidden-ex">
                            <span> A. 회원 정보는 주로 회원 서비스 제공, 구매 처리, 고객 지원 등의 목적으로 사용되며, 법적 요구 사항을 준수하기 위해 필요한 경우가 있을 수 있습니다. </span>
                        </div>

                        <div class="question-ask">
                            <span> Q. 로그인을 할 수 없어요. </span>
                            <button class="toggle-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                              </svg>
                            </button>
                        </div>
                        <div class="question-answer hidden-ex">
                            <span> A. 로그인이 정상적으로 이루어지지 않을 경우, 입력하신 아이디와 비밀번호가 일치한지 다시 한번 확인해 주시고,
                                비밀번호를 재설정하거나 사이트 문제상 로그인이 되지 않을 경우 고객 지원에 문의하여 도움을 받을 수 있습니다. </span>
                        </div>
                </div>

                <div class="question-category" id="order">
                    <div class="question-ask hidden-ex">
                        <span> Q. Golden Egg Chicken에서 주문하는 방법은 무엇인가요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. Golden Egg Chicken에서 주문하려면 웹사이트에 로그인 후 메뉴를 선택하고 장바구니에 담아 결제 절차를 거칩니다. <br>
                            주문을 위해 회원 가입이 필요합니다.</span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 주문을 취소하고 싶어요. 주문 취소는 어떻게 할 수 있나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 주문 취소는 결제 전까지는 웹사이트에서 자유롭게 가능합니다. <br>
                            주문 후 취소를 원하시면 주문내역에서 확인하고 취소할 수 있습니다. </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 주문이 얼마나 걸리나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 주문 접수 후 주문과 결제 내역을 확인하고 조리 및 준비 단계를 거쳐 배달 라이더와 매칭을 시도합니다. <br>
                            라이더가 음식을 픽업하면 해당 주소의 거리와 배달 상황에 따라 배달 에상 시간이 조정됩니다. <br>                           
                            주문이 접수된 후 배송 준비 상태는 주문 상세 페이지에서 확인하실 수 있습니다. </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 주문 상태를 어떻게 확인하나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 주문 상태는 마이페이지의 주문 내역에서 실시간으로 확인하실 수 있습니다. <br>
                            배송 준비, 발송, 배송 완료 등의 상태를 확인할 수 있습니다. </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 주문을 위한 최소 금액이 있나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 주문을 위한 최소 금액은 웹사이트의 상세 페이지에서 확인하실 수 있습니다. <br>
                            일반적으로 배송비를 포함한 최소 주문 금액이 적용될 수 있습니다. </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 주문한 상품을 추가하거나 취소할 수 있나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 주문 완료 후 추가하거나 주문을 취소하는 것은 어려울 수 있습니다. <br>
                            재주문을 원하시는 경우 새로운 주문을 접수하거나 고객 지원에 문의하여 도움을 받으실 수 있습니다. </span>
                    </div>
       
                </div>

                <div class="question-category" id="payment">
                    <div class="question-ask">
                        <span> Q. 어떤 결제 방법을 지원하나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. Golden Egg Chicken에서는 다음과 같은 다양한 결제 방법을 지원합니다: <br>
                            신용카드 결제, &nbsp; 직불카드 결제, &nbsp; 핸드폰 결제, &nbsp; 온라인 계좌이체, &nbsp; 간편 결제 서비스 (카카오페이, 네이버페이 등)
                        </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 결제 시 안전한가요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. Golden Egg Chicken은 고객님의 결제 정보를 안전하게 보호하기 위해 다음과 같은 보안 조치를 취하고 있습니다: <br>
                            SSL(Secure Socket Layer) 암호화 프로토콜을 통한 데이터 전송 보호 <br>
                            PCI DSS(결제 카드 산업 데이터 보안 표준) 준수 <br>
                            개인정보 보호 정책을 엄격히 준수하여 고객 정보를 안전하게 관리 <br>
                             </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 주문이 얼마나 걸리나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 주문 접수 후 주문과 결제 내역을 확인하고 조리 및 준비 단계를 거쳐 배달 라이더와 매칭을 시도합니다. <br>
                            라이더가 음식을 픽업하면 해당 주소의 거리와 배달 상황에 따라 배달 에상 시간이 조정됩니다. <br>                           
                            주문이 접수된 후 배송 준비 상태는 주문 상세 페이지에서 확인하실 수 있습니다. </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 결제 후 주문한 상품의 교환이나 환불은 어떻게 요청하나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 상품의 교환이나 환불을 원하실 경우, 웹사이트의 고객 센터를 통해 신속하게 처리할 수 있습니다. <br> 
                            교환 및 환불 정책에 따라 요청을 진행하실 수 있습니다. <br>
                            이미 결제된 경우, 환불 절차에 따라 결제 수단으로 환불됩니다. <br>
                            환불 정책은 구체적인 사유에 따라 달라질 수 있습니다.</span>
                    </div>             
                    
                    <div class="question-ask">
                        <span> Q. 결제에 문제가 발생했을 경우 어떻게 해결하나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 결제 과정에서 문제가 발생했을 경우 고객 지원 센터로 문의하여 주시면 신속히 도움을 드리겠습니다. <br>
                            보다 자세한 도움을 받으시려면 주문 번호와 함께 상세한 상황을 설명해 주세요. </span>
                    </div>             
                </div>

                <div class="question-category" id="delivery">
                    <div class="question-ask">
                        <span> Q. 주문이 접수되면 음식 배달까지 어떤 절차를 거치나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 주문이 접수되면 우선 주문 내역이 확인되고, 조리 및 포장이 준비됩니다. <br>
                            그 후 배송 라이더에게 배정되어 최종적으로 배달이 시작됩니다.
                        </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 배달이 시작된 후 배달 추적이 가능한가요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 라이더가 배치가 되고 배달이 시작되면 고객은 주문 상세 페이지를 통해 라이더의 위치와 배달 상태를 실시간으로 추적할 수 있습니다. <br>
                        </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 배달 시간은 얼마나 걸리나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 주문 접수 후 대략적인 배달 소요 시간은 배달 주소와 지역, 교통 상황, 기상 상황에 따라 달라질 수 있습니다. </span>
                    </div>

                    <div class="question-ask">
                        <span> Q. 배달 중 문제가 발생했을 때 어떻게 대응하나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 배달 중 문제가 발생한 경우 해당 고객센터 문의 전화로 전하 주시면 신속히 해결해드리겠습니다. </span>
                    </div>             
                    
                    <div class="question-ask">
                        <span> Q.  배달 가능한 지역은 어떻게 되나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A.  Golden Egg Chicken은 광범위한 지역에 배송 서비스를 제공하며, 구체적인 배송 가능 지역은 웹사이트에서 확인하실 수 있습니다. <br>
                            특정 지역에 대한 배송 문의는 고객 서비스 센터에 문의하시기 바랍니다. </span>
                    </div> 

                    <div class="question-ask">
                        <span> Q.  배달 시간을 변경하고 싶을 때 어떻게 해야 하나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 배달 시간은 회원 임의로 변경할 수 없음을 알려드립니다. </span>
                    </div>             
                </div>
                
                <div class="question-category" id="other">
                    <div class="question-ask">
                        <span> Q. Golden Egg Chicken의 웹사이트 접속 방법은 어떻게 되나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. Golden Egg Chicken 웹사이트는 브라우저에서 www.goldeneggschicken.com을 입력하거나 검색하여 접속하실 수 있습니다.
                        </span>
                    </div>
    
                    <div class="question-ask">
                        <span> Q. Golden Egg Chicken 웹사이트에서 제공하는 서비스는 무엇인가요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A.  Golden Egg Chicken 웹사이트에서는 다음과 같은 서비스를 제공합니다: <br>
                            회원 가입 및 로그인 <br>
                            메뉴 검색 및 주문 <br>
                            배송 정보 확인 <br>
                            이벤트 및 할인 정보 제공 <br>
                        </span>
                    </div>
    
                    <div class="question-ask">
                        <span> Q. Golden Egg Chicken 웹사이트에서 제공하는 주요 기능은 무엇인가요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. Golden Egg Chicken 웹사이트의 주요 기능은 다음과 같습니다: <br>
                            다양한 메뉴와 가격 정보 제공 <br>
                            개인 계정 관리 (주문 이력, 개인 정보 수정) <br>
                            실시간 배송 추적 <br>
                            할인 쿠폰 및 이벤트 참여 <br>
                             </span>
                    </div>
    
                    <div class="question-ask">
                        <span> Q. 웹사이트의 이용 방법에 대해 궁금한 사항이 있으면 어디로 문의할 수 있나요? </span>
                        <button class="toggle-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
                          </svg>
                        </button>
                    </div>
                    <div class="question-answer hidden-ex">
                        <span> A. 웹사이트 이용에 관한 모든 문의사항은 고객 서비스 센터를 통해 문의하실 수 있습니다. <br>
                            고객 서비스 전화번호와 이메일 주소는 웹사이트의 고객 지원 페이지에서 확인하실 수 있습니다. </span>
                    </div>  
                </div>

            </div>
        </div>

		<footer>
            <div class="footer-box">
                <div class="footer-logo">
                    <a href="./"><img src="${path}/resources/img/logo1_ size60.png" alt=""></a>
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
                    <span><a href="#"><img src="${path}/resources/img/instahram_icon.jpg" alt=""></a></span>
                    <span><a href="#"><img src="${path}/resources/img/facebook_icon.jpg" alt=""></a></span>
                    <span><a href="#"><img src="${path}/resources/img/twiter_icon.jpg" alt=""></a></span>
                </div>
            </div>
		</footer>
	</div>
</body>
</html>

<script>
    var toggleBtn = document.querySelectorAll('.toggle-btn');

toggleBtn.forEach(function(button) {
    button.addEventListener('click', function() {
        var answerText = this.parentNode.nextElementSibling;
        if(answerText.classList.contains('hidden-ex')) {
            answerText.classList.remove('hidden-ex');
        } else {
            answerText.classList.add('hidden-ex');
        }
    });
});
    
    Window.onload = function () {
        showCategory('users');
    }

    function showCategory(categoryId) {
        var categories = document.querySelectorAll('.question-category');
        categories.forEach(function(category) {
            category.style.display = 'none';
        });

        var selectCategory = document.getElementById(categoryId);
        if(selectCategory) {
            selectCategory.style.display = 'block';
        }
    }

</script>