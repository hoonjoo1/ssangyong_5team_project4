<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../common/header.jsp"%>
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<div class="product__details__pic">
					<div class="product__details__pic__item">
						<img class="product__details__pic__item--large"
							src="/project4/resources/logoimage.png" alt="">
					</div>
					<div
						class="product__details__pic__slider owl-carousel owl-loaded owl-drag">




						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(-1006px, 0px, 0px); transition: all 1.2s ease 0s; width: 1725px;">
								<div class="owl-item cloned"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-2.jpg"
										src="img/product/details/thumb-1.jpg" alt="">
								</div>
								<div class="owl-item cloned"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-3.jpg"
										src="img/product/details/thumb-2.jpg" alt="">
								</div>
								<div class="owl-item cloned"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-5.jpg"
										src="img/product/details/thumb-3.jpg" alt="">
								</div>
								<div class="owl-item cloned"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-4.jpg"
										src="img/product/details/thumb-4.jpg" alt="">
								</div>
								<div class="owl-item"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-2.jpg"
										src="img/product/details/thumb-1.jpg" alt="">
								</div>
								<div class="owl-item"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-3.jpg"
										src="img/product/details/thumb-2.jpg" alt="">
								</div>
								<div class="owl-item"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-5.jpg"
										src="img/product/details/thumb-3.jpg" alt="">
								</div>
								<div class="owl-item active"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-4.jpg"
										src="img/product/details/thumb-4.jpg" alt="">
								</div>
								<div class="owl-item cloned active"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-2.jpg"
										src="img/product/details/thumb-1.jpg" alt="">
								</div>
								<div class="owl-item cloned active"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-3.jpg"
										src="img/product/details/thumb-2.jpg" alt="">
								</div>
								<div class="owl-item cloned active"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-5.jpg"
										src="img/product/details/thumb-3.jpg" alt="">
								</div>
								<div class="owl-item cloned"
									style="width: 123.75px; margin-right: 20px;">
									<img data-imgbigurl="img/product/details/product-details-4.jpg"
										src="img/product/details/thumb-4.jpg" alt="">
								</div>
							</div>
						</div>
						<div class="owl-nav disabled">
							<button type="button" role="presentation" class="owl-prev">
								<span aria-label="Previous">‹</span>
							</button>
							<button type="button" role="presentation" class="owl-next">
								<span aria-label="Next">›</span>
							</button>
						</div>
						<div class="owl-dots disabled">
							<button role="button" class="owl-dot active">
								<span></span>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="product__details__text">
					<a href="#" class="primary-btn"
						onclick="location.href='/project4/bristolist.do'">목록으로</a> <a href="#"
						class="primary-btn"
						onclick="location.href='/project4/cartregisterForm.do?bristokey='+${bristo.bristokey}">식당예약</a>
					<a href="#" class="primary-btn"
						onclick="location.href='/project4/bristodelete.do?bristokey='+${bristo.bristokey}">삭제</a><br>
					<h3>${bristo.name }</h3>
					<div class="product__details__rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-half-o"></i> <span></span>
					</div>
					<div class="product__details__price">${bristo.menu }</div>
					<p>추천합니다.</p>
					<div class="product__details__quantity">
						<div class="quantity">
							<div class="pro-qty">
								<span class="dec qtybtn">-</span> <input type="text" value="1">
								<span class="inc qtybtn">+</span>
							</div>
						</div>
					</div>
					<a href="#" class="primary-btn">추가하기</a> <a href="#"
						class="heart-icon"><span class="icon_heart_alt"></span></a>
					<ul>
						<li><b>지역</b> <span>${bristo.loc }</span></li>
						<li><b>주차여부</b> <span>${bristo.parking}</span></li>
						<li><b>혼식</b> <span>${bristo.eatalone }</span></li>
						<li><b>아기체어</b> <span>${bristo.babychair }</span></li>
						<li><b>포장</b> <span>${bristo.carryout }</span></li>
						<li><b>배달</b> <span>${bristo.delivery }</span></li>


						<li><b>Share on</b>
							<div class="share">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-pinterest"></i></a>
							</div></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="product__details__tab">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Description</a>
						</li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-2" role="tab" aria-selected="false">Information</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-3" role="tab" aria-selected="false">Reviews <span>(1)</span></a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="product__details__tab__desc">
								<h6>Products Infomation</h6>
							</div>
						</div>
						<div class="tab-pane" id="tabs-2" role="tabpanel">
							<div class="product__details__tab__desc">
								<h6>Products Infomation</h6>
							</div>
						</div>
						<div class="tab-pane" id="tabs-3" role="tabpanel">
							<div class="product__details__tab__desc">
								<h6>Products Infomation</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</section>
<%@ include file="../common/footer.jsp"%>