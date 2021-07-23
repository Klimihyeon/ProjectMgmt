<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="tmp" value="${fn:substring(smsMacro.smsMacroCode,'3','8') }" />
<c:forEach begin="0" end="5">
	<c:set var="ans" value="${tmp}" />
	<c:if test="${fn:startsWith(ans,'0')}">
		<c:set var="tmp" value="${fn:substringAfter(ans,'0')}" />
	</c:if>
</c:forEach>

<title>매크로 수정</title>

<body>
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">매크로 수정</h4>
				</div>
				<div class="card-body">
					<form action="modify.do" method="post" role="form">
						<div class="row">
							<div class="col-md-12 col-12">
								<div class="mb-1">
									<label class="form-label" for="smsMacroCode">매크로 번호</label>
									<input class="form-control" type="text" value="매크로${ans }" readonly="readonly"><br>
									<input id="smsMacroCode" name="smsMacroCode" class="form-control" type="hidden" value="${smsMacro.smsMacroCode }"><br>
								</div>
							</div>
							<div class="col-md-12 col-12">
								<div class="mb-1">
									<label class="form-label" for="smsMacroName">매크로명</label>
									<input id="smsMacroName" class="form-control" name="smsMacroName" type="text" value="${smsMacro.smsMacroName }"><br>
								</div>
							</div>
							<div class="col-md-12 col-12">
								<div class="mb-1">
									<label class="form-label" for="smsMacroContents">내용</label>
									<textarea class="form-control summernote" name="smsMacroContents" id="smsMacroContents" rows="20" placeholder="1000자 내외로 작성하세요.">
										${smsMacro.smsMacroContents }
									</textarea>
								</div>
							</div>

							<div class="col-12">
								<button type="button" id="registBtn" class="btn btn-primary me-1" onclick="modify_go();">완료</button>
								<button type="button" id="cancelBtn" class="btn btn-primary me-1" onclick="javascript:window.close();">취소</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	<script>
// 		window.onload = function() {
// // 			Summernote_start($('.summernote'));
// 		}

		function modify_go() {
			$("form[role='form']").submit();
		}
	</script>
<%-- 	<%@ include file="/WEB-INF/views/common/summernote.jsp"%> --%>

</body>