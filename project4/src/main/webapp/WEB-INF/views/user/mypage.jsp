<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>우리끼니 회원가입</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="/project4/resources/user/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="/project4/resources/user/css/style.css">
</head>

<script>
	$(document)
			.ready(
					function() {
						$("#delete")
								.click(
										function() {
											confirm("정말 회원 탈퇴 하시겠습니까?");
											location.href = "/project4/userdelete.do?userkey="+${user.userkey}
											alert("회원탈퇴가 완료되었습니다.")
										})
										
										
					
					})
</script>

<body>

	<div class="main">
		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">마이페이지</h2>
						<form method="POST" class="register-form" id="register-form"
							action="/project4/userupdate.do">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="이름"
									value="${user.name }" />
							</div>

							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="nickname" id="nickname" placeholder="닉네임"
									value="${user.nickname }" />
							</div>

							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="id" id="id" placeholder="아이디"
									value="${user.id }" />
							</div>


							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="pass"
									placeholder="Password" value="${user.password }" />
							</div>


							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="password" value="${user.password }" />
							</div>


							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="phonenum" id="phonenum" placeholder="핸드폰번호"
									value="${user.phonenum }" />
							</div>

							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="date" id="birthday" placeholder="생일" />
							</div>

							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="loc" id="loc" placeholder="사는곳"
									value="${user.loc }" />
							</div>

							<input type="hidden" name="grade" value="0">
							<input type="hidden" name="userkey" value="${user.userkey }">




							<div class="form-group form-button">
								<input type="submit" name="update" id="update"
									class="form-submit" value="회원정보 수정" /> <input type="button"
									name="delete" id="delete" class="form-submit" value="회원탈퇴""  />
							</div>


						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="/project4/resources/logoimage.png" alt="sing up image"
								style="width: 100%; height: 100%;">
							<a href="#">나의 사진 변경</a>
						</figure>
						<a href="/main.do" class="signup-image-link">메인으로</a>
					</div>
				</div>
			</div>
		</section>


	</div>

	<!-- JS -->
	<script src="/project4/resources/user/vendor/jquery/jquery.min.js"></script>
	<script src="/project4//resources/user/js/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>





