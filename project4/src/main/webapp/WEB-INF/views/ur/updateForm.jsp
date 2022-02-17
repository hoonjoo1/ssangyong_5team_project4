<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../includes/header.jsp"%>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">


<div class="checkout__form" style="width: 50%; margin: 0 auto;">
	<form action="/ur/update.do">
		<h4>유저 리뷰 수정</h4>
		<div class="row">
			<div class="col-lg-8 col-md-6">
				<div class="row">
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								게시글번호<span>*</span>
							</p>
							<input type="text"  value="${ur.urkey }" name="urkey" readonly="readonly">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								상대이름<span>*</span>
							</p>
							<input type="text" value="${ur.oppoid }" name="oppoid" readonly="readonly">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								상대 점수<span>*</span>
							</p>
							<input type="number" name="oppograde" value="${ur.oppograde }" >
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								제목<span>*</span>
							</p>
							<input type="text" name="title" value="${ur.title }" >
						</div>
					</div>
				</div>
				<div class="checkout__input">
					<p>
						리뷰 내용<span>*</span>
					</p>
					<textarea rows="20" cols="82" name="content">${ur.content }"</textarea>
				</div>
			</div>
		</div>
		<input type="hidden" value="${ur.urkey }" name="urkey"> <br> 
		<button class="site-btn" onclick="location.href='/ur/list.do'">목록으로</button>
		<input type="submit" value="수정하기" class="site-btn">
	</form>
	<br>


</div>

<br>
<br>



<%@ include file="../includes/footer.jsp"%>