<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../includes/header.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {
		var proc = "${proc}";
		if (proc != "") {
			alert(proc);
			location.href = "/dept/deptList.do";
		}

		$("#regBtn").click(function() {
			if (confirm("등록하시겠습니다.")) {
				$("#frm02").submit(); // frm02
			}

		});
<%-- 
		
		--%>
	});
</script>
<br>
<br>
<br>
<br>


<table class="table table-hover"
	style="text-align: center; margin: 0 auto; width: 70%; background-color: #FF9500">
	<thead>
		<tr>
			<th scope="col">부서 번호</th>
			<th scope="col">부서명</th>
			<th scope="col">부서위치</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list }" var="list">
			<tr class="table-danger"
				onclick="location.href='/dept/detail.do?deptno='+${ list.deptno}">
				<td><c:out value="${list.deptno }"></c:out></td>
				<td><c:out value="${list.dname }"></c:out></td>
				<td><c:out value="${list.loc }"></c:out></td>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
	<tr><td colspan="3"><button data-toggle="modal" data-target="#exampleModalCenter"
	class="btn btn-success" type="button">등록하기</button>
	</td></tr>
	</tfoot>
</table>
<br>
<br>
<br>
<br>


<div class="modal fade" id="exampleModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">사원정보등록</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="frm02" class="form" action="/dept/register.do">
					<div class="row">
						<div class="col">
							<input type="text" class="form-control" placeholder="부서번호 입력"
								name="deptno">
						</div>
						<div class="col">
							<input type="text" class="form-control" placeholder="부서명 입력"
								name="dname">
						</div>
						<div class="col">
							<input type="text" class="form-control" placeholder="지역 입력"
								name="loc">
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" id="regBtn" class="btn btn-primary">Save
					changes</button>
			</div>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>
