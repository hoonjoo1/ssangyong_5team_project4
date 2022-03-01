<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>우리끼니 회원가입</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).ready(function() {

	})
</script>

<!-- Font Icon -->
<link rel="stylesheet"
	href="/project4/resources/user/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="/project4/resources/user/css/style.css">
</head>
<body>

	<div class="main">



		<form action="/project4/userinsert.do">
			<!-- Sign up form -->
			<section class="signup">
				<div class="container">
					<div class="signup-content">
						<div class="signup-form">
							<h2 class="form-title">우리끼니 회원가입</h2>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="이름" />
							</div>

							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="nickname" id="nickname" placeholder="닉네임" />
							</div>

							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="id" id="id" placeholder="아이디" />
							</div>


							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="pass"
									placeholder="Password" />
							</div>


							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="password" />
							</div>


							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="phonenum" id="phonenum" placeholder="핸드폰번호" />
							</div>

							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="date" id="birthday" placeholder="생일" />
							</div>

							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="loc" id="loc" placeholder="사는곳" />
							</div>

							<input type="hidden" name="grade" value="0">


							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span> 약관에
									동의합니다. <a href="#" class="term-service">[서비스 약관] </a></label>
							</div>

							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="회원가입" />
							</div>
						</div>
						<div class="signup-image">
							<figure>
								<img src="/project4/resources/logoimage.png" alt="sing up image"
									style="width: 100%; height: 100%;">
							</figure>
							<a href="/project4/main.do" class="signup-image-link">이미 회원입니다</a>
						</div>
					</div>
				</div>
			</section>

		</form>

	</div>

	<!-- JS -->
	<script src="/project4/resources/user/vendor/jquery/jquery.min.js"></script>
	<script src="/project4/resources/user/js/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>





