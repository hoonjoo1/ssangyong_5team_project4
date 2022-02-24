<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<script type="text/javascript">
		$(document).ready(function(){
			$("#writeBtn").click(function(){
				location.href="${path}/et.do?method=insertFrm";
			});
		});
	    function detail(eattokey){
	    	location.href="${path}/et.do?method=detail&eattokey="+eattokey;
	    }
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
	    <section class="checkout spad">
	        <div class="container">
	            <div class="eattogether__form">
	                <h4>같이 먹어요</h4>
	                <div class="hero__search">
                        <div class="hero__search__form">
                            <form method="post">
                                <div class="hero__search__categories">
                                    제목
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" value="${et.title}" placeholder="내용을 입력해주세요.">
                                <button type="submit" class="site-btn">검색</button>
                            </form>
                        </div>
                    </div>
	                <form action="${path}/et.do?method=insertFrm" method="post">
	                    <div class="shoping__cart__table">
	                        <table>
	                            <thead>
	                                <tr>
	                                    <th>제목</th>
	                                    <th>모임연령</th>
	                                    <th>모임성별</th>
	                                    <th>지불방식</th>
	                                    <th>작성일</th>
	                                    <th>댓글</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="et" items="${etlist}">
		                                <tr ondblclick="detail(${et.eattokey})">
		                                    <td>
		                                        ${et.title}(0/${et.meetcnt})
		                                    </td>
		                                    <td>
		                                        ${et.meetage}
		                                    </td>
		                                    <td>
		                                        ${et.meetgender}
		                                    </td>
		                                    <td>
		                                        ${et.paytype}
		                                    </td>
		                                    <td>
		                                        <fmt:formatDate value="${et.writedate}"/>
		                                    </td>
		                                    <td>
		                                        0
		                                    </td>
		                                </tr>
	                                </c:forEach>
	                            </tbody>
	                        </table>
                         </div>
	                </form>
	                <input type="button" class="site-btn" id="writeBtn" value="게시글 작성"/>
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