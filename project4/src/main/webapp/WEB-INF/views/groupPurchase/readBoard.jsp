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
th,td{
padding: 15px;
}

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

#delbtn{
position: absolute;
top: 50px;
right: 150px;
}

#uptbtn{
position: absolute;
top:50px;
right:20px;
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
}

#commentlisttb{
overflow: auto;
position: absolute;
width:100%;
height:200px;
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
				
				var proc = "${proc}";
				var sessNick = "${users.nickname}";
				var nick = $("[name=nickname]").val();
				
				
				if(proc!=""){
					alert(proc);
					location.href = document.referrer;
					
					if(proc=="삭제되었습니다"){
						location.href= "${path}/boardlist.do"
					}
				}
				
				/* 세션 없을 시 댓글 영역 hide*/
				if(sessNick == ""){
					$('#commentwrite').hide();	
				}
				
				/* 작성자가 아닐 시 삭제, 수정*/
				if(sessNick != nick){
					$('#delbtn').hide();
					$('#uptbtn').hide();
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
				
				$('#delbtn').click(function(){
					if(confirm('삭제하시겠습니까?')){
						location.href="${path}/delboard.do?fppkey="+$("[name=fppkey1]").val();						
					}
				});
							
			});	
			
			function goupt(fppkey){
				if(confirm("수정하시겠습니까?")){
					location.href="${path}/uptwrite.do?fppkey="+fppkey;
				}
			}
								
</script>
</head>

<body>
<div id="form1">

<input type="hidden" name="fppkey1" value="${fppkey}">

<c:forEach var="board" items="${blist}">
<!-- 제목 -->
	<div id="title">
		<input type="hidden" name="nickname" value="${board.nickname}">
		<h4 id="catname">${board.boardname}</h4>
		<div class="updown"></div>
		<h1 id="titname">${board.title}</h1>
		<h5 id="nickname">${board.nickname}</h5>
		<h5 id="date">작성일자 ${board.writedate}</h5>
		<hr id="titlehr">
		<button id="delbtn" class="btn btn-primary">삭제하기</button>
		
		<button id="uptbtn" type="button" onclick="goupt(${fppkey})"
		 class="btn btn-primary">수정하기</button>
	</div>

	<div id="userinfo">
		<div id="loc">
			<h5 id=loctxt>지역: ${board.loc}</h5>
			<h5>모집인원: ${board.meetcnt}명</h5>
			<h5>지불방식: ${board.paytype}</h5>
			<hr id="userhr">
		</div>
	</div>
	
	<div id="content">
		<p>${board.content}</p>
		<hr id="conhr">
	</div>
</c:forEach>
	
	<div id="commentlist">
		<h5>댓글 목록</h5>
		<!-- 후에 for문으로 대체 -->
		<div id="commentlisttb">
			<table>
				<c:forEach var="fcomm" items="${commlist}">
					<tr>
					<th>${fcomm.nickname}</th>
					<td>${fcomm.commcontent}</td>
					<th>${fcomm.commdate}</th>
					<td><button id="recomBtn" class="btn btn-primary">답글</button></td>
					<!-- 작성자 미 일치시 삭제 버튼 비 활성화 -->
					<c:if test="${fcomm.nickname == users.nickname}">
						<td><button id="comdelBtn" class="btn btn-danger">삭제</button></td>
					</c:if>
					</tr>
				</c:forEach>
			</table>
		</div>
		
	</div>
	
	<form method="post" action="${path}/insertcomm.do">
		<div id="commentwrite">
			<hr>
			<h5>댓글 작성</h5>
			<textarea rows="5" cols="100%" name="commcontents"></textarea>
			<input type="hidden" name="fppkey" value="${fppkey}">
			<input type="hidden" name="id" value="${users.id}">
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