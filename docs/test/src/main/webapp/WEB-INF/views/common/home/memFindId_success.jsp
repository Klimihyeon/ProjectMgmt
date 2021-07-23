<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<head>
</head>

<body>

	<div class="back-to-home rounded d-none d-sm-block">
		<a href="/lms/common/home/index.do" class="btn btn-icon btn-soft-primary">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home icons">
		<path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
		<polyline points="9 22 9 12 15 12 15 22"></polyline></svg></a>
	</div>

	<!-- Hero Start -->
	<section class="bg-home d-flex align-items-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7 col-md-6">
					<div class="me-lg-5">
						<img src="<%=request.getContextPath() %>/resources/landrick/images/user/recovery.svg"
							class="img-fluid d-block mx-auto" alt="">
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="card shadow rounded border-0">
						<div class="card-body">
							<h4 class="card-title text-center">아이디 찾기</h4>
							<p class="text-muted">회원정보에 등록된 정보로 아이디를 찾을 수 있습니다</p>
							<!-- 아래 내용 -->

							<div class="row">
							
								<div class="tab-content" id="pills-tabContent">
									<div class="col-lg-12" id="memFind">
										<div class="bg-soft-muted rounded mb-0"
											style="text-align: center;">
											<br>
											<h5>
												회원님의 아이디는 <span style="color: black;"><b>${webmember.memberId }</b></span> 입니다.
											</h5>
											<a href="<%=request.getContextPath()%>/common/home/memFindPwForm.do"><b class="text-primary">비밀번호 찾기</b></a>
											<br><br>										
										</div>
									</div>
									<br>
									<!--end col-->
									<!-- 로그인 버튼 -->
									<div class="col-lg-12 mb-0">
										<div class="d-grid">
											<a
												href="<%=request.getContextPath()%>/common/home/loginForm.do"
												class="btn btn-primary">로그인<i
												class="uil uil-angle-right-b"></i></a>
										</div>
									</div>
									<!--end col-->

								</div>
								<br>
							</div>
						</div>
				</div>
				<!--end col-->
			</div>
			<!--end row-->
		</div>
		<!--end container-->
	</section>
	<!--end section-->
	<!-- Hero End -->

	

</body>
</html>
