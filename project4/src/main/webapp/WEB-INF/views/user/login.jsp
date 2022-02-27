<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>로그인</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="/project4/resources/user/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="/project4/resources/user/css/style.css">

<script>
$(document).ready(function(){
	var formObj = $("form")
	var psc="${psc}";
	

	
	if(psc=="fail"){
		alert("로그인 실패")
	}
	
	
	
	$('#signin').click(function(event) {
	    event.preventDefault();
		var idvalue = $("#id").val();
		var pwvalue = $("#password").val();
		
	    confirm("정말 로그인 하시겠습니까?");
	    if(idvalue==""){
			alert("아이디를 입력하시오.");
		}
		
		if(pwvalue==""){
			alert("비밀번호를 입력하시오.");
		}
	    formObj.submit();
	});
	
	
})
</script>


</head>
<body>

	<div class="main">
		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="/project4/resources/logoimage.png" alt="sing up image" style="width:100%; height: 100%">
						</figure>
						<a href="/userinsertForm.do" class="signup-image-link">회원 가입</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">로그인</h2>
						<form class="register-form" id="login-form" action="/user/logincheck.do" >
							<div class="form-group">
								<label for="your_name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="id" id="id"
									placeholder="아이디" />
							</div>
							<div class="form-group">
								<label for="your_pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="비밀번호" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="로그인" />
							</div>
						</form>
						
						
						
						
						
						
						<div class="social-login">
							<span class="social-label">간편 로그인</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="/project4/resources/user/vendor/jquery/jquery.min.js"></script>
	<script src="/project4/resources/user/js/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>





