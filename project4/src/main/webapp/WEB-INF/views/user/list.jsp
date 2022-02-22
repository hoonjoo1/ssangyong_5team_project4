<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../includes/header.jsp"%>

<script type="text/javascript">
	$(document).ready(
			function() {

				$("#regBtn").on("click", function() {
					self.location = "/board/register";

				});

				var result = '<c:out value="${result}"/>';

				checkModal(result);

				function checkModal(result) {

					if (result === '' || history.state) {
						return;
					}

					if (parseInt(result) > 0) {
						$(".modal-body").html(
								"게시글 " + parseInt(result) + " 번이 등록되었습니다.");
					}

					$("#myModal").modal("show");
				}

			})
</script>


<br>
<br>
<br>
<br>
<button id='regBtn' type="button" class="btn btn-xs pull-right">글쓰기</button>
<table class="table table-hover"
	style="text-align: center; margin: 0 auto;">
	<thead>
		<tr>
			<th scope="col">게시판 이름</th>
		</tr>
	</thead>
	<tbody>


		<c:forEach items="${list }" var="board">
			<tr class="table-danger">
				<td><a href='/board/get?boardkey=<c:out value="${board.boardkey }"/>'><c:out value="${board.boardname }"/>
				</a></td>
			</tr>
		</c:forEach>

	</tbody>
</table>
<br>
<br>
<br>
<br>
<%@ include file="../includes/footer.jsp"%>




<!-- Modal  추가 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Modal title</h4>
			</div>
			<div class="modal-body">처리가 완료되었습니다.</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->