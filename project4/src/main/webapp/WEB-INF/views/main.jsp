<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="includes/header.jsp" %>

<script>
$(document).ready(function(){
	var psc = "${psc}";

		var hasSession="${users.name}";
		console.log("세션이름:"+hasSession);
		console.log(hasSession);
		if(hasSession!=""){ // session값이 없을 때..
			$("#statue").text("로그아웃");
		}	
})




</script>
<table class="table table-hover"
	style="text-align: center; margin: 0 auto;">
	<thead>
		<tr>
			<th scope="col">IT IS MY WORLD</th>
		</tr>
	</thead>
	<tbody>


			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>
			<tr class="table-danger">
			<td></td>
			</tr>

	</tbody>
</table>
<%@ include file="includes/footer.jsp" %>
