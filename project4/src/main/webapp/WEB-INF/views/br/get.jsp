<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<%@ include file="../common/header.jsp"%>
<div class="checkout__form" style="width: 50%; margin: 0 auto;">
	<h4>상세 식당 리뷰</h4>
	<div class="row">
		<div class="col-lg-8 col-md-6">
			<div class="row">
				<div class="col-lg-6">
					<div class="checkout__input">
						<p>
							게시글번호<span>*</span>
						</p>
						<input type="text" name="title" value="${br.bkey }"
							readonly="readonly">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="checkout__input">
						<p>
							점수<span>*</span>
						</p>
						<input type="number" value="${br.grade }" readonly="readonly">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="checkout__input">
						<p>
							제목<span>*</span>
						</p>
						<input type="text" name="title" value="${br.title }"
							readonly="readonly">
					</div>
				</div>
			</div>
			<div class="checkout__input">
				<p>
					리뷰 내용<span>*</span>
				</p>
				<textarea rows="20" cols="82" name="content" readonly="readonly">${br.content }"</textarea>
			</div>
		</div>
	</div>
	<button class="site-btn"
		onclick="location.href='/project4/brupdateForm.do?bkey='+${br.bkey}">수정하기</button>
	<button class="site-btn"
		onclick="location.href='/project4/brdelete.do?bkey='+${br.bkey}">삭제하기</button>
	<button class="site-btn" onclick="location.href='/project4/brlist.do'">목록으로</button>
	<br>
</div>
<br>
<br>



<div class='row' style="width: 40%; margin-left: 450px;">
	<div class="col-lg-12">
		<!-- /.panel -->
		<div class="panel panel-default">

			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i> Reply
				<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New
					Reply</button>
			</div>

			<!-- /.panel-heading -->
			<div class="panel-body">
				<ul class="chat">
				</ul>
				<!-- ./ end ul -->
			</div>


			<!-- /.panel .chat-panel -->
			<div class="panel-footer"></div>
		</div>
	</div>
	<!-- ./ end row -->
</div>








<!-- 댓글 추가하기 -->


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>Reply</label> <input class="form-control" name='reply'
						value='New Reply!!!!'>
				</div>
				<div class="form-group">
					<label>Replyer</label> <input class="form-control" name='replyer'
						value='replyer'>
				</div>
				<div class="form-group">
					<label>Reply Date</label> <input class="form-control"
						name='replyDate' value='2018-01-01 13:13'>
				</div>

			</div>
			<div class="modal-footer">
				<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
				<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
				<button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
				<button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->



















<script type="text/javascript" src="/resources/js/brReply.js"></script>


<script>

$(document).ready(function () {
	  var bkeyValue = '<c:out value="${br.bkey}"/>';
	  var replyUL = $(".chat");
	  
	    showList();
	    
	function showList(){
	    replyService.getList({bkey:bkeyValue}, function(list) {
	      
	    console.log("list: " + list);
	    console.log(list);
	    
	     var str="";
	     
	     if(list == null || list.length == 0){
	       return;
	     }
	     
	     for (var i = 0, len = list.length || 0; i < len; i++) {
	       str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
	       str +="  <div><div class='header'><strong class='primary-font'>["
	    	   +list[i].rno+"] "+list[i].replyer+"</strong>"; 
	       str +="    <p>"+list[i].reply+"</p></div></li>";
	     }
	     
	     replyUL.html(str);
	     
	 
	   });//end function
	     
	 }//end showList
	
	 
    var modal = $(".modal");
    var modalInputReply = modal.find("input[name='reply']");
    var modalInputReplyer = modal.find("input[name='replyer']");
    var modalInputReplyDate = modal.find("input[name='replyDate']");
    
    var modalModBtn = $("#modalModBtn");
    var modalRemoveBtn = $("#modalRemoveBtn");
    var modalRegisterBtn = $("#modalRegisterBtn");
    
    $("#modalCloseBtn").on("click", function(e){
    	
    	modal.modal('hide');
    });
    
    $("#addReplyBtn").on("click", function(e){
      modal.find("input").val("");
      modalInputReplyDate.closest("div").hide();
      modal.find("button[id !='modalCloseBtn']").hide();
      modalRegisterBtn.show();
      
      $(".modal").modal("show");
      
    });
    

    modalRegisterBtn.on("click",function(e){
      var reply = {
            reply: modalInputReply.val(),
            replyer:modalInputReplyer.val(),
            bkey:bkeyValue
          };
      replyService.add(reply, function(result){
        alert(result);
        modal.find("input").val("");
        modal.modal("hide");
        showList();
      });
    });


  //댓글 조회 클릭 이벤트 처리 
    $(".chat").on("click", "li", function(e){
      
      var rno = $(this).data("rno");
      
      replyService.get(rno, function(reply){
      
        modalInputReply.val(reply.reply);
        modalInputReplyer.val(reply.replyer);
        modalInputReplyDate.val(replyService.displayTime( reply.replyDate))
        .attr("readonly","readonly");
        modal.data("rno", reply.rno);
        
        modal.find("button[id !='modalCloseBtn']").hide();
        modalModBtn.show();
        modalRemoveBtn.show();
        
        $(".modal").modal("show");
            
      });
    });
  
    
    modalModBtn.on("click", function(e){
      
      var reply = {rno:modal.data("rno"), reply: modalInputReply.val()};
      
      replyService.update(reply, function(result){
            
        alert(result);
        modal.modal("hide");
        showList(1);
        
      });
      
    });

    modalRemoveBtn.on("click", function (e){
    	  
  	  var rno = modal.data("rno");
  	  
  	  replyService.remove(rno, function(result){
  	        
  	      alert(result);
  	      modal.modal("hide");
  	      showList(1);
  	      
  	  });
  	  
  	}); 


	
});


</script>

















<script>

$(document).ready(function () {
	var bkeyValue = '<c:out value="${br.bkey}"/>';
/*	replyService.add(
		    {reply:"JS Test", replyer:"tester", bkey:bkeyValue}
		    ,
		    function(result){ 
		      alert("RESULT: " + result);
		    }
		)

	replyService.getList({bkey:bkeyValue}, function(list){
		  for(var i = 0,  len = list.length||0; i < len; i++ ){
		    console.log(list[i]);
		  }
	});
	
	 replyService.remove(161, function(count) {

		   console.log(count);

		   if (count === "success") {
		     alert("REMOVED");
		   }
		 }, function(err) {
		   alert('ERROR...');
		 });

	replyService.update({
		  rno : 162,
		  bkey : bkeyValue,
		  reply : "Modified Reply...."
		}, function(result) {

		  alert("수정 완료...");

		}); 
	
	replyService.get(162, function(data){
		console.log(data);l
	});
	*/
});


</script>





<%@ include file="../common/footer.jsp"%>