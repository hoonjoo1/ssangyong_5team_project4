<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

<%@ include file="../includes/header.jsp"%>
<style>
input[id="cb1"]+label {
	display: inline-block;
	width: 20px;
	height: 20px;
	border: 2px solid #bcbcbc;
	cursor: pointer;
}

input[id="cb1"]:checked+label {
	background-color: #666666;
}

input[id="cb1"] {
	display: none;
}
</style>
<script>
	
</script>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">


<div class="checkout__form" style="width: 50%; margin: 0 auto;">
	<form action="/bristo/insert.do">
		<h4>식당 등록</h4>
		<div class="row">
			<div class="col-lg-8 col-md-6">
				<div class="row">
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								음식점 이름<span>*</span>
							</p>
							<input type="text" name="name">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								대표 메뉴<span>*</span>
							</p>
							<input type="text" name="menu">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								음식점 분류<span>*</span>
							</p>
							<input type="number" name="bustypekey" value="1" readonly="readonly">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								지역<span>*</span>
							</p>
							<input type="text" name="loc">
						</div>
					</div>



					<div class="col-lg-6">
						<div class="checkout__input">
							<p>주차여부</p>
							<div
								style="width: 150px;  display: flex;">
								O<input type="radio" name="parking" value="가능" style="flex: 1">
								X<input type="radio" name="parking" value="불가능" style="flex: 1">
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>혼밥여부</p>
							<div
								style="width: 150px;  display: flex;">
								O<input type="radio" name="eatalone" value="가능" style="flex: 1">
								X<input type="radio" name="eatalone" value="불가능" style="flex: 1">
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>아기의자</p>
							<div
								style="width: 150px;  display: flex;">
								O<input type="radio" name="babychair" value="가능" style="flex: 1">
								X<input type="radio" name="babychair" value="불가능" style="flex: 1">
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>테이크아웃</p>
							<div
								style="width: 150px;  display: flex;">
								O<input type="radio" name="carryout" value="가능" style="flex: 1">
								X<input type="radio" name="carryout" value="불가능" style="flex: 1">
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>배달</p>
							<div
								style="width: 150px;  display: flex;">
								O<input type="radio" name="delivery" value="가능" style="flex: 1">
								X<input type="radio" name="delivery" value="불가능" style="flex: 1">
							</div>
						</div>
					</div>





					<div class="col-lg-6" style="margin-bottom: -20px">
						<div class="checkout__input">
							<div
								style="width: 300px;  display: flex;">
								<input type="file" name="filename">
							</div>
						</div>
					</div>



				</div>
			</div>
		</div>

		<input type="hidden" value="1" name="userkey"> <br> <input
			type="submit" class="site-btn" value="제출하기"> <input
			type="button" class="site-btn" value="목록으로"
			onclick="location.href='/bristo/list.do'">
	</form>
	<br>
</div>

<br>
<br>



<%@ include file="../includes/footer.jsp"%>