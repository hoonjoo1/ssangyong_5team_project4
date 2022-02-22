<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

<%@ include file="../includes/header.jsp"%>

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

<body>

	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg" style="background: black">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>최근 3개월 결제 내역</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Shopping Cart</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table">
						<table>
							<thead>
								<tr>
									<th class="shoping__product">결제 내역</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="shoping__cart__item"><img
										src="/resources/logoimage.png" alt="">
										<h5>Vegetable’s Package</h5></td>
									<td class="shoping__cart__price">$55.00</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<span class="dec qtybtn">-</span> <input type="text"
													value="1"> <span class="inc qtybtn">+</span>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total">$110.00</td>
									<td class="shoping__cart__item__close"><span
										class="icon_close"></span></td>
								</tr>


								<tr>
									<td class="shoping__cart__item"><img
										src="/resources/logoimage.png" alt="">
										<h5>Vegetable’s Package</h5></td>
									<td class="shoping__cart__price">$55.00</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<span class="dec qtybtn">-</span> <input type="text"
													value="1"> <span class="inc qtybtn">+</span>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total">$110.00</td>
									<td class="shoping__cart__item__close"><span
										class="icon_close"></span></td>
								</tr>


								<tr>
									<td class="shoping__cart__item"><img
										src="/resources/logoimage.png" alt="">
										<h5>Vegetable’s Package</h5></td>
									<td class="shoping__cart__price">$55.00</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<span class="dec qtybtn">-</span> <input type="text"
													value="1"> <span class="inc qtybtn">+</span>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total">$110.00</td>
									<td class="shoping__cart__item__close"><span
										class="icon_close"></span></td>
								</tr>


								<tr>
									<td class="shoping__cart__item"><img
										src="/resources/logoimage.png" alt="">
										<h5>Vegetable’s Package</h5></td>
									<td class="shoping__cart__price">$55.00</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<span class="dec qtybtn">-</span> <input type="text"
													value="1"> <span class="inc qtybtn">+</span>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total">$110.00</td>
									<td class="shoping__cart__item__close"><span
										class="icon_close"></span></td>
								</tr>








							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__btns">
						<a href="#" class="primary-btn cart-btn">CONTINUE SHOPPING</a> <a
							href="#" class="primary-btn cart-btn cart-btn-right"><span
							class="icon_loading"></span> Upadate Cart</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__continue">
						<div class="shoping__discount">
							<h5>Discount Codes</h5>
							<form action="#">
								<input type="text" placeholder="Enter your coupon code">
								<button type="submit" class="site-btn">APPLY COUPON</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__checkout">
						<h5>Cart Total</h5>
						<ul>
							<li>Subtotal <span>$454.98</span></li>
							<li>Total <span>$454.98</span></li>
						</ul>
						<a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>

</html>



<%@ include file="../includes/footer.jsp"%>