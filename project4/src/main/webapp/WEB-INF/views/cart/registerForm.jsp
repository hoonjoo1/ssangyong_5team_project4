<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
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

</head>
<script>
$(document).ready(function(){
		var vm = new Vue({
			el:".container",
			data:{msg:"여러가지 기능 메서드 computed", num01:0, num02:0},
			methods:{
				sum:function(){
					console.log("첫번째수:"+this.num01);
					console.log("두번째수:"+this.num02);
					var tot = Number(this.num01) +Number(this.num02);
					return tot;
				}
			}
		});	
	});
</script>
<body>




	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg" style="background: black">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Checkout</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>식당예약</span>
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
			<div class="row">
				<div class="col-lg-12">
					<h6>
						<span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click
							here</a> to enter your code
					</h6>
				</div>
			</div>
			<div class="checkout__form">
				<h4>예약 내역을 꼼꼼히 적으시오.</h4>
				<form action="/project4/cartinsert.do">
					<div class="row">
						<div class="col-lg-8 col-md-6">
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											대표자<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											동승 인원<span>*</span>
										</p>
										<input type="number" name="cnt">
									</div>
								</div>
							</div>
							<div class="checkout__input">
								<p>
									방문시간<span>*</span>
								</p>
								<input type="date"> <input type="time">
							</div>
							<div class="checkout__input">
								<p>
									예약메뉴<span>*</span>
								</p>
								<input type="text" placeholder="예약 메뉴"
									class="checkout__input__add" name="menu">
							</div>
							<div class="checkout__input">
								<p>
									남기고 싶은 말<span>*</span>
								</p>
								<input type="text" name="message">
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Phone<span>*</span>
										</p>
										<input type="text" name="phone">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Email<span>*</span>
										</p>
										<input type="text" name="email">
									</div>
								</div>
							</div>
							<div class="checkout__input__checkbox">
								<label for="acc"> 주의 사항을 확인하셨나요? <input type="checkbox"
									id="acc"> <span class="checkmark"></span>
								</label>
							</div>
							<p>Create an account by entering the information below. If
								you are a returning customer please login at the top of the page</p>
							<div class="checkout__input">
								<p>
									Account Password<span>*</span>
								</p>
								<input type="text">
							</div>
							<div class="checkout__input__checkbox">
								<label for="diff-acc"> 문자 알람을 받으시겠습니까? <input
									type="checkbox" id="diff-acc"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="checkout__input">
								<p>
									Order notes<span>*</span>
								</p>
								<input type="text"
									placeholder="Notes about your order, e.g. special notes for delivery.">
							</div>

						</div>




						<div class="col-lg-4 col-md-6">
							<div class="checkout__order">
								<h4>예약 서</h4>
								<div class="checkout__order__products">
									Products <span>Total</span>
								</div>
								<ul>
									<li>Vegetable’s Package <span>$75.99</span></li>
									<li>Fresh Vegetable <span>$151.99</span></li>
									<li>Organic Bananas <span>$53.99</span></li>
								</ul>
								<div class="checkout__order__subtotal">
									Subtotal <span>$750.99</span>
								</div>
								<div class="checkout__order__total">
									Total <span>$750.99</span>
								</div>
								<div class="checkout__input__checkbox">
									<label for="acc-or"> Create an account? <input
										type="checkbox" id="acc-or"> <span class="checkmark"></span>
									</label>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do
									eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<div class="checkout__input__checkbox">
									<label for="payment"> Check Payment <input
										type="checkbox" id="payment"> <span class="checkmark"></span>
									</label>
								</div>
								<div class="checkout__input__checkbox">
									<label for="paypal"> Paypal <input type="checkbox"
										id="paypal"> <span class="checkmark"></span>
									</label>
								</div>
								<button type="submit" class="site-btn">예약 하기</button>
							</div>
						</div>
					</div>
					<input type="hidden" name="userkey" value="${users.userkey }">
					<input type="hidden" name="bristokey" value="5040">
				</form>
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->



</body>

</html>



<%@ include file="../common/footer.jsp"%>