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
                            <h2 class="content-header-title float-start mb-0">과제 INSERT</h2>
                            <div class="breadcrumb-wrapper">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-header-right text-md-end col-md-6 col-12 d-md-block d-none">
					<button type="button" id="registBtn" onclick="regist_go();" class="btn btn-primary">등록</button>
					<button type="button" id="cancelBtn" onclick="CloseWindow();" class="btn btn-danger">취소</button>
                </div>
            </div>
            <div class="card">
				<div class="card-body">
					<div class="card-body pad">
						<form enctype="multipart/form-data" role="form" method="post" action="regist.do?ingCourseCode=${param.ingCourseCode }" name="registForm">
							<div class="form-group">
								<label for="cbTitle">제 목</label> 
								<input type="text" id="cbTitle"
									name='cbTitle' class="form-control" placeholder="제목을 입력해 주세요.">
							</div>							
							<div class="form-group">
								<label for="cbWriter">작성자</label> 
								<input type="text" id="cbWriter" readonly
									name="cbWriter" class="form-control" value="${prof.profName }">
							</div>
							<div class="form-group">
								<label for="cbContents">내 용</label>
								<textarea class="textarea" name="cbContents" id="cbContents" rows="20"
									placeholder="1000자 내외로 작성하세요." style="display: none;"></textarea>
							</div>
<!-- 							<h3>첨부파일</h3> -->
<!-- 							<div class="card"> -->
<!-- 								<div class="card-header"></div> -->
<!-- 								<div class="card-body"> -->
<!-- 									<div class="col-sm-12"> -->
<!-- 										<div class="border rounded p-2"> -->
<!-- 											<h4 class="mb-1">첨부파일</h4> -->
<!-- 											<button class="btn btn-xs btn-primary" onclick="addFile_go();" -->
<!-- 												type="button" id="addFileBtn">Add File</button> -->
<!-- 											<div class="card-footer fileInput"></div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
						</form>
					</div>
				</div>
			</div>
        </div>
    </div>
	
<script>
window.onload=function(){
	Summernote_start($('#cbContents')); 
}
// function addFile_go(){
// 	//alert("click addFile btn");
// 	if($('input[name="uploadFile"]').length >=5){
// 		alert("파일추가는 5개까지만 가능합니다.");
// 		return;
// 	}
	
// 	var input=$('<input>').attr({"type":"file","name":"uploadFile"}).css("display","inline"); 
// 	var div=$('<div>').addClass("inputRow");
// 	div.append(input).append("<button style='border:0;outline:0;' class='badge bg-red' type='button'>X</button");    		   		
// 	$('.fileInput').append(div);
// }
function regist_go(){
	var form = document.registForm;
	if(form.cbTitle.value==""){
		alert("제목은 필수입니다.");
		return;
	}
	if(form.cbContents.value==""){
		alert("내용은 필수입니다.");
		return;
	}
	if(form.cbTitle.value.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length>50){
		alert("제목은 50byte 이상 작성불가합니다.");
		return;
	}
	if(form.cbContents.value.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length>3300){
		alert("내용은 3300byte 이상 작성불가합니다.");
		return;
	}
	form.submit();
}
</script>

<%@ include file="/WEB-INF/views/common/summernote.jsp" %>
</body>