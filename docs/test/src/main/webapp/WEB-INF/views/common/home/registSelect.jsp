<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<head>
<title>JOBSTICK - 회원가입 유형선택</title>
</head>
<body>
<div class="back-to-home rounded d-none d-sm-block">
		<a href="<%=request.getContextPath() %>/common/home/index.do" class="btn btn-icon btn-soft-primary">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
		fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
		stroke-linejoin="round" class="feather feather-home icons">
		<path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
		<polyline points="9 22 9 12 15 12 15 22"></polyline></svg></a>
	</div>

	<!-- Hero Start -->
	<section class="bg-home d-flex align-items-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7 col-md-6">
					<div class="me-lg-5">
						<img
							src="<%=request.getContextPath() %>/resources/landrick/images/user/login.svg"
							class="img-fluid d-block mx-auto" alt="">
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="card shadow rounded border-0"
						style="text-align: center;">
						<div class="card-body">
							<img
								src="<%=request.getContextPath() %>/resources/landrick/img/logo.png"
								width="300px">

							<p class="text-muted" style="text-align: center;">
								<span class="text-danger">*</span> 회원가입 유형을 선택하세요.
							</p>

							<!-- Tab -->
							<div class="row justify-content-center">

								<!-- 일반회원 버튼 -->
								<div class="col-sm-6">
									<div
										class="card features fea-primary rounded p-4 bg-white position-relative overflow-hidden border-0">
										<span class="h1 icon2 text-primary"> <i
											class="uil uil-user-md"></i> </i>
										</span>
										<div class="card-body p-0 content">
											<h3>일반회원</h3>
											<p class="para text-muted mb-0">IT교육에 관한 정보를 얻고 싶다면?</p>

											<a
												href="<%=request.getContextPath() %>/common/home/memRegistForm.do"
												class="btn btn-pills btn-soft-success mt-4">가입하기</a>
										</div>
									</div>
								</div>
								<!-- 일반회원 버튼 end -->

								<!-- 기업회원 버튼 -->
								<div class="col-sm-6">
									<div
										class="card features fea-primary rounded p-4 bg-white position-relative overflow-hidden border-0">
										<span class="h1 icon2 text-primary"> <i
											class="uil uil-newspaper"></i>
										</span>
										<div class="card-body p-0 content">
											<h3>기업회원</h3>
											<p class="para text-muted mb-0">유능한 IT인재를 채용하고 싶다면?</p>

											<a href="<%=request.getContextPath() %>/common/home/comRegistForm.do"
												class="btn btn-pills btn-soft-success mt-4">가입하기</a>
										</div>
									</div>
								</div>
								<!-- 기업회원 버튼 end -->
							</div>


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