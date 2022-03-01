<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../common/header.jsp"%>



<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="section-title">
				<a href="/project4/bristoregisterForm.do" class="primary-btn">식당 추가</a>

				<h2>Bristo(식당들)</h2>
			</div>
			<div class="featured__controls">
				<ul>
					<li class="active" data-filter="*">All</li>
					<li data-filter=".oranges">한식</li>
					<li data-filter=".fresh-meat">일식</li>
					<li data-filter=".vegetables">중식</li>
					<li data-filter=".fastfood">뷔페</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="row featured__filter" id="MixItUp166271">


		<c:forEach items="${list }" var="list">
			<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
				<div class="featured__item">
					<div class="featured__item__pic set-bg"
						data-setbg="img/featured/feature-1.jpg"
						style="background-image: url('/project4/resources/logoimage.png');"
						onclick="location.href='/project4/bristoget.do?bristokey=${list.bristokey}'">
						<ul class="featured__item__pic__hover">
							<li><a href="#"><i class="fa fa-heart"></i></a></li>
							<li><a href="#"><i class="fa fa-retweet"></i></a></li>
							<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
					<div class="featured__item__text">
						<h6>
							<a href="/projec4/bristoget.do?bristokey=${list.bristokey }" style="font-size: 20px; font-weight: bolder;">${list.name }</a>
						</h6>
						<h5></h5>
					</div>
				</div>
			</div>
		</c:forEach>



	</div>
</div>
<%@ include file="../common/footer.jsp"%>


