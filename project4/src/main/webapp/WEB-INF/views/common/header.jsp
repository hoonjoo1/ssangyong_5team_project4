<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="apple-touch-icon" sizes="57x57"
	href="/project4/res/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/project4/res/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/project4/res/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/project4/res/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/project4/res/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/project4/res/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/project4/res/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/project4/res/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/project4/res/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/project4/res/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/project4/res/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/project4/res/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/project4/res/favicon/favicon-16x16.png">
<link rel="manifest" href="/project4/res/favicon/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="/project4/res/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="port" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>???????????? | ?????? ???????????????????</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="#">
<!-- css ?????? ??????  -->
<!-- Css Styles -->
<!-- Css Styles -->
<link rel="stylesheet" href="/project4/res/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="/project4/res/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="/project4/res/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="/project4/res/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="/project4/res/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="/project4/res/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="/project4/res/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="/project4/res/css/style.css"
	type="text/css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"> 
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>

/*---------------------
  Header
-----------------------*/
.header__top {
	background: #f5f5f5;
}

.header__top__left {
	padding: 10px 0 10px;
}

.header__top__left ul li {
	font-size: 15px;
	color: #1c1c1c;
	display: inline-block;
	margin-right: 45px;
	position: relative;
}

.header__top__left ul li:after {
	position: absolute;
	right: -25px;
	top: 1px;
	height: 20px;
	width: 1px;
	background: #000000;
	opacity: 0.1;
	content: "";
}

.header__top__left ul li:last-child {
	margin-right: 0;
}

.header__top__left ul li:last-child:after {
	display: none;
}

.header__top__left ul li i {
	color: #252525;
	margin-right: 5px;
}

.header__top__right {
	text-align: right;
	padding: 10px 0 13px;
}

.header__top__right__social {
	position: relative;
	display: inline-block;
	margin-right: 35px;
}

.header__top__right__social:after {
	position: absolute;
	right: -20px;
	top: 1px;
	height: 20px;
	width: 1px;
	background: #000000;
	opacity: 0.1;
	content: "";
}

.header__top__right__social a {
	font-size: 14px;
	display: inline-block;
	color: #1c1c1c;
	margin-right: 20px;
}

.header__top__right__social a:last-child {
	margin-right: 0;
}

.header__top__right__language {
	position: relative;
	display: inline-block;
	margin-right: 40px;
	cursor: pointer;
}

.header__top__right__language:hover ul {
	top: 23px;
	opacity: 1;
	visibility: visible;
}

.header__top__right__language:after {
	position: absolute;
	right: -21px;
	top: 1px;
	height: 20px;
	width: 1px;
	background: #000000;
	opacity: 0.1;
	content: "";
}

.header__top__right__language img {
	margin-right: 2px;
}

.header__top__right__language div {
	font-size: 14px;
	color: #1c1c1c;
	display: inline-block;
	margin-right: 4px;
}

.header__top__right__language span {
	font-size: 14px;
	color: #1c1c1c;
	position: relative;
	top: 2px;
}

.header__top__right__language ul {
	background: #222222;
	width: 100px;
	text-align: left;
	padding: 5px 0;
	position: absolute;
	left: 0;
	top: 43px;
	z-index: 9;
	opacity: 0;
	visibility: hidden;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}

.header__top__right__language ul li {
	list-style: none;
}

.header__top__right__language ul li a {
	font-size: 14px;
	color: #ffffff;
	padding: 5px 10px;
}

.header__top__right__auth {
	display: inline-block;
}

.header__top__right__auth a {
	display: block;
	font-size: 14px;
	color: #1c1c1c;
}

.header__top__right__auth a i {
	margin-right: 6px;
}

.header__logo {
	width: 30%;
	height: 30%;
	padding: 15px 0;
}

.header__logo a {
	display: inline-block;
}

.header__menu {
	padding: 24px 0;
}

.header__menu ul li {
	list-style: none;
	display: inline-block;
	margin-right: 50px;
	position: relative;
}

.header__menu ul li .header__menu__dropdown {
	position: absolute;
	left: 0;
	top: 50px;
	background: #222222;
	width: 180px;
	z-index: 9;
	padding: 5px 0;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
	opacity: 0;
	visibility: hidden;
}

.header__menu ul li .header__menu__dropdown li {
	margin-right: 0;
	display: block;
}

.header__menu ul li .header__menu__dropdown li:hover>a {
	color: #ff9500;
}

