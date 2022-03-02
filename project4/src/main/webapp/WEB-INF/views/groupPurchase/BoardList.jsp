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

#paging{
position: absolute;
top:900px;
right:500px;
}

#pagecnt{
position: absolute;
top:10px;
right:20px;
}
</style>

<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css?after" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">

			$(document).ready(function(){
				var id = "${users.id}";
				
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
					if(id==""){
						alert("로그인 해주세요!");
					}else{
						location.href="${path}/groupwrite.do";
					}
				});
			});
			
			function goRead(fppkey){
				location.href="${path}/groupread.do?fppkey="+fppkey;
			}
			
			function goPage(fppkey){
				$("[name=curPage]").val(fppkey);
				$("form").submit();
			}	
			
</script>
</head>

<body>

<%@ include file="../common/header.jsp"%>

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

		<ul class="pagination  justify-content-end" id="paging">
	 	 	<li class="page-item"><a class="page-link" 
	  		href="javascript:goPage(${boardList.startBlock!=1?boardList.startBlock-1:1})">Previous</a></li>
	  		<c:forEach var="cnt" begin="${boardList.startBlock}" end="${boardList.endBlock}">
	  			<li class="page-item ${cnt==boardList.curPage?'active':''}"> <!-- 클릭한 현재 페이지 번호 -->
	  			<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
	 		 </c:forEach>
	 		 <li class="page-item"><a class="page-link" 
	  			href="javascript:goPage(${boardList.endBlock!=boardList.pageCount?boardList.endBlock+1:boardList.endBlock})">Next</a></li>

	   </ul>
	   
	</div>
	
	<div id="pagecnt">
	   	 <h5>${boardList.count}건</h5>
	</div>
	
	<form>
		<input type="hidden" name="curPage" value="1"/>
		<div id="search">
			검색 <input type="text" name="sch">
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