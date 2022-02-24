\<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../includes/header.jsp"%>
<script type="text/javascript">
	$(document).ready(function(){
		var proc="${proc}";
		if(proc!=""){
			alert(proc);
			if(proc=="삭제되었습니다"){
				location.href="/dept/list.do";
			}			
		}	
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("form").attr("action","/dept/update.do");
				$("form").submit();
			}
		}); 
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				location.href="/dept/delete.do?deptno="+$("[name=deptno]").val();
			}
		});
		$("#mainBtn").click(function(){
			location.href="/dept/list.do";
		});		
		
		
	});
</script>

<br>
<br>
<br>
<br>
<form action="/dept/update.do">
<table class="table table-hover"
	style="text-align: center; margin: 0 auto;">
	<tr>
		<td>부서번호</td>
		<td><input type="text" value="${dept.deptno }" name="deptno"></td>
	</tr>
	<tr>
		<td>부서번호</td>
		<td><input type="text" value="${dept.dname }" name="deptno"></td>
	</tr>
	<tr>
		<td>지역</td>
		<td><input type="text" value="${dept.loc }" name="loc"></td>
	</tr>

</table>
	<div style="text-align: right;">
		<input type="button" class="btn btn-info" value="수정" id="uptBtn" /> <input
			type="button" class="btn btn-danger" value="삭제" id="delBtn" /> <input
			type="button" class="btn btn-success" value="조회리스트" id="mainBtn" />
	</div>
</form>


<br>
<br>
<br>
<br>
<%@ include file="../includes/footer.jsp"%>
