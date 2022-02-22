<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../yjincludes/header.jsp"%>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">


<div class="checkout__form" style="width: 50%; margin: 0 auto;">
	<form action="/ur/register.do">
		<h4>유저 리뷰 작성</h4>
		<div class="row">
			<div class="col-lg-8 col-md-6">
				<div class="row">
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								제목<span>*</span>
							</p>
							<input type="text" name="title">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								상대아이디<span>*</span>
							</p>
							<input type="text" name="oppoid">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								방문일<span>*</span>
							</p>
							<input type="date" name="writedateS">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								상대 점수<span>*</span>
							</p>
							<input type="number" name="oppograde">
						</div>
					</div>
				</div>
				<div class="checkout__input">
					<p>
						리뷰 내용<span>*</span>
					</p>
					<textarea rows="20" cols="82" name="content"></textarea>
				</div>
			</div>
		</div>
		<input type="hidden" value="1" name="userkey">
		<br> <input type="submit" class="site-btn" value="제출하기">
		<input type="button" class="site-btn" value= "목록으로" onclick="location.href='/br/list.do'">
	</form>
	<br>
</div>

<br>
<br>



<%@ include file="../yjincludes/footer.jsp"%>