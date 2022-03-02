<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>

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
<style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

/*---------------------
  Footer
-----------------------*/

.footer {
	background: #F3F6FA;
	padding-top: 70px;
	padding-bottom: 0;
}

.footer__about {
	margin-bottom: 30px;
}

.footer__about ul li {
	font-size: 16px;
	color: #1c1c1c;
	line-height: 36px;
	list-style: none;
}

.footer__about__logo {
	margin-bottom: 15px;
}

.footer__about__logo a {
	display: inline-block;
}

.footer__widget {
	margin-bottom: 30px;
	overflow: hidden;
}

.footer__widget h6 {
	color: #1c1c1c;
	font-weight: 700;
	margin-bottom: 10px;
}

.footer__widget ul {
	width: 50%;
	float: left;
}

.footer__widget ul li {
	list-style: none;
}

.footer__widget ul li a {
	color: #1c1c1c;
	font-size: 14px;
	line-height: 32px;
}

.footer__widget p {
	font-size: 14px;
	color: #1c1c1c;
	margin-bottom: 30px;
}

.footer__widget form {
	position: relative;
	margin-bottom: 30px;
}

.footer__widget form input {
	width: 100%;
	font-size: 16px;
	padding-left: 20px;
	color: #1c1c1c;
	height: 46px;
	border: 1px solid #ededed;
}

.footer__widget form input::placeholder {
	color: #1c1c1c;
}

.footer__widget form button {
	position: absolute;
	right: 0;
	top: 0;
	padding: 0 26px;
	height: 100%;
}

.footer__widget .footer__widget__social a {
	display: inline-block;
	height: 41px;
	width: 41px;
	font-size: 16px;
	color: #404040;
	border: 1px solid #ededed;
	border-radius: 50%;
	line-height: 38px;
	text-align: center;
	background: #ffffff;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
	margin-right: 10px;
}

.footer__widget .footer__widget__social a:last-child {
	margin-right: 0;
}

.footer__widget .footer__widget__social a:hover {
	background: #ff9500;
	color: #ff9500;
	border-color: #ff9500;
}

.footer__copyright {
	border-top: 1px solid #ebebeb;
	padding: 15px 0;
	overflow: hidden;
	margin-top: 20px;
}

.footer__copyright__text {
	font-size: 14px;
	color: #1c1c1c;
	float: left;
	line-height: 25px;
}

.footer__copyright__payment {
	float: right;
}

/*---------------------
  Contact
-----------------------*/

.contact {
	padding-top: 80px;
	padding-bottom: 50px;
}

.contact__widget {
	margin-bottom: 30px;
}

.contact__widget span {
	font-size: 36px;
	color: #7fad39;
}

.contact__widget h4 {
	color: #1c1c1c;
	font-weight: 700;
	margin-bottom: 6px;
	margin-top: 18px;
}

.contact__widget p {
	color: #666666;
	margin-bottom: 0;
}

/*---------------------
  Map
-----------------------*/

.map {
	height: 500px;
	position: relative;
}

.map iframe {
	width: 100%;
}

.map .map-inside {
	position: absolute;
	left: 50%;
	top: 160px;
	-webkit-transform: translateX(-175px);
	-ms-transform: translateX(-175px);
	transform: translateX(-175px);
}

.map .map-inside i {
	font-size: 48px;
	color: #7fad39;
	position: absolute;
	bottom: -75px;
	left: 50%;
	-webkit-transform: translateX(-18px);
	-ms-transform: translateX(-18px);
	transform: translateX(-18px);
}

.map .map-inside .inside-widget {
	width: 350px;
	background: #ffffff;
	text-align: center;
	padding: 23px 0;
	position: relative;
	z-index: 1;
	-webkit-box-shadow: 0 0 20px 5px rgba(12, 7, 26, 0.15);
	box-shadow: 0 0 20px 5px rgba(12, 7, 26, 0.15);
}

.map .map-inside .inside-widget:after {
	position: absolute;
	left: 50%;
	bottom: -30px;
	-webkit-transform: translateX(-6px);
	-ms-transform: translateX(-6px);
	transform: translateX(-6px);
	border: 12px solid transparent;
	border-top: 30px solid #ffffff;
	content: "";
	z-index: -1;
}

.map .map-inside .inside-widget h4 {
	font-size: 22px;
	font-weight: 700;
	color: #1c1c1c;
	margin-bottom: 4px;
}

.map .map-inside .inside-widget ul li {
	list-style: none;
	font-size: 16px;
	color: #666666;
	line-height: 26px;
}

/*---------------------
  Contact Form
-----------------------*/

.contact__form__title {
	margin-bottom: 50px;
	text-align: center;
}

.contact__form__title h2 {
	color: #1c1c1c;
	font-weight: 700;
}

.contact-form {
	padding-top: 80px;
	padding-bottom: 80px;
}

.contact-form form input {
	width: 100%;
	height: 50px;
	font-size: 16px;
	color: #6f6f6f;
	padding-left: 20px;
	margin-bottom: 30px;
	border: 1px solid #ebebeb;
	border-radius: 4px;
}

.contact-form form input::placeholder {
	color: #6f6f6f;
}

.contact-form form textarea {
	width: 100%;
	height: 150px;
	font-size: 16px;
	color: #6f6f6f;
	padding-left: 20px;
	margin-bottom: 24px;
	border: 1px solid #ebebeb;
	border-radius: 4px;
	padding-top: 12px;
	resize: none;
}

.contact-form form textarea::placeholder {
	color: #6f6f6f;
}

.contact-form form button {
	font-size: 18px;
	letter-spacing: 2px;
}
</style>
</head>

<body>
      <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="/project4/res/logoimage.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 서울시 강남구 테헤란로</li>
                            <li>Phone: 010.1234.5678</li>
                            <li>Email: ourmeal@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="/project4/main.do">About Us</a></li>
                            <li><a href="/project4/bristolist.do">About Our Shop</a></li>
                            <li><a href="/project4/bristolist.do">Reservation infomation</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest infomation.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="https://www.facebook.com/"><img src="https://img.icons8.com/material-outlined/16/000000/facebook-f.png"/></a>
                            <a href="https://www.instagram.com/?hl=ko"><img src="https://img.icons8.com/material-outlined/16/000000/instagram-new--v1.png"/></a>
                            <a href="https://twitter.com/i/flow/login"><img src="https://img.icons8.com/ios-glyphs/16/000000/twitter--v1.png"/></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with 
  <img src="https://img.icons8.com/ios-filled/16/000000/hearts.png"/>by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="/project4/res/img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

</body>
</html>