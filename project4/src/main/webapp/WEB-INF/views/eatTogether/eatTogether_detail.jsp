<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>   
<!DOCTYPE html>
<html>

	<head>
	   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	    <script>
		    $(document).ready(function(){
			    var msg = "${msg}";
				if(msg!=""){
					if(msg=="수정되었습니다."){
						if(confirm(msg+"\n게시판으로 이동하시겠습니까?")){
							location.href="${path}/et.do?method=list";
						}	
					}
					if(msg=="삭제되었습니다."){
						alert(msg+"\n게시판으로 이동됩니다.")
						location.href="${path}/et.do?method=list";
					}
				}
				
				$("#goETList").click(function(){
					location.href="${path}/et.do?method=list";
				});
				
				$("#delBtn").click(function(){
					if(confirm("삭제하시겠습니까?")){
						location.href="${path}/et.do?method=delete&eattokey="+${et.eattokey};
					}
				});
				
				$("#uptBtn").click(function(){
					if(confirm("수정하시겠습니까?")){
						location.href="${path}/et.do?method=updateFrm&eattokey="+${et.eattokey};
					}
				});
		    });
	    
	    </script>
	</head>
	
	<body>
	 <jsp:include page="../common/header.jsp">
	      <jsp:param name="name" value="header" />
	   </jsp:include> 
	
	
	    <!-- Breadcrumb Section Begin -->
	    <section class="breadcrumb-section set-bg" data-setbg="project4/img/breadcrumb.jpg">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12 text-center">
	                    <div class="eattogether__text" id="goETList">
	                        <h2>같이 먹어요</h2>
	                        <div class="eattogether__option">
	                            <a>Home</a>
	                            <span>EatTogether</span>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	    <!-- Breadcrumb Section End -->
	
	    <!-- Checkout Section Begin -->
	    <section class="checkout spad">
	        <div class="container">
	            <div class="eattogether__form">
	                <h4>
		                ${et.title}
		                <hr>
		                <p>모임시간 : <fmt:formatDate value="${et.meetdate}"/></p>
		                <p>모임지역 : ${et.loc}</p>
		                <p>${et.meetage} / ${et.meetgender} / ${et.paytype}</p>
	                </h4>
	                
	                <form action="${path}/et.do?method=updateFrm&eattokey="+${et.eattokey}>
	                    <div class="row">
	                        <div class="col-lg-12 col-md-8">
	                            <div class="row">
	                                <div class="col-lg-12">
	                                    <div class="eattogether__input" style="border-bottom: 1px solid #e1e1e1;padding-bottom: 20px;margin-bottom: 25px;">
	                                        ${et.content}
	                                    </div>
	                                </div>
	                                <!-- 
	                                <br>
	                                <div class="col-lg-12">
	                                    <div class="eattogether__input" style="border-bottom: 1px solid #e1e1e1;padding-bottom: 20px;margin-bottom: 25px;">
	                                        <p>이런 밥친구가 좋아요!</p>
	                                        <div class="eattogether__select like">
	                                            <label for="like2">
	                                                밥을 느긋하게 먹는 사람이 좋아요
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select like">
	                                            <label for="like3">
	                                                이야기 나누며 밥먹는 게 좋아요
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select like">
	                                            <label for="like5">
	                                                매운음식을 같이 먹을 수 있으면 좋아요
	                                            </label>
	                                        </div>
	                                    </div>
	                                    <div class="eattogether__input" style="border-bottom: 1px solid #e1e1e1;padding-bottom: 20px;margin-bottom: 25px;">
	                                        <p>이런 밥친구는 싫어요!</p>
	                                        <div class="eattogether__select">   
	                                            <label for="hate1">
	                                                음식을 씹은 채로 말을 하는 건 싫어요
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="hate2">
	                                                다리를 떠는 건 싫어요
	                                            </label>
	                                        </div>
	                                        <div class="eattogether__select">
	                                            <label for="hate5">
	                                                개인수저로 음식을 나눠먹는 건 싫어요
	                                            </label>
	                                        </div>
	                                    </div>
	                                </div>
	                            -->
	                            </div>
                        	</div>
                    	</div>
	                </form>
	            </div>
	            <input type="button" value="수정" class="site-btn" id="uptBtn"/>
	            <input type="button" value="삭제" class="site-btn" id="delBtn"/>
	        </div>
	    </section>
	    <!-- Checkout Section End -->
	
	
	</body>
</html>