.header__menu ul li .header__menu__dropdown li a {
	text-transform: capitalize;
	color: #ffffff;
	font-weight: 400;
	padding: 5px 15px;
}

.header__menu ul li.active a {
	color: #ff9500;
}

.header__menu ul li:hover .header__menu__dropdown {
	top: 30px;
	opacity: 1;
	visibility: visible;
}

.header__menu ul li:hover>a {
	color: #ff9500;
}

.header__menu ul li:last-child {
	margin-right: 0;
}

.header__menu ul li a {
	font-size: 14px;
	color: #252525;
	text-transform: uppercase;
	font-weight: 700;
	letter-spacing: 2px;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
	padding: 5px 0;
	display: block;
}

.header__cart {
	text-align: right;
	padding: 24px 0;
}

.header__cart ul {
	display: inline-block;
	margin-right: 25px;
}

.header__cart ul li {
	list-style: none;
	display: inline-block;
	margin-right: 15px;
}

.header__cart ul li:last-child {
	margin-right: 0;
}

.header__cart ul li a {
	position: relative;
}

.header__cart ul li a i {
	font-size: 18px;
	color: #1c1c1c;
}

.header__cart ul li a span {
	height: 13px;
	width: 13px;
	background: #ff9500;
	font-size: 10px;
	color: #ffffff;
	line-height: 13px;
	text-align: center;
	font-weight: 700;
	display: inline-block;
	border-radius: 50%;
	position: absolute;
	top: 0;
	right: -12px;
}

.header__cart .header__cart__price {
	font-size: 14px;
	color: #6f6f6f;
	display: inline-block;
}

.header__cart .header__cart__price span {
	color: #252525;
	font-weight: 700;
}

.humberger__menu__wrapper {
	display: none;
}

.humberger__open {
	display: none;
}
</style>
</head>

<body>




	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__left">
							<ul>
								<li><img
									src="https://img.icons8.com/ios-glyphs/15/000000/secured-letter--v1.png" />ourmeal@gmail.com</li>
								<li>Shall we eat together?</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">
							<div class="header__top__right__social">
								<c:if test="${not empty users.id}">
									<a href="#">${users.name} ??? ????????????</a><br>
								</c:if>

								<c:if test="${ empty users.id}">
									<a href="/project4/login.do">?????????</a>
								</c:if>



                                <a href="/project4/userinsertForm.do"><img src="https://img.icons8.com/metro/14/000000/add-user-male.png"/>    ????????????</a>
                                <a href="/project4/usermypage.do?userkey=${users.userkey }"><i class="fa fa-user"></i>    ???????????????</a>
                                <a href="#"><img src="https://img.icons8.com/external-sbts2018-solid-sbts2018/14/000000/external-headphone-social-media-sbts2018-solid-sbts2018.png"/>    ????????????</a>
								<c:if test="${not empty users.id}">
									<a href="/project4/logout.do">????????????</a>
								</c:if>
							</div>
							<div class="header__top__right__language">
                                <img src="https://img.icons8.com/color/30/000000/south-korea.png"/>
                                <div>Korean</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Korean</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                      </div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="header__logo">
						<a href="/project4/main.do"><img
							src="/project4/res/logoimage.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-6">
					<nav class="header__menu">
						<ul>
							<li class="active"><a href="/project4/bristolist.do">????????????</a>
								<ul class="header__menu__dropdown">
									<li><a href="/project4/bristolist.do">?????? ??????</a></li>
									<li><a href="/project4/brlist.do">?????? ??????</a></li>
								</ul></li>
							<li><a href="/project4/et.do?method=list">?????? ?????????</a>
								<ul class="header__menu__dropdown">
									<li><a href="#">?????????</a></li>
								</ul></li>
							<li><a href="/project4/boardlist.do">????????? ????????????</a></li>
							<li><a href="/project4/urlist.do">????????????</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3">
					<div class="header__cart">
						<ul>
							<li><a href="/project4/paylist.do"><img
									src="https://img.icons8.com/ios-filled/20/000000/hearts.png" /><span>1</span></a></li>
							<li><a href="/project4/cartlist.do"><img
									src="https://img.icons8.com/external-vitaliy-gorbachev-fill-vitaly-gorbachev/20/000000/external-bag-ecommerce-vitaliy-gorbachev-fill-vitaly-gorbachev-1.png" /><span>3</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="humberger__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

</body>
</html>