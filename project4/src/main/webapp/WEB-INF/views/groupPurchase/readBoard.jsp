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

#title{
position: absolute;
width:100%;
height:150px;
}

.updown {
border: 1px solid black;
width: 0.1px;
height: 50px;
position: absolute;
top:30px;
left:180px;
}

#catname{
color:green;
position: absolute;
top:50px;
}

#titname{
position: absolute;
left:200px;
top:40px;
}

#nickname{
position: absolute;
top : 100px;
}

#date{
position: absolute;
top : 100px;
right: 50px;
}

#titlehr{
position: relative;
top: 120px;
background-color: black;
}

#userinfo{
position: absolute;
top:150px;
width : 100%;
height:100px;
  }

#userhr{
position: relative;
top: 0px;
background-color: black;
}

#content{
position:absolute;
top:270px;
width:100%;
height:400px;
}

#conhr{
position: relative;
top:300px;
}

#commentlist{
position:absolute;
top:680px;
width:100%;
height:200px;
overflow: auto;
}

#commentwrite{
position: absolute;
top:900px;
width:100%;
}

#footer{
position: absolute;;
top:1300px;
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
<!-- 제목 -->
	<div id="title">
		<h4 id="catname">식자재 공동구매</h4>
		<div class="updown"></div>
		<h1 id="titname">제목입니다</h1>
		<h5 id="nickname">닉네임</h5>
		<h5 id="date">작성일자 2022-01-25</h5>
		<hr id="titlehr">
	</div>

	<div id="userinfo">
		<div id="loc">
			<h5 id=loctxt>지역: 서울</h5>
			<h5>모집인원: 3명</h5>
			<h5>지불방식: 더치페이</h5>
			<hr id="userhr">
		</div>
	</div>
	
	<div id="content">
		<p>스프링 프레임워크(영어: Spring Framework)는 자바 플랫폼을 위한 오픈 소스 애플리케이션 프레임워크로서 간단히 스프링(Spring)이라고도 한다. 
		동적인 웹 사이트를 개발하기 위한 여러 가지 서비스를 제공하고 있다. 
		대한민국 공공기관의 웹 서비스 개발 시 사용을 권장하고 있는 전자정부 표준프레임워크의 기반 기술로서 쓰이고 있다.</p>
		<hr id="conhr">
	</div>
	
	<div id="commentlist">
		<h5>댓글 목록</h5>
		<!-- 후에 for문으로 대체 -->
		<table>
				<tr>
				<th>닉네임1</th>
				<td>댓글 내용</td>
				<th>2022-12-31</th>
				</tr>
				<tr>
				<th>닉네임2</th>
				<td>댓글 내용</td>
				<th>2022-12-31</th>
				</tr>
				<tr>
				<th>닉네임3</th>
				<td>댓글 내용</td>
				<th>2022-12-31</th>
				</tr>
		</table>
		
	</div>
	
	<form>
		<div id="commentwrite">
			<hr>
			<h5>댓글 작성</h5>
			<textarea rows="5" cols="100%" name="comment"></textarea>
			
			<button type="reset" class="btn btn-primary">초기화</button>
			<button type="button" id="confirmbtn" class="btn btn-primary" data-toggle="modal" data-target="#mymodal">등록</button>
		</div>
	</form>

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