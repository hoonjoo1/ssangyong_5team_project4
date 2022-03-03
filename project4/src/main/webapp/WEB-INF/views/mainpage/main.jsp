<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
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
    <title>우리끼니 | 같이 식사하실래요?</title>
<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="#"><!-- css 파일 경로  -->
 <!-- Css Styles -->
    <link rel="stylesheet" href="/project4/res/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/project4/res/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/project4/res/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/project4/res/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/project4/res/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/project4/res/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/project4/res/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/project4/res/css/style.css" type="text/css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
</head>
<style>
.hero__item img{
    position:absolute;
    top:65px;
    left:192px;
}
.hero__text{
   position:absolute;
   top:85px;
   left:35px;
}
</style>

<body>

   <!--  header 적용 -->
   
   <jsp:include page="../common/header.jsp">
		<jsp:param name="name" value="header" />
	</jsp:include>
	
   
      <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>전체 페이지</span>
                        </div>
                        <ul class="dropdwon-menu">
                            <li><a href="/project4/bristolist.do">식당예약</a></li>
                            <li><a href="/project4/bristolist.do">추천 맛집</a></li>
                            <li><a href="/project4/brlist.do">식당 리뷰</a></li>
                            <li><a href="/project4/urlist.do">유저 리뷰</a></li>
                            <li><a href="/project4/et.do?method=list">같이 먹어요</a></li>
                            <li><a href="#">지역별-같이 먹어요</a></li>
                            <li><a href="/project4/boardlist.do">식재료 공동구매</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span><img src="https://img.icons8.com/ios-glyphs/13/000000/expand-arrow--v1.png"/></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                                width="17" height="17" viewBox="0 0 172 172" style=" fill:#000000;">
                                <g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt"
                                stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" 
                                font-family="none" font-weight="none" font-size="none" text-anchor="none" 
                                style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path>
                                <g fill="#e67e22"><path d="M143.49817,110.99733c-4.515,-0.1075 -10.19817,-0.37267 -13.78867,
                                -1.00333c-3.88433,-0.688 -8.557,-2.021 -11.8465,-3.04583c-2.58,-0.80267 -5.38933,
                                -0.09317 -7.30283,1.81317l-15.8885,15.79533c-10.97933,-5.7835 -19.77283,-12.52017 -27.219,
                                -20.00933c-7.48917,-7.44617 -14.22583,-16.23967 -20.00933,-27.219l15.79533,-15.89567c1.90633,
                                -1.9135 2.61583,-4.72283 1.81317,-7.30283c-1.01767,-3.28233 -2.35783,-7.955 -3.03867,-11.83933c-0.63783,
                                -3.5905 -0.89583,-9.27367 -1.0105,-13.78867c-0.09317,-3.90583 -3.27517,-7.00183 -7.181,
                                -7.00183h-25.155c-3.139,0 -7.16667,2.35067 -7.16667,7.16667c0,32.5295 13.18667,
                                63.597 35.58967,86.24367c22.64667,22.403 53.71417,35.58967 86.24367,35.58967c4.816,0 7.16667,
                                -4.02767 7.16667,-7.16667v-25.155c0,-3.90583 -3.096,-7.08783 -7.00183,-7.181z"></path></g></g></svg>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>010.1234.5678</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg"><img src="/project4/res/heroimg.jpg" style="width: 600px; height: 400px;">
                        <div class="hero__text">
                            <span>같이 식사하실래요?</span>
                            <h2>근처에 있다면 <br />같이 먹어요!</h2>
                            <p>Would like to join? </p>
                            <a href="/project4/bristolist.do" class="primary-btn">Reservation Now</a>
                            <!-- reservation now 버튼 누르면 식당예약으로 href연결  -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

      <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/project4/res/cat-1.png">
                            <h5><a href="/project4/bristolist.do">식당 예약</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/project4/res/cat-2.png">
                            <h5><a href="/project4/et.do?method=list">같이 먹어요</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/project4/res/cat-3.png">
                            <h5><a href="/project4/boardlist.do">식재료 공동구매</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/project4/res/cat-4.png">
                            <h5><a href="/project4/urlist.do">유저 리뷰</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->
    
    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>우리끼니 업데이트 소식</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="/project4/res/open.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> February 5,2022</li>
                                <li><i class="fa fa-comment-o"></i> 30</li>
                            </ul>
                            <h5><a href="/project4/brlist.do">최근 등록한 식당</a></h5>
                            <p>우리끼니에 최근 등록된 식당정보를 확인해보세요! </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="/project4/res/purchase.jpg">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> February 10,2022</li>
                                <li><i class="fa fa-comment-o"></i> 10</li>
                            </ul>
                            <h5><a href="/project4/boardlist.do">최근 업데이트 공동구매</a></h5>
                            <p>우리끼니에 최근 업데이트 된 공동구매정보를<br>
                             확인해보세요! </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="/project4/res/user.jpg">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> February 16,2022</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="/project4/urlist.do">유저 리뷰</a></h5>
                            <p>최근 같이 식사한 유저에 대한<br>
                            리뷰를 남겨보세요! </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->


     <!-- 푸터 추가 -->
     <jsp:include page="../common/footer.jsp">
		<jsp:param name="name" value="footer" />
	</jsp:include>

    <!-- Js Plugins   -->
    <script src="/project4/res/js/jquery-3.3.1.min.js"></script>
    <script src="/project4/res/js/bootstrap.min.js"></script>
    <script src="/project4/res/js/jquery.nice-select.min.js"></script>
    <script src="/project4/res/js/jquery-ui.min.js"></script>
    <script src="/project4/res/js/jquery.slicknav.js"></script>
    <script src="/project4/res/js/mixitup.min.js"></script>
    <script src="/project4/res/js/owl.carousel.min.js"></script>
    <script src="/project4/res/js/main.js"></script>




</body>
</html>