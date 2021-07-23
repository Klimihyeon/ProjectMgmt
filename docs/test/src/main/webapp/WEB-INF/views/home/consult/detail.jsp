<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>입학상담신청 상세조회</title>
<style type="text/css">
.card{
margin: 20px;
}

</style>
</head>
<body>
	<!-- 안내사항 -->
	<div class="card">
		<div class="card-body">
			<h5> 입학상담신청 상세조회
				<c:if test="${counsRV.counsStatus eq '예정'}">
					<span style="color: #2f55d4;">* 상담상태  : ${counsRV.counsStatus}</span>
				</c:if>
				<c:if test="${counsRV.counsStatus eq '완료'}">
					<span style="color: #2eca8b;">* 상담상태  : ${counsRV.counsStatus}</span>
				</c:if>
				<c:if test="${counsRV.counsStatus eq '취소'}">
					<span style="color: red;">* 상담상태  : ${counsRV.counsStatus}</span>
				</c:if>
			</h5>

			<div class="col-sm-12">
			<div class="row">
				<div class="col-lg-6 col-12 mt-4 pt-2">
					<div class="card shadow rounded border-0 overflow-hidden">
						<div class="card-body">
							<h5 class="card-title">내 화면</h5>
						</div>
						<img src="images/blog/01.jpg" class="img-fluid" alt="">
					</div>
				</div>
				<!--end col-->

				<div class="col-lg-6 col-12 mt-4 pt-2">
					<div class="card shadow rounded border-0 overflow-hidden">
						<div class="card-body">
							<h5 class="card-title">상대방 화면</h5>
						</div>
						<img src="images/blog/01.jpg" class="img-fluid" alt="">
					</div>
				</div>
				<!--end col-->
			</div>
		</div>

			<div class="mt-4 row">

				<div class="d-flex align-items-center col-sm-4"
					style="padding: 10px;">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
					<div class="flex-1">
						<h6 class="text-primary mb-0">상담번호</h6>
						<p class="text-muted mb-0">${counsRV.counsCode }</p>
					</div>
				</div>
				<div class="d-flex align-items-center col-sm-4"
					style="padding: 10px;">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
					<div class="flex-1">
						<h6 class="text-primary mb-0">상담신청일</h6>
						<p class="text-muted mb-0"><fmt:formatDate value="${counsRV.counsRegDate}" pattern="yy-MM-dd" /></p>
					</div>
				</div>
				<div class="d-flex align-items-center col-sm-4"
					style="padding: 10px;">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
					<div class="flex-1">
						<h6 class="text-primary mb-0">상담예정일</h6>
						<p class="text-muted mb-0">${counsRV.counsDate}&nbsp;${counsRV.counsCalHour}:00</p>
					</div>
				</div>
				<div class="d-flex align-items-center col-sm-12" style="padding: 10px;">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
					<div class="flex-1">
						<h6 class="text-primary mb-0">상담내용 <span style="color: red; font-weight:normal;"> * 신청자가 사전에 작성한 내용입니다.</span></h6>
						<textarea disabled="disabled" class="form-control">${counsRV.counsContents}</textarea>
					</div>
				</div>

				<c:if test="${counsRV.counsStatus eq '완료'}">
					<div class="d-flex align-items-center col-sm-12"
						style="padding: 10px;">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							class="feather feather-bookmark fea icon-ex-md text-muted me-3">
				<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
						<div class="flex-1">
							<h6 class="text-primary mb-0">상담결과<span style="color: red; font-weight:normal;"> * 상담사가 작성한 내용입니다.</span></h6>
							<textarea disabled="disabled" class="form-control">${counsRV.counsResult}</textarea>
						</div>
					</div>
				</c:if>

				<div style="text-align: right;">
					<c:if test="${counsRV.counsStatus eq '예정'}">
						<a href="<%=request.getContextPath() %>/webmember/home/consult/cancel.do?counsCode=${counsRV.counsCode}" class="btn btn-danger"> 상담취소 </a>
					</c:if>
					<c:if test="${counsRV.counsStatus eq '완료'}">
						<button type="button" class="btn btn-primary" onclick="CloseWindow();">닫기</button>
					</c:if>
					<c:if test="${counsRV.counsStatus eq '취소'}">
						<button type="button" class="btn btn-primary" onclick="CloseWindow();">닫기</button>
					</c:if>
				</div>
			</div>
		</div>
	</div>

</body>
</html>