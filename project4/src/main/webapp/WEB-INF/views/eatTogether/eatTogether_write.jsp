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
	    	});
	    
	    
	    </script>
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
	                        <a href="./index.html"><img src="project4/img/logo.png" alt=""></a>
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
	    <section class="breadcrumb-section set-bg" data-setbg="project4/img/breadcrumb.jpg">
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
	                                        <p>모집 성별<span>*</span></p>
	                                        <div class="eattogether__select">   
	                                            <label for="every">
	                                                성별무관
	                                                <input type="radio" name="meetgender" id="every">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="onlyWoman">
	                                                여자만
	                                                <input type="radio" name="meetgender" id="onlyWoman">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="onlyMan">
	                                                남자만
	                                                <input type="radio" name="meetgender" id="onlyMan">
	                                            </label>
	                                        </div>
	                                    </div>
	                                </div>
	                                <!-- jquery로 연령무관은 모든 연령선택, 다른 연령대 선택 시 각각 선택 가능하도록 구현예정 -->
	                                <div class="col-lg-12">
	                                    <div class="eattogether__input">
	                                        <p>모집 연령<span>*</span></p>
	                                        <div class="eattogether__select">   
	                                            <label for="every">
	                                                연령무관
	                                                <input type="checkbox" name="meetage" id="every" value="0">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="teen">
	                                                10대
	                                                <input type="checkbox" name="meetage" id="teen" value="10">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="twenties">
	                                                20대
	                                                <input type="checkbox" name="meetage" id="twenties" value="20">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="thirties">
	                                                30대
	                                                <input type="checkbox" name="meetage" id="thirties" value="30">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="forties">
	                                                40대
	                                                <input type="checkbox" name="meetage" id="forties" value="40">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="fifties">
	                                                50대
	                                                <input type="checkbox" name="meetage" id="fifties" value="50">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="sixties">
	                                                60대 이상
	                                                <input type="checkbox" name="meetage" id="sixties" value="60">
	                                            </label>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="col-lg-12">
	                                    <div class="eattogether__input">
	                                        <p>모집 연령<span>*</span></p>
	                                        <div class="eattogether__select">   
	                                            <label for="dutch">
	                                                더치페이
	                                                <input type="radio" name="paytype" id="dutch" value="0">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="host">
	                                                주최자 지불
	                                                <input type="radio" name="paytype" id="host" value="host">
	                                            </label>
	                                        </div>
	                                    </div>
	                                </div>
	                                <!--  
	                                <div class="col-lg-12">
	                                    <div class="eattogether__input">
	                                        <p>이런 밥친구가 좋아요!</p>
	                                        <div class="eattogether__select like">   
	                                            <label for="like1">
	                                                밥을 천천히 먹는 사람이 좋아요
	                                                <input type="checkbox" name="like" id="like1" value="0">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select like">
	                                            <label for="like2">
	                                                밥을 느긋하게 먹는 사람이 좋아요
	                                                <input type="checkbox" name="like" id="like2" value="10">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select like">
	                                            <label for="like3">
	                                                이야기 나누며 밥먹는 게 좋아요
	                                                <input type="checkbox" name="like" id="like3" value="20">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select like">
	                                            <label for="like4">
	                                                조용히 밥 먹는 게 좋아요
	                                                <input type="checkbox" name="like" id="like4" value="30">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select like">
	                                            <label for="like5">
	                                                매운음식을 같이 먹을 수 있으면 좋아요
	                                                <input type="checkbox" name="like" id="like5" value="40">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select like">
	                                            <label for="like6">
	                                                밥과 술을 함께하는 게 좋아요
	                                                <input type="checkbox" name="like" id="like6" value="40">
	                                            </label>
	                                        </div>
	                                    </div>
	                                    <div class="eattogether__input">
	                                        <p>이런 밥친구는 싫어요!</p>
	                                        <div class="eattogether__select">   
	                                            <label for="hate1">
	                                                음식을 씹은 채로 말을 하는 건 싫어요
	                                                <input type="checkbox" name="hate" id="hate1" value="0">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="hate2">
	                                                다리를 떠는 건 싫어요
	                                                <input type="checkbox" name="hate" id="hate2" value="10">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="hate3">
	                                                일방적으로 이야기하는 건 싫어요
	                                                <input type="checkbox" name="hate" id="hate3" value="20">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="hate4">
	                                                편식하며 반찬 골라먹는 건 싫어요
	                                                <input type="checkbox" name="hate" id="hate4" value="30">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="hate5">
	                                                개인수저로 음식을 나눠먹는 건 싫어요
	                                                <input type="checkbox" name="hate" id="hate5" value="40">
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="hate6">
	                                                주사가 심한 건 싫어요
	                                                <input type="checkbox" name="hate" id="hate6" value="40">
	                                            </label>
	                                        </div>
	                                    </div>
	                                </div>
	                                -->
	                            </div>
                        	</div>
                    	</div>
	                </form>
	                <button type="button" class="site-btn" id="regBtn">작성완료</button>
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
	</body>
</html>