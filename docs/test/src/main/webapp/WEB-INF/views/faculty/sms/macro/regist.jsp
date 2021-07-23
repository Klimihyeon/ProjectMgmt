<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>매크로 등록</title>

<body>
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">매크로 등록</h4>
				</div>
				<div class="card-body">
					<form action="regist.do" method="post" role="form">
						<div class="row">
							<div class="col-md-6 col-12">
								<div class="mb-1">
									<label class="form-label" for="smsMacroName">매크로명</label> <input id="smsMacroName" class="form-control" name="smsMacroName" type="text"><br>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="mb-1">
									<label class="form-label" for="facId">작성자</label> <input id="facId" class="form-control" type="text" name="facId" readonly="readonly" value="${loginUser.usersId}" /><br>
								</div>
							</div>
							<div class="col-md-12 col-12">
								<div class="mb-1">
									<label class="form-label" for="smsMacroContents">내용</label>
									<textarea class="form-control summernote" name="smsMacroContents" id="smsMacroContents" rows="20" placeholder="1000자 내외로 작성하세요."></textarea>
								</div>
							</div>

							<div class="col-12">
								<button type="button" id="registBtn" class="btn btn-primary me-1" onclick="regist_go();">완료</button>
								<button type="button" id="cancelBtn" class="btn btn-primary me-1" onclick="javascript:window.close();">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	<script>
// 		window.onload = function() {
// 			Summernote_start($('.summernote'));
// 		}
		function regist_go() {
			$("form[role='form']").submit();
		}
	</script>
	<%@ include file="/WEB-INF/views/common/summernote.jsp"%>

</body>