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
			<h5> 비대면 입학상담</h5>	
			
			<!-- 유의사항 -->
			<div class="card shadow rounded border-0">
				<div class="card-body">
					<h5 class="card-title">입학상담 안내</h5>
					<ul class="list-unstyled text-muted">
						<li><svg xmlns="http://www.w3.org/2000/svg" width="24"
								height="24" viewBox="0 0 24 24" fill="none"
								stroke="currentColor" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round"
								class="feather feather-arrow-right fea icon-sm me-2">
								<line x1="5" y1="12" x2="19" y2="12"></line>
								<polyline points="12 5 19 12 12 19"></polyline></svg> 입학 상담은  <span
							class="text-danger">비대면</span>는 진행됩니다.</li>
						<li><svg xmlns="http://www.w3.org/2000/svg" width="24"
								height="24" viewBox="0 0 24 24" fill="none"
								stroke="currentColor" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round"
								class="feather feather-arrow-right fea icon-sm me-2">
								<line x1="5" y1="12" x2="19" y2="12"></line>
								<polyline points="12 5 19 12 12 19"></polyline></svg> 해당 창을 종료할 경우 상담은  <span
							class="text-danger"> 자동 종료</span> 됩니다.</li>
						<li><svg xmlns="http://www.w3.org/2000/svg" width="24"
								height="24" viewBox="0 0 24 24" fill="none"
								stroke="currentColor" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round"
								class="feather feather-arrow-right fea icon-sm me-2">
								<line x1="5" y1="12" x2="19" y2="12"></line>
								<polyline points="12 5 19 12 12 19"></polyline></svg> 상담시간 연장은 다음 시간의 
								<span class="text-danger">상담자가 없을 경우</span>에 한해 상담사만 가능합니다.</li>
					</ul>
				</div>
			</div>
			
			<!-- 상담화면  -->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-sm-6">
						<div class="card shadow rounded border-0 overflow-hidden">
							<div class="card-body">
								<h5 class="card-title">내 화면</h5>
							</div>
							<img src="images/blog/01.jpg" class="img-fluid" alt="">
						</div>
					</div>
					<!--end col-->
	
					<div class="col-sm-6">
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
			
			<!-- 상담신청 내역 -->
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

				<div style="text-align: right;">
						<button type="button" class="btn btn-danger" onclick="CloseWindow();">상담종료</button>
				</div>
			</div>		
		

		</div>
	</div>

</body>
</html>