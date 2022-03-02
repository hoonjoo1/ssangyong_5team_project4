<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<c:set var="path" value="${pageContext.request.contextPath }"/>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>


<style>
.uploadResult {
	width: 100%;
	background-color: gray;
}

.uploadResult ul {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}

.uploadResult ul li {
	list-style: none;
	padding: 10px;
}

.uploadResult ul li img {
	width: 100px;
}
</style>

<style>
.bigPictureWrapper {
	position: absolute;
	display: none;
	justify-content: center;
	align-items: center;
	top: 0%;
	width: 100%;
	height: 100%;
	background-color: gray;
	z-index: 100;
}

.bigPicture {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>


<style>
input[id="cb1"]+label {
	display: inline-block;
	width: 20px;
	height: 20px;
	border: 2px solid #bcbcbc;
	cursor: pointer;
}

input[id="cb1"]:checked+label {
	background-color: #666666;
}

input[id="cb1"] {
	display: none;
}
</style>
<script>
	
</script>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">

<%@ include file="../common/header.jsp"%>
<div class="checkout__form" style="width: 50%; margin: 0 auto;">
<form method="post" enctype="multipart/form-data" action="/project4/bristoinsert.do">
		<h4>식당 등록</h4>
		<div class="row">
			<div class="col-lg-8 col-md-6">
				<div class="row">
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								음식점 이름<span>*</span>
							</p>
							<input type="text" name="name">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								대표 메뉴<span>*</span>
							</p>
							<input type="text" name="menu">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								가격<span>*</span>
							</p>
							<input type="number" name="price">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								한줄설명<span>*</span>
							</p>
							<input type="number" name="explain">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								음식점 분류<span>*</span>
							</p>
							<input type="number" name="bustypekey" value="1"
								readonly="readonly">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>
								지역<span>*</span>
							</p>
							<input type="text" name="loc">
						</div>
					</div>



					<div class="col-lg-6">
						<div class="checkout__input">
							<p>주차여부</p>
							<div style="width: 150px; display: flex;">
								O<input type="radio" name="parking" value="가능" style="flex: 1">
								X<input type="radio" name="parking" value="불가능" style="flex: 1">
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>혼밥여부</p>
							<div style="width: 150px; display: flex;">
								O<input type="radio" name="eatalone" value="가능" style="flex: 1">
								X<input type="radio" name="eatalone" value="불가능" style="flex: 1">
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>아기의자</p>
							<div style="width: 150px; display: flex;">
								O<input type="radio" name="babychair" value="가능" style="flex: 1">
								X<input type="radio" name="babychair" value="불가능"
									style="flex: 1">
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>테이크아웃</p>
							<div style="width: 150px; display: flex;">
								O<input type="radio" name="carryout" value="가능" style="flex: 1">
								X<input type="radio" name="carryout" value="불가능" style="flex: 1">
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>배달</p>
							<div style="width: 150px; display: flex;">
								O<input type="radio" name="delivery" value="가능" style="flex: 1">
								X<input type="radio" name="delivery" value="불가능" style="flex: 1">
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">

					<div class="panel-heading">File Attach</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="form-group uploadDiv">
							<input type="file" name="uploadFile" multiple>
						</div>

						<div class='uploadResult'>
							<ul>

							</ul>
						</div>


					</div>
					<!--  end panel-body -->

				</div>
				<!--  end panel-body -->
			</div>
			<!-- end panel -->
		</div>
		<!-- /.row -->

		<input type="hidden" value="1" name="userkey"> <br> <input
			type="submit" class="site-btn" value="제출하기"> <input
			type="button" class="site-btn" value="목록으로"
			onclick="location.href='/project4/bristolist.do'">
	</form>
	<br>
</div>

<br>
<br>

<script>
/*
	$(document)
			.ready(
					function(e) {
						var formObj = $("form[role='form']");
					$("button[type='submit']")
								.on(
										"click",
										function(e) {

											e.preventDefault();

											console.log("submit clicked");

											var str = "";

											$(".uploadResult ul li")
													.each(
															function(i, obj) {

																var jobj = $(obj);

																console
																		.dir(jobj);
																console
																		.log("-------------------------");
																console
																		.log(jobj
																				.data("filename"));

																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].fileName' value='"
																		+ jobj
																				.data("filename")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].uuid' value='"
																		+ jobj
																				.data("uuid")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].uploadPath' value='"
																		+ jobj
																				.data("path")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].fileType' value='"
																		+ jobj
																				.data("type")
																		+ "'>";

															});

											console.log(str);

											formObj.append(str).submit();

										});

						
						
						
						
						
						
						
						
						var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
						var maxSize = 5242880; //5MB

						function checkExtension(fileName, fileSize) {

							if (fileSize >= maxSize) {
								alert("파일 사이즈 초과");
								return false;
							}

							if (regex.test(fileName)) {
								alert("해당 종류의 파일은 업로드할 수 없습니다.");
								return false;
							}
							return true;
						}

						
						
						
						
						$("input[type='file']")
								.change(
										function(e) {

											var formData = new FormData();

											var inputFile = $("input[name='uploadFile']");

											var files = inputFile[0].files;

											for (var i = 0; i < files.length; i++) {

												if (!checkExtension(
														files[i].name,
														files[i].size)) {
													return false;
												}
												formData.append("uploadFile",
														files[i]);

											}

											
											
											
											$.ajax({
												url : '/project4/q',
												processData : false,
												contentType : false,
												data : formData,
												type : 'POST',
												dataType : 'json',
												success : function(result) {
													console.log(result);
													showUploadResult(result); //업로드 결과 처리 함수 

												}
											}); //$.ajax


										});

						
						
						
						
						
						function showUploadResult(uploadResultArr) {

							if (!uploadResultArr || uploadResultArr.length == 0) {
								return;
							}

							var uploadUL = $(".uploadResult ul");

							var str = "";

							$(uploadResultArr)
									.each(
											function(i, obj) {

												if (obj.image) {
													var fileCallPath = encodeURIComponent(obj.uploadPath
															+ "/s_"
															+ obj.uuid
															+ "_"
															+ obj.fileName);
													str += "<li data-path='"+obj.uploadPath+"'";
			str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
			str +" ><div>";
													str += "<span> "
															+ obj.fileName
															+ "</span>";
													str += "<button type='button' data-file=\'"+fileCallPath+"\' "
			str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
													str += "<img src='/display?fileName="
															+ fileCallPath
															+ "'>";
													str += "</div>";
													str + "</li>";
												} else {
													var fileCallPath = encodeURIComponent(obj.uploadPath
															+ "/"
															+ obj.uuid
															+ "_"
															+ obj.fileName);
													var fileLink = fileCallPath
															.replace(
																	new RegExp(
																			/\\/g),
																	"/");

													str += "<li "
			str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
													str += "<span> "
															+ obj.fileName
															+ "</span>";
													str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
			str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
													str += "<img src='/project4/res/img/attach.png'></a>";
													str += "</div>";
													str + "</li>";
												}

											});

							uploadUL.append(str);
						}

						$(".uploadResult").on("click", "button", function(e) {

							console.log("delete file");

							var targetFile = $(this).data("file");
							var type = $(this).data("type");

							var targetLi = $(this).closest("li");

							$.ajax({
								url : '/deleteFile',
								data : {
									fileName : targetFile,
									type : type
								},
								dataType : 'text',
								type : 'POST',
								success : function(result) {
									alert(result);

									targetLi.remove();
								}
							}); //$.ajax
						});

					});
	*/
</script>
<%@ include file="../common/footer.jsp"%>
