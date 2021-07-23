<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div class="card">
	<div class="card-body">
		<div class="card-body pad">
			<form role="form" method="post" action="regist.do?ingCourseCode=${param.ingCourseCode }" name="registForm">
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
			</form>
		<button type="button" id="registBtn" onclick="regist_go();" class="btn btn-info">등록</button>
		<button type="button" id="cancelBtn" onclick="CloseWindow();" class="btn btn-info">취소</button>
		</div>
	</div>
</div>
					
<script>
window.onload=function(){
	Summernote_start($('#cbContents')); 
}

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
</html>