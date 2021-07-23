<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<section class="bg-half-170 d-table w-100"></section>
<body  data-open="click" data-menu="vertical-menu-modern" data-col="content-detached-right-sidebar">
    <div class="app-content  ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">질문 Update</h2>
                            <div class="breadcrumb-wrapper">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-header-right text-md-end col-md-6 col-12 d-md-block d-none">
					<button type="button" id="modifyBtn" class="btn btn-primary" onclick="modify_go();">수 정</button>						
				    <button type="button" class="btn btn-danger " id="cancelBtn" onclick="history.go(-1);">취 소</button>
                </div>
            </div>
            <div class="card ">
                <div class="card-body">
                    <form enctype="multipart/form-data" role="form" method="post" action="modify.do" name="modifyForm">
							<input type="hidden" name="cqbNo" value="${cqbBoard.cqbNo }" />
							<div class="form-group">
								<label for="cqbTitle">제 목</label> 
								<input type="text" id="cqbTitle" name='cqbTitle' class="form-control" value="${cqbBoard.cqbTitle }">
							</div>
							<div class="form-group">
								<label for="studentId">작성자</label> 
								<input type="text" id="studentId" readonly	name="studentId" class="form-control"  value="${cqbBoard.studentId }">
							</div>
							<div class="form-group">
								<label for="cnbContents">내 용</label>
								<div class="card-body">
								<textarea class="form-control" name="cqbContents" id="cqbContents"
									rows="5" placeholder="1000자 내외로 작성하세요.">
														${cqbBoard.cqbContents}
								</textarea>
								</div>		
							</div>
							<div class="card">
							<div class="card-header"></div>
							<div class="card-body">
								<div class="col-sm-12">
									<div class="border rounded p-2">
										<h4>첨부파일</h4>
						                <button class="btn btn-xs btn-primary" onclick="addFile_go();"	type="button" id="addFileBtn">Add File</button>
						                <br>
										<div class="fileInput mb-2">
											<ul>
												<c:forEach items="${cqbBoard.cqbAttachList }" var="attach" >
												<br>
												<li class="attach-item">			
														<a name="attachedFile"attach-fileName="${attach.fileName }" attach-no="${attach.cqbAno }" 
															href="<%=request.getContextPath()%>/student/manage/board/qna/getFile.do?cqbAno=${attach.cqbAno }">													
															<i class="fas fa-paperclip"></i>
															${attach.fileName }&nbsp;&nbsp;
															<button type="button" style="border:0;outline:0;" class="badge bg-red">X</button>																									
														</a>													
												</li>
												
												</c:forEach>
											</ul>
											<br/>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
                </div>
            </div>
        </div>
    </div>
	
<script>
window.onload=function(){
	Summernote_start($('#cqbContents')); 
	
	//첨부파일===================================
	$('a[name="attachedFile"] > button').click(function(event){
		var parent = $(this).parent('a[name="attachedFile"]');
		alert(parent.attr("attach-fileName")+"파일을 삭제합니다.");
		
		var ano=parent.attr("attach-no");
		
		$(this).parents('li.attach-item').remove();
		
		var input=$('<input>').attr({"type":"hidden",
		     						 "name":"deleteFile",
		     						 "value":ano
			 						}); 
		$('form[role="form"]').prepend(input);
		
		return false;
	});
	
	$('#addFileBtn').on('click',function(event){
		//alert("click add btn");
		var attachedFile=$('a[name="attachedFile"]').length;
		var inputFile=$('input[name="uploadFile"]').length;	
		var attachCount=attachedFile+inputFile;
		
		if(attachCount >=5){
			alert("파일추가는 5개까지만 가능합니다.");
			return;
		}
		
		var input=$('<input>').attr({"type":"file","name":"uploadFile"})
		  					  .css("display","inline"); 
		var div=$('<div>').addClass("inputRow");
		div.append(input).append("<button style='border:0;outline:0;' class='badge bg-red' type='button'>X</button");
		div.appendTo('.fileInput');
	});
	
	$('div.fileInput').on('click','div.inputRow > button',function(event){  		
		//alert("X btn click;");
		$(this).parent('div.inputRow').remove();	
	});
	
	$('.fileInput').on('change','input[type="file"]',function(event){
		if(this.files[0].size>1024*1024*40){
			alert("파일 용량이 40MB를 초과하였습니다.");
			this.value="";
			$(this).focus();
			return false;
		} 
	});	
}

function modify_go(){
	
	
	$("form[role='form']").submit();
}
</script>
<%@ include file="/WEB-INF/views/common/summernote.jsp" %>
</body>
