<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>

<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	$(document).ready(function() {
		var msg = "${msg}";
		if (msg != "") {
			if (confirm(msg + "\n조회화면이동하시겠습니까?")) {
				location.href = "${path}/et.do?method=list";
			}
		}
		$("#uptBtn").click(function() {
			if (confirm("수정하시겠습니까?")) {
				$("form").attr("action", "${path}/et.do?method=update");
				$("form").submit();
			}
		});

		$("#goETList").click(function() {
			location.href = "${path}/et.do?method=list";
		});
	});
</script>
<style>
input[type="radio"]:checked+label {
	border: 2px solid black;
}
</style>
</head>

<body>
	<jsp:include page="../common/header.jsp">
		<jsp:param name="name" value="header" />
	</jsp:include>

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="project4/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="eattogether__text" id="goETList">
						<h2>같이 먹어요</h2>
						<div class="eattogether__option">
							<a href="./index.html">Home</a> <span>EatTogether</span>
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
				<h4>같이 먹어요 게시글 수정</h4>
				<form method="post" action="${path}/et.do?method=update">
					<div class="row">
						<div class="col-lg-12 col-md-8">
							<div class="row">
								<div class="col-lg-12">
									<div class="eattogether__input">
										<p>
											제목<span>*</span>
										</p>
										<input type="text" name="title" value="${et.title}">
									</div>
								</div>
								<div class="col-lg-12">
									<div class="eattogether__input">
										<p>
											내용<span>*</span>
										</p>
										<textarea name="content">${et.content}</textarea>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="eattogether__input">
										<p>
											모임지역<span>*</span>
										</p>
										<select name="loc">
											<option ${et.loc eq "서울" ? "selected" : ""}>서울</option>
											<option ${et.loc eq "경기도" ? "selected" : ""}>경기도</option>
											<option ${et.loc eq "강원도" ? "selected" : ""}>강원도</option>
											<option ${et.loc eq "충청도" ? "selected" : ""}>충청도</option>
											<option ${et.loc eq "전라도" ? "selected" : ""}>전라도</option>
											<option ${et.loc eq "경상도" ? "selected" : ""}>경상도</option>
										</select>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="product__details__quantity">
										<div class="eattogether__input">
											<p>
												모집인원<span>*</span>
											</p>
										</div>
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" name="meetcnt" value="${et.meetcnt}">
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="eattogether__input">
										<p>
											모집날짜<span>*</span>
										</p>
										<input type="date" name="meetdateS"
											value='<fmt:formatDate value="${et.meetdate}" pattern="yyyy-MM-dd"/>'>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="eattogether__input">
										<p>
											모집 성별<span>*</span>
										</p>
										<div class="eattogether__select meetGender">
											<input type="radio" name="meetgender" id="everyGender"
												value="성별무관" ${et.meetgender eq "성별무관" ? "checked" : ""}>
											<label for="everyGender">성별무관</label>
										</div>
										<div class="eattogether__select meetGender">
											<input type="radio" name="meetgender" id="onlyWoman"
												value="여자만" ${et.meetgender eq "여자만" ? "checked" : ""}>
											<label for="onlyWoman">여자만</label>
										</div>
										<div class="eattogether__select meetGender">
											<input type="radio" name="meetgender" id="onlyMan"
												value="남자만" ${et.meetgender eq "남자만" ? "checked" : ""}>
											<label for="onlyMan">남자만</label>
										</div>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="eattogether__input">
										<p>
											모집 연령<span>*</span>
										</p>
										<div class="eattogether__select">
											<input type="radio" name="meetage" id="everyAge" value="연령무관"
												${et.meetage eq "연령무관" ? "checked" : ""}> <label
												for="everyAge">연령무관</label>
										</div>
										<div class="eattogether__select">
											<input type="radio" name="meetage" id="teen" value="10대"
												${et.meetage eq "10대" ? "checked" : ""}> <label
												for="teen">10대</label>
										</div>
										<div class="eattogether__select">
											<input type="radio" name="meetage" id="twenties" value="20대"
												${et.meetage eq "20대" ? "checked" : ""}> <label
												for="twenties"> 20대</label>
										</div>
										<div class="eattogether__select">
											<input type="radio" name="meetage" id="thirties" value="30대"
												${et.meetage eq "30대" ? "checked" : ""}> <label
												for="thirties">30대 </label>
										</div>
										<div class="eattogether__select">
											<input type="radio" name="meetage" id="forties" value="40대"
												${et.meetage eq "40대" ? "checked" : ""}> <label
												for="forties">40대</label>
										</div>
										<div class="eattogether__select">
											<input type="radio" name="meetage" id="fifties" value="50"
												${et.meetage eq "50대" ? "checked" : ""}> <label
												for="fifties">50대</label>
										</div>
										<div class="eattogether__select">
											<input type="radio" name="meetage" id="sixties" value="60"
												${et.meetage eq "60대" ? "checked" : ""}> <label
												for="sixties">60대 이상</label>
										</div>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="eattogether__input">
										<p>
											모집 연령<span>*</span>
										</p>
										<div class="eattogether__select">
											<input type="radio" name="paytype" id="dutch" value="더치페이"
												${et.paytype eq "더치페이" ? "checked" : ""} /> <label
												for="dutch">더치페이</label>
										</div>
										<div class="eattogether__select">
											<input type="radio" name="paytype" id="host" value="주최자 지불"
												${et.paytype eq "주최자 지불" ? "checked" : ""}> <label
												for="host">주최자 지불</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="eattokey" value="${et.eattokey }" />
				</form>
				<input type="button" class="site-btn" id="uptBtn" value="수정완료" />
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->


</body>
</html>