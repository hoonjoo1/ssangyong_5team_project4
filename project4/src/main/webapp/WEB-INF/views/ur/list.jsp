<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../common/header.jsp"%>

<script type="text/javascript">
	
</script>
<br>
<br>
<br>
<br>

<h4 style="text-align: center">유저 리뷰</h4>
<br>
<table class="table table-hover"
	style="text-align: center; margin: 0 auto; width: 70%; background-color: #FF9500">

	<thead>
		<tr>
			<th scope="col" style="text-align: center">글 번호</th>
			<th scope="col" style="text-align: center">제목</th>
			<th scope="col" style="text-align: center">상대 아이디</th>
			<th scope="col" style="text-align: center">상대 점수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="list" items="${list }">
			<tr class="table-danger"
				onclick="location.href='/project4/urget.do?urkey='+${list.urkey}">
				<td>${list.urkey }</td>
				<td>${list.title}</td>
				<td>${list.oppoid }</td>
				<td>${list.oppograde }</td>
			</tr>
		</c:forEach>

	</tbody>
	<tfoot>
		<tr>
			<td colspan="3"><button class="btn btn-success" type="button"
					onclick="location.href='/project4/urregisterForm.do'">등록하기</button></td>
		</tr>
	</tfoot>
</table>
<br>
<br>
<br>
<br>


<%@ include file="../common/footer.jsp"%>
