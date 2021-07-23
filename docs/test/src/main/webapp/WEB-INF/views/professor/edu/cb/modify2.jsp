<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
		<div class="row">
			<div class="col-md-12">
				<div class="card card-outline card-info">
					<div class="card-header row">
						<h4 class="col-md-8">과제 게시글 수정</h4>
						<div class="col-md-4">
							<div class="float-right">
								<button type="button" class="btn btn-warning" id="modifyBtn" onclick="modify_go();">수 정</button>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-info " id="cancelBtn" onclick="history.go(-1);">취 소</button>
							</div>
						</div>
					</div><!--end card-header  -->
					<div class="card-body">
						<form role="form" method="post" action="modify.do" name="modifyForm">
							<input type="hidden" name="cbNo" value="${cb.cbNo }" />
							<div class="form-group">
								<label for="cbTitle">제 목</label> 
								<input type="text" id="cbTitle" name='cbTitle' class="form-control" value="${cb.cbTitle }">
							</div>
							<div class="form-group">
								<label for="cbWriter">작성자</label> 
								<input type="text" id="cbWriter" readonly	name="cbWriter" class="form-control"  value="${cb.cbWriter }">
							</div>
							<div class="form-group">
								<label for="cbContents">내 용</label>		
								<textarea class="form-control" name="cbContents" id="cbContents" rows="3"
									placeholder="500자 내외로 작성하세요.">${fn:escapeXml(cb.cbContents) }</textarea>						
							</div>
						</form>
					</div><!--end card-body  -->
					
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row -->
		
<script>
window.onload=function(){
	Summernote_start($('#cbContents')); 
}

function modify_go(){
	$("form[role='form']").submit();
}
</script>
<%@ include file="/WEB-INF/views/common/summernote.jsp" %>
</body>
</html>