<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

<%@ include file="../common/header.jsp"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

<style>
input[id="cb1"]+label {
	display: inline-block;
	width: 50px;
	height: 50px;
	border: 2px solid #bcbcbc;
	cursor: pointer;
	margin-left: 140px;
}

input[id="cb1"]:checked+label {
	background-color: #666666;
}

input[id="cb1"] {
	display: none;
}
</style>
</head>

<body>



	<section class="related-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title related-blog-title">
						<h2>나의 장바구니 내역</h2>
					</div>
				</div>
			</div>

			<div class="row">
				<c:forEach items="${list }" var="list">

					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="blog__item">
							<div class="blog__item__pic">
								<input type="checkbox" id="cb1"> <label for="cb1"></label>
								<img src="/resources/logoimage.png" alt=""
									onclick="location.href='/cart/get.do'">
							</div>
							<div class="blog__item__text"
								onclick="location.href='/cart/get.do'">
								<ul>
									<li><i class="fa fa-calendar-o"></i> ${list.visitetime }</li>
								</ul>
								<h5>
									<a href="#">${list.menu }</a>
								</h5>
								<p>{list.message}</p>

							</div>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</section>
</body>

</html>



<%@ include file="../common/footer.jsp"%>