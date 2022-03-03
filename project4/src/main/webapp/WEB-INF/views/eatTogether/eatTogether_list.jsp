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
<script type="text/javascript">
	$(document).ready(function() {
		$("#writeBtn").click(function() {
			location.href = "${path}/et.do?method=insertFrm";
		});
	});
	function detail(eattokey) {
		location.href = "${path}/et.do?method=detail&eattokey=" + eattokey;
	}
</script>
</head>

<body>
	<%@ include file="../common/header.jsp"%>



	<!-- Breadcrumb Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="eattogether__form">
				<h4>같이 먹어요</h4>
				<div class="hero__search">
					<div class="hero__search__form">
						<form method="post">
							<div class="hero__search__categories">
								제목 <span class="arrow_carrot-down"></span>
							</div>
							<input type="text" value="${et.title}" placeholder="내용을 입력해주세요.">
							<button type="submit" class="site-btn">검색</button>
						</form>
					</div>
				</div>
				<form action="${path}/et.do?method=insertFrm" method="post">
					<div class="shoping__cart__table">
						<table>
							<thead>
								<tr>
									<th>제목</th>
									<th>모임지역</th>
									<th>모임연령</th>
									<th>모임성별</th>
									<th>지불방식</th>
									<th>작성일</th>
									<th>댓글</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="et" items="${etlist}">
									<tr ondblclick="detail(${et.eattokey})">
										<td>${et.title}(0/${et.meetcnt})</td>
										<td>${et.loc}</td>
										<td>${et.meetage}</td>
										<td>${et.meetgender}</td>
										<td>${et.paytype}</td>
										<td><fmt:formatDate value="${et.writedate}" /></td>
										<td>0</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</form>
				<input type="button" class="site-btn" id="writeBtn" value="게시글 작성" />
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->
	<%@ include file="../common/footer.jsp"%>
</body>
</html>