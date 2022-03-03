<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="/project4/a00_com/jquery.min.js"></script>

</head>
<body>



	<script>
		$(document).ready(function() {
			alert("gggg");
			$("#uploadBtn").on("click", function(e) {
				var formData = new FormData();
				var inputFile = $("input[name='uploadFile']");
				var files = inputFile[0].files;
				$.ajax({
					url : "/project4/uploadFileWithAjax",
					processData : false,
					contentType : false,
					data : formData,
					type : 'POST',
					success : function(result) {
						console.log("업로드 성공!!");
					}
				});
			});
		});
	</script>


	<div class="jumbotron text-center">
		<h2 data-toggle="modal" data-target="#exampleModalCenter">타이틀</h2>
	</div>

	<div>
		<input type="file" name="uploadFile" multiple id="ggg">
	</div>
	<button id="uploadBtn">파일업로드</button>




</body>
</html>