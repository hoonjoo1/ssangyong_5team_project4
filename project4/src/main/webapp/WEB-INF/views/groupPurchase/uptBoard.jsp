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

/* 버튼 */
#btn{
position:absolute;
top:950px;
left:1000px;
}

#footer{
position: absolute;;
top:1200px;
width:100%;
height:200px;
}
</style>

<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css?after" >
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
				
				$("#canclebtn").click(function(){
					if(confirm('글 수정을 취소 하시겠습니까?')){
						history.go(-1);
					}
				});
			});	
			
</script>
</head>

<body>
<form method="post" action="${path}/uptboard.do">
<!-- form DIV -->
<div id="form1">
	<c:forEach var="ublist" items="${ublist}">
<!-- 제목 -->
	<div id="title">
		<input type="hidden" name="foodpubpurkey" value="${fppkey}">
		제목 <input type="text" name="title" value="${ublist.title}" placeholder="제목을 입력해주세요" size="70">
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
		인원 <input type="text" name="meetcnt" value="${ublist.meetcnt}" placeholder="인원" size="5">명
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
		<textarea class="form-control" name="content" placeholder="내용을 입력해주세요" id="exampleTextarea" rows="25">${ublist.content}</textarea>
	</div>
	</c:forEach>
<!-- 버튼 -->
	<div id="btn">
		<button type="button" id="canclebtn" class="btn btn-primary">취소</button>
		<button type="button" id="confirmbtn" class="btn btn-primary" data-toggle="modal" data-target="#mymodal">수정하기</button>
	</div>
	
</div>


</form>

<div id="footer">
</div>

<!-- modal -->
<div class="modal" id="mymodal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">수정하기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="modal-body">
        <p>수정하시겠습니까?</p>
      </div>
      <div class="modal-footer">
        <button type="button" id="submitbtn" class="btn btn-primary">확인</button>
        <button type="button" id="closebtn" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>
  
</body>
</html>