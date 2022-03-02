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

html{
background-color:white;
}

/* form DIV */
#form1{
position:absolute;
left:400px;
top:200px;
width:1200px;
height:1000px;
background-color: white;
}

/* 제목 */
#title{
position: absolute;
top:30px;
left:0px;
width:800px;
}

/* 지역 */
#loc{
position:absolute;
right:0px;
width:200px;
}

/* 인원 */
#number{
position: absolute;
top:100px;
left:0px;
width:300px;
}

/* 지불방식 */
#payway{
position: absolute;
top:180px;
left:0px;
width:400px;
}

/* 내용 */
#content{
position:absolute;
width:100%;
top:250px;
}

.fileCls{
position: relative;
top:950px;
}

/* 버튼 */
#btn{
position:relative;
top:1300px;
width:200px;
height:200px;
left:500px;
}

#footer{
position: absolute;;
top:1800px;
width:100%;
height:200px;
}

</style>

<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css?after">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">

			$(document).ready(function(){
				
				var proc = "${proc}";
				if(proc!=""){
					alert(proc);
					location.href="${path}/boardlist.do"
					
				}
				
				$('#confirmbtn').click(function(){
					if(confirm('작성 하시겠습니까?')){
						$('form').submit();
					}
				});
						
				$("#addFile").click(function(){
					console.log("추가");
					$("form").append($(".fileCls").eq(-1).clone());
				});
				
				$("#canclebtn").click(function(){
					if(confirm('글 작성을 취소 하시겠습니까?')){
						location.href="${path}/boardlist.do"
					}
				});
			});	
			
</script>
</head>

<body>

<%@ include file="../common/header.jsp"%>

<form method="post" enctype="multipart/form-data" action="${path}/insertfpp.do">
<!-- form DIV -->
<div id="form1">
<!-- 제목 -->
	<div id="title">
		제목 <input type="text" name="title" placeholder="제목을 입력해주세요" size="70">
		<input type="hidden" name="id" value="${users.id}">
	</div>
<!-- 지역 -->
	<div id="loc">
		<label>지역</label>
		<select class="form-select" id="locsel" name="loc">
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="인천">인천</option>
				<option value="제주">제주</option>
			</select>
	</div>

<!-- 인원 -->
	<div id="number">
		인원 <input type="text" name="meetcnt" placeholder="인원" size="5">명
	</div>

<!-- 지불방식 -->
	<div id="payway">
		지불방식
		<input type="radio" class="form-check-input" name="paytype" value="더치페이" checked="checked"> 더치페이
		<input type="radio" class="form-check-input" name="paytype" value="무료"> 무료
	</div>
	
<!-- 내용 -->
	<div id="content">
		<label class="form-label mt-4">내용</label>
		<textarea class="form-control" name="content" placeholder="내용을 입력해주세요" id="exampleTextarea" rows="25"></textarea>	
	</div>

<div class="input-group mb-3 fileCls">
		<div class="input-group-prepend">
			<span class="input-group-text"
				id="addFile"
			>첨부 파일(추가)</span>
		</div>
		 <div class="form-group">
      		<input class="form-control" name="report" type="file" id="formFile" multiple="multiple">
    	</div>
		
</div>
  
  <div id="btn">
		<button type="button" id="canclebtn" class="btn btn-primary">취소</button>
		<button type="button" id="confirmbtn" class="btn btn-primary" data-toggle="modal" data-target="#modal">작성완료</button>
  </div>


</div>
</form>

<div id="footer">
</div>

</body>
</html>