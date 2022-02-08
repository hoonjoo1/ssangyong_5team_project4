<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

#form1{
position:absolute;
left:400px;
top:200px;
width:1200px;
height:1100px;
background-color: white;
}

#footer{
position: absolute;;
top:1300px;
width:100%;
height:200px;
}

table{
width:100%;
}

#search{
position: absolute;
top:1000px;
left:500px;
}

#writebtn{
position: absolute;
top:1000px;
right:50px;
}
</style>

<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css?after" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">

			$(document).ready(function(){
				$('#confirmbtn').click(function(){
					$('#mymodal').modal({
						show: false
					});
					
				});
				
				$('#closebtn').click(function(){
					$('#mymodal').modal('hide');
				});
				
				$('#submitbtn').click(function(){
					$('form').submit();
				})
			});	
			
</script>
</head>

<body>
<div id="form1">
	<div id="title">
		<h1>식자재 공동구매</h1>
	</div>
	
	<div id="boardList">
		<hr>
		<table border="1" class="table table-hover">
			<thead>
				<tr class="table-active">
					<th width="7%">번호</th>
					<th width="53%" align="center">제목</th>
					<th width="7%">지역</th>
					<th width="10%">작성자</th>
					<th width="15%">등록일</th>
					<th width="8%">조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr><td>1</td><td>예시 제목입니다</td><td>서울</td><td>닉네임</td><td>2022-02-08</td><td>36</td></tr>
			</tbody>
		</table>
	</div>
	
	<form>
		<div id="search">
			검색 <input type="text" name="search">
			<button class="btn btn-primary">검색</button>
		</div>
	</form>
	
	<div id="writebtn">
		<button class="btn btn-primary">글쓰기</button>
	</div>

</div>

<div id="footer">

</div>


<!-- modal -->
<div class="modal" id="mymodal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">댓글등록</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="modal-body">
        <p>등록 하시겠습니까??</p>
      </div>
      <div class="modal-footer">
        <button type="button" id="submitbtn" class="btn btn-primary">확인</button>
        <button type="button" id="closebtn" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
  
</body>
</html>