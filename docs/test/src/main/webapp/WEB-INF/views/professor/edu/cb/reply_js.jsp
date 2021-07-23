<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="reply-list-template" >
{{#each .}}
<div class="replyLi" >
	<div class="user-block">
		<img src="<%=request.getContextPath()%>/professor/manage/img/getStuPictureById/{{cqbId}}" 
         onerror="this.src='<%=request.getContextPath() %>/resources/img/noimage.png'" class="round" height="40" width="40"/>
    </div>
	
 	<div class="timeline-item" >
  		<span class="time">
    		<i class="fa fa-clock"></i>{{prettifyDate cqbDate}}
	 		<a class="btn btn-outline-primary waves-effect {{cqbRno}}-a" id="modifyReplyBtn" data-rno={{cqbRno}}
				onclick="replyModifyModal_go('{{cqbRno}}');"				
				style="display:{{VisibleByLoginCheck cqbId}};"
	    		data-replyer={{cqbId}} data-bs-toggle="modal" data-bs-target="#modifyModal">Modify</a>
  		</span>
		<button type="button" class="btn btn-danger" style="display:{{VisibleByLoginCheck cqbId}};" 
		id="replyDelBtn" onclick="replyRemove_go('{{cqbRno}}');">DELETE</button>
	
  		<h6 class="timeline-header"><strong style="display:none;">{{rno}}</strong>{{cqbId}}</h6>
  		<div class="timeline-body" id="{{cqbRno}}-replytext">{{cqbContents}} </div>
	</div>
</div>
{{/each}}	
</script>
<script type="text/x-handlebars-template"  id="reply-pagination-template" >
<li class="page-item">
	<a href="1" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		&lt;&lt;
	</a>
</li>
<li class="page-item">
	<a href="{{#if prev}}{{prevPageNum}}{{/if}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		&lt;
	</a>
</li>
{{#each pageNum}}
<li class="page-item {{signActive this}} ">
	<a href="{{this}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		{{this}}
	</a>
</li>
{{/each}}

<li class="page-item ">
	<a href="{{#if next}}{{nextPageNum}}{{/if}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		&gt;
	</a>
</li>
<li class="page-item">
	<a href="{{realEndPage}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		&gt;&gt;
	</a>
</li>	
</script>


<script> //댓글 리스트
var replyPage=1;
window.onload=function(){
	
	
	getPage("<%=request.getContextPath()%>/professor/manage/edu/qna/replies/${cqbBoard.cqbNo}/"+replyPage);

	Handlebars.registerHelper({
		"prettifyDate":function(timeValue){ //Handlbars에 날짜출력함수 등록
			var dateObj=new Date(timeValue);
			var year=dateObj.getFullYear();
			var month=dateObj.getMonth()+1;
			var date=dateObj.getDate();
			return year+"/"+month+"/"+date;
		},
		"VisibleByLoginCheck":function(cqbId){
			var result="none";
			
			if(cqbId == "${loginUser.usersId}") result="visible";
			
			return result;						  
		},
		"signActive":function(pageNum){
			if(pageNum == replyPage) return 'active';
		}
	});
	
	$('.pagination').on('click','li a',function(event){
		//alert();
				
		if($(this).attr("href")) {
			replyPage=$(this).attr("href");
			getPage("<%=request.getContextPath()%>/professor/manage/edu/qna/replies/${cqbBoard.cqbNo}/"+replyPage);
		}	
		
		return false;
	});
}

	


function printData_CQB(replyArr,target,templateObject){
	var template=Handlebars.compile(templateObject.html());
	var html = template(replyArr);	
	$('.replyLi').remove();
	target.after(html);
}
function printPagination(pageMaker,target,templateObject){
	var pageNum = new Array(pageMaker.endPage-pageMaker.startPage+1);
	
	for(var i=0;i<pageMaker.endPage-pageMaker.startPage+1;i++){
		pageNum[i]=pageMaker.startPage+i;
	}	
	pageMaker.pageNum=pageNum;
	pageMaker.prevPageNum=pageMaker.startPage-1;
	pageMaker.nextPageNum=pageMaker.endPage+1;
	
	var template=Handlebars.compile(templateObject.html());	
	var html = template(pageMaker);	
	target.html("").html(html);
}
function getPage(pageInfo){	 
	$.getJSON(pageInfo,function(data){	
		printData_CQB(data.cqbReplyList,$('#repliesDiv'),$('#reply-list-template'));
		printPagination(data.pageMaker,$('ul#pagination'),$('#reply-pagination-template'));
	});
}
function replyRegist_go(){
	//alert("add reply btn");
	var cqbId=$('#newReplyWriter').val();
	var cqbContents=$('#newReplyText').val();
	var cqbNo=$('input[name="cqbNo"]').val()
	
	if(!(cqbId && cqbContents)){
		alert("작성자 혹은 내용은 필수입니다.");
		return;
	}
	
	var data={
			"cqbNo":cqbNo,
			"cqbId":cqbId,
			"cqbContents":cqbContents	
	}
	$.ajax({
		url:"<%=request.getContextPath()%>/professor/manage/edu/qna/replies",
		type:"post",
		data:JSON.stringify(data),	
		contentType:'application/json',
		success:function(data){
			var result=data.split(',');
			if(result[0]=="SUCCESS"){
				alert('댓글이 등록되었습니다.');
				replyPage=result[1]; //페이지이동
				getPage("<%=request.getContextPath()%>/professor/manage/edu/qna/replies/"+cqbNo+"/"+result[1]); //리스트 출력
				$('#newReplyText').val("");				
			}else{
				alert('댓글이 등록을 실패했습니다.');	
			}
		},
		error:function(error){
			AjaxErrorSecurityRedirectHandler(error.status);
		}
		
	});
}
//댓글 수정
function replyModifyModal_go(cqbRno){
	//alert("click modify btn");
	//alert(rno);
	//alert("rno:"+rno+"\nreplyer:"+replyer+"\nreplytext:"+replytext);
	
	$('#replytext').val($('div#'+cqbRno+'-replytext').text());
	$('.modal-title').text(cqbRno);
	
}
function replyModify_go(){
	var cqbRno=$('.modal-title').text();
	var cqbContents=$('#replytext').val();
	
	var sendData={		
			cqbContents:cqbContents
	}
	
	$.ajax({
		url:"<%=request.getContextPath()%>/professor/manage/edu/qna/replies/"+cqbRno,
		type:"PUT",
		headers:{			
			"X-HTTP-Method-Override":"PUT"
		},
		data:JSON.stringify(sendData),
		contentType:"application/json",
		success:function(result){
			alert("수정되었습니다.");			
			getPage("<%=request.getContextPath()%>/professor/manage/edu/qna/replies/${cqbBoard.cqbNo}/"+replyPage);
		},
		error:function(error){
			AjaxErrorSecurityRedirectHandler(error.status);
		},
		complete:function(){
			$('#modifyModal').modal('hide');
		}
	});
	
}
function replyRemove_go(cqbRno){
	//alert("click remove btn");
	
	$.ajax({
		url:"<%=request.getContextPath()%>/professor/manage/edu/qna/replies/${cqbBoard.cqbNo}/"+cqbRno+"/"+replyPage,
		type:"DELETE",
		headers:{
			"X-HTTP-Override":"delete"
		},	
		success:function(page){
			alert("삭제되었습니다.");
			getPage("<%=request.getContextPath()%>/professor/manage/edu/qna/replies/${cqbBoard.cqbNo}/"+page);
			replyPage=page;
		},
		error:function(error){
			AjaxErrorSecurityRedirectHandler(error.status);
		},
		complete:function(){
			$('#modifyModal').modal('hide');
		}
	});
}
</script>
