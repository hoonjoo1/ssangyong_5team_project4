<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/> 
<!DOCTYPE html>
<html>

	<head>
	    <meta charset="UTF-8">
	    <meta name="description" content="Ogani Template">
	    <meta name="keywords" content="Ogani, unica, creative, html">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <title>우리끼니 | 같이먹어요</title>
	
	    <!-- Google Font -->
	    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
	
	    <!-- Css Styles -->	    
	    <link rel="stylesheet" href="res/css/bootstrap.min.css" type="text/css">
	    <link rel="stylesheet" href="res/css/font-awesome.min.css" type="text/css">
	    <link rel="stylesheet" href="res/css/elegant-icons.css" type="text/css">
	    <link rel="stylesheet" href="res/css/nice-select.css" type="text/css">
	    <link rel="stylesheet" href="res/css/jquery-ui.min.css" type="text/css">
	    <link rel="stylesheet" href="res/css/owl.carousel.min.css" type="text/css">
	    <link rel="stylesheet" href="res/css/slicknav.min.css" type="text/css">
	    <link rel="stylesheet" href="res/css/style.css" type="text/css">
	    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
	    <script>
	    	$(document).ready(function(){
	    		$("#regBtn").click(function(){
	    			if(confirm("등록하시겠습니까?")){
	    				if($("[name=title]").val()==""||$("[name=content]").val()==""){
	    					alert("필수항목을 입력해주세요");
	    					return;
	    				}
	    				$("form").submit();
	    			}
	    		});
	    		
	    		$("#goETList").click(function(){
					location.href="${path}/et.do?method=list";
				});
	    	});
	    	
	    
	    
	</head>
	
	<body>
	    <!-- Page Preloder -->
	    <div id="preloder">
	        <div class="loader"></div>
	    </div>
	
	
	    <!-- Header Section Begin -->
	    <header class="header">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-3">
	                    <div class="header__logo">
	                        <a href="./index.html"><img src="res/img/logo.png" alt=""></a>
	                    </div>
	                </div>
	                <div class="col-lg-6">
	                    <nav class="header__menu">
	                        <ul>
	                            <li><a href="./index.html">Home</a></li>
	                            <li class="active"><a href="./shop-grid.html">Shop</a></li>
	                            <li><a href="#">Pages</a>
	                                <ul class="header__menu__dropdown">
	                                    <li><a href="./shop-details.html">Shop Details</a></li>
	                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
	                                    <li><a href="./checkout.html">Check Out</a></li>
	                                    <li><a href="./blog-details.html">Blog Details</a></li>
	                                </ul>
	                            </li>
	                            <li><a href="./blog.html">Blog</a></li>
	                            <li><a href="./contact.html">Contact</a></li>
	                        </ul>
	                    </nav>
	                </div>
	            </div>
	        </div>
	    </header>
	    <!-- Header Section End -->
	
	    <!-- Breadcrumb Section Begin -->
	    <section class="breadcrumb-section set-bg" data-setbg="res/img/breadcrumb.jpg">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12 text-center">
	                    <div class="eattogether__text">
	                        <h2>같이 먹어요</h2>
	                        <div class="eattogether__option">
	                            <a href="./index.html">Home</a>
	                            <span>EatTogether</span>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	    <!-- Breadcrumb Section End -->
	
	    <!-- Checkout Section Begin -->
	    <section class="breadcrumb-section set-bg" data-setbg="project4/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="eattogether__text" id="goETList">
                        <h2>같이 먹어요</h2>
                        <div class="eattogether__option">
                            <a href="./index.html">Home</a>
                            <span>EatTogether</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="eattogether__form">
                <h4>같이 먹어요</h4>
                <form method="post" action="${path}/et.do?method=insert">
                    <div class="row">
                        <div class="col-lg-12 col-md-8">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="eattogether__input">
                                        <p>제목<span>*</span></p>
                                        <input type="text" name="title">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="eattogether__input">
                                        <p>내용<span>*</span></p>
                                        <textarea name="content"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="eattogether__input">
                                        <p>모임지역<span>*</span></p>
                                        <select name="loc">
                                        	<option>서울</option>
                                        	<option>경기도</option>
                                        	<option>강원도</option>
                                        	<option>충청도</option>
                                        	<option>전라도</option>
                                        	<option>경상도</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="product__details__quantity">
                                        <div class="eattogether__input">
                                            <p>모집인원<span>*</span></p>
                                        </div>
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" name="meetcnt" value="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="eattogether__input">
                                        <p>모집날짜<span>*</span></p>
                                        <input type="date" name="meetdate">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="eattogether__input">
                                        <p>모집 성별<span>*</span></p>
                                        <div class="eattogether__select meetgender">   
                                            <input type="radio" name="meetgender" id="everyGender" value="성별무관">
                                            <label for="everyGender">성별무관</label>
                                        </div>
                                        <div class="eattogether__select meetgender">
                                            <input type="radio" name="meetgender" id="onlyWoman" value="여자만">
                                            <label for="onlyWoman">여자만</label>
                                        </div>
                                        <div class="eattogether__select meetgender">
                                            <input type="radio" name="meetgender" id="onlyMan" value="남자만">
                                            <label for="onlyMan">남자만</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="eattogether__input">
                                        <p>모집 연령<span>*</span></p>
                                        <div class="eattogether__select meetage">   
                                        	<input type="radio" name="meetage" id="everyAge" value="연령무관">
                                            <label for="everyAge">연령무관</label>
                                        </div>
                                        <div class="eattogether__select meetage">
                                            <input type="radio" name="meetage" id="teen" value="10대">
                                            <label for="teen">10대</label>
                                        </div>
                                        <div class="eattogether__select meetage">
                                            <input type="radio" name="meetage" id="twenties" value="20대">
                                            <label for="twenties"> 20대</label>
                                        </div>
                                        <div class="eattogether__select meetage">
                                            <input type="radio" name="meetage" id="thirties" value="30대">
                                            <label for="thirties">30대 </label>
                                        </div>
                                        <div class="eattogether__select meetage">
                                            <input type="radio" name="meetage" id="forties" value="40대">
                                            <label for="forties">40대</label>
                                        </div>
                                        <div class="eattogether__select meetage">
                                            <input type="radio" name="meetage" id="fifties" value="50">
                                            <label for="fifties">50대</label>
                                        </div>
                                        <div class="eattogether__select meetage">
                                            <input type="radio" name="meetage" id="sixties" value="60">
                                            <label for="sixties">60대 이상</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="eattogether__input">
                                        <p>모집 연령<span>*</span></p>
                                        <div class="eattogether__select paytype">   
                                            <input type="radio" name="paytype" id="dutch" value="더치페이">
                                            <label for="dutch">더치페이</label>
                                        </div>
                                        <div class="eattogether__select paytype">
                                            <input type="radio" name="paytype" id="host" value="주최자 지불">
                                            <label for="host">주최자 지불</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    	</div>
                	</div>
                </form>
                <input type="button" class="site-btn" id="regBtn" value="작성완료"/>
            </div>
        </div>
    </section>
	    <!-- Checkout Section End -->
	
	
	    <!-- Js Plugins -->
	    <script src="res/js/jquery-3.3.1.min.js"></script>
	    <script src="res/js/bootstrap.min.js"></script>
	    <script src="res/js/jquery.nice-select.min.js"></script>
	    <script src="res/js/jquery-ui.min.js"></script>
	    <script src="res/js/jquery.slicknav.js"></script>
	    <script src="res/js/mixitup.min.js"></script>
	    <script src="res/js/owl.carousel.min.js"></script>
	    <script src="res/js/main.js"></script>
	</body>
</html>