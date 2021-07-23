<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<body>
<div class="card">
	<div class="card-body">
		<div class="card-body pad">
			<form role="form" method="post" action="regist.do?" name="registForm">
			<input type="hidden" name="facId" value="${loginUser.usersId }">
			<h1>공지사항</h1>
				<hr>
				<div class="form-group">
					<label for="title">제 목</label> 
					<input type="text" id="title"
						name='title' class="form-control" placeholder="제목을 입력해 주세요.">
				</div>
				<br>							
				<div class="form-group">
					<label for="writer">작성자</label> 
					<input type="text" id="writer" readonly
						name="writer" class="form-control" value="${loginUser.facName}">
				</div>
				<br>
				<div class="form-group">
					<label for="content">내 용</label>
					<textarea class="textarea" name="content" id="content" rows="20"
						placeholder="1000자 내외로 작성하세요." style="display: none;"></textarea>
				</div>
			</form>
			<div class="row">
				<div class="col-lg-12" style="text-align: right;" >
				<br>
					<button type="button" class="btn btn-outline-primary waves-effect" onclick="regist_go();">등록</button>
					<button type="button" class="btn btn-outline-danger waves-effect" onclick="CloseWindow();">취소</button>
				</div>			
			</div>
		</div>
	</div>
</div>
					
<script>
window.onload=function(){
	Summernote_start($('#content')); 
}

function regist_go(){
	var form = document.registForm;
	if(form.title.value==""){
		alert("제목은 필수입니다.");
		return;
	}
	if(form.content.value==""){
		alert("내용은 필수입니다.");
		return;
	}
	if(form.title.value.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length>50){
		alert("제목은 50byte 이상 작성불가합니다.");
		return;
	}
	if(form.content.value.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length>3300){
		alert("내용은 3300byte 이상 작성불가합니다.");
		return;
	}
	form.submit();
}
</script>

<%@ include file="/WEB-INF/views/common/summernote.jsp" %>
</body>
</html>