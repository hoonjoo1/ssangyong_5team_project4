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
left:450px;
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
				});
				
				$('#writebtn').click(function(){
					location.href="${path}/groupwrite.do";	
				});
			});
			
			function goRead(fppkey){
				location.href="${path}/groupread.do?fppkey="+fppkey;
			}
			
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
				<c:forEach var="blist" items="${boardlist}">
					<tr><td>${blist.fppkey}</td><td onclick="goRead(${blist.fppkey})">${blist.title}</td><td>${blist.loc}</td>
					<td>${blist.nickname}</td><td>${blist.writedate}</td><td>${blist.viewcnt}</td></tr>
				</c:forEach>
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

</body>
</html>