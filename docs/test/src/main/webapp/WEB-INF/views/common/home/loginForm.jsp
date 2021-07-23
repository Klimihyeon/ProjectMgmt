<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>JOBSTICK - 로그인</title>

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
						<img src="<%=request.getContextPath() %>/resources/landrick/images/user/login.svg" class="img-fluid d-block mx-auto"
							alt="">
					</div>
				</div>

				<div class="col-lg-5 col-md-6">
					<div class="card login-page bg-white shadow rounded border-0">
						<div class="card-body">
							<center>
								<br>
								<img src="<%=request.getContextPath() %>/resources/landrick/img/logo.png" width="300px"><br>
								<br>
							</center>
							<!-- tab -->
							
<!-- 							<div class="row justify-content-center"> -->
<!-- 								<div class="col-lg-8 col-md-12 mt-4 pt-2 text-center"> -->
<!-- 									<ul -->
<!-- 										class="nav nav-pills nav-justified flex-column flex-sm-row rounded" -->
<!-- 										id="pills-tab" role="tablist"> -->

<!-- 										일반회원 탭 -->
<!-- 										<li class="nav-item"><a class="nav-link rounded active" -->
<!-- 											id="pills-cloud-tab" data-bs-toggle="pill" -->
<!-- 											href="#member_regist" role="tab" aria-controls="pills-cloud" -->
<!-- 											aria-selected="false"> -->
<!-- 												<div class="text-center py-2"> -->
<!-- 													<h6 class="mb-0">일반회원</h6> -->
<!-- 												</div> -->
<!-- 										</a> -->
<!-- 										end nav link</li> -->
<!-- 										end nav item -->

<!-- 										기업회원 탭 -->
<!-- 										<li class="nav-item"><a class="nav-link rounded" -->
<!-- 											id="pills-cloud-tab" data-bs-toggle="pill" href="#com_regist" -->
<!-- 											role="tab" aria-controls="pills-cloud" aria-selected="false"> -->
<!-- 												<div class="text-center py-2"> -->
<!-- 													<h6 class="mb-0">기업회원</h6> -->
<!-- 												</div> -->
<!-- 										</a> -->
<!-- 										end nav link</li> -->
<!-- 										end nav item -->
<!-- 									</ul> -->
<!-- 									end nav pills -->
<!-- 								</div> -->
<!-- 							</div> -->

							<!-- 아래 내용 -->
							<div class="row">
								<div class="tab-content" id="pills-tabContent">
									<div class="tab-pane fade show active" id="member_regist"
										role="tabpanel" aria-labelledby="pills-cloud-tab">
										
										<!-- 자동 로그인 -->
										<select class="form-select form-control" 
										id="autoLogin" aria-label="Default select example" onchange="autoLogin();">
                                           <option>자동 로그인</option>
                                           <option value="1">일반회원</option>
                                           <option value="2">기업회원</option>
                                        </select>
										
										<!-- 일반회원 start -->
										<form class="login-form mt-4" id="member_login" action="<%=request.getContextPath() %>/common/home/login.do" method="POST">
											<div class="col-lg-12">
												<div class="mb-3">
													<label class="form-label">아이디 <span
														class="text-danger">*</span></label>
													<div class="form-icon position-relative">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" 
												stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
												class="feather feather-user fea icon-sm icons">
												<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle>
												</svg>
														<input
															type="text" id="member_id" class="form-control ps-5"
															placeholder="Id" name="id" required="">
													</div>
												</div>
											</div>
											<!--end col-->

											<div class="col-lg-12">
												<div class="mb-3">
													<label class="form-label">비밀번호 <span
														class="text-danger">*</span></label>
													<div class="form-icon position-relative">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-key fea icon-sm icons"><path d="M21 2l-2 2m-7.61 7.61a5.5 5.5 0 1 1-7.778 7.778 5.5 5.5 0 0 1 7.777-7.777zm0 0L15.5 7.5m0 0l3 3L22 7l-3-3m-3.5 3.5L19 4"></path></svg>
												
														<input
															type="password" id="member_password"
															class="form-control ps-5" name="pwd"
															placeholder="Password" required="">
													</div>
												</div>
											</div>
											<!--end col-->
										</form>
										<!-- 일반회원 end -->
									</div>
									<!--end teb pane-->

									<div class="tab-pane fade" id="com_regist" role="tabpanel"
										aria-labelledby="pills-smart-tab">
										<!-- 기업회원 start -->
										<form class="login-form mt-4" id="com_login" action="<%=request.getContextPath() %>/common/home/login.do" method="POST">
											<div class="col-lg-12">
												<div class="mb-3">
													<label class="form-label">기업 아이디 <span
														class="text-danger">*</span></label>
													<div class="form-icon position-relative">
														<i data-feather="user" class="fea icon-sm icons"></i> <input
															type="text" id="com_id" class="form-control ps-5"
															placeholder="Id" name="com_id" required="">
													</div>
												</div>
											</div>
											<!--end col-->

											<div class="col-lg-12">
												<div class="mb-3">
													<label class="form-label">비밀번호 <span
														class="text-danger">*</span></label>
													<div class="form-icon position-relative">
														<i data-feather="key" class="fea icon-sm icons"></i> <input
															type="password" id="com_password"
															class="form-control ps-5" name="pwd"
															placeholder="Password" required="">
													</div>
												</div>
											</div>
											<!--end col-->
										</form>
										<!-- 기업회원 end -->
									</div>
									<!--end teb pane-->
								</div>
								<!--end tab content-->
							</div>

							<!-- 아이디찾기, 비밀번호 찾기 -->
							<div class="col-lg-12">
								<div class="mb-3">
									<a href="<%=request.getContextPath() %>/common/home/memFindIdForm.do" class="text-dark fw-bold">아이디 찾기</a>
									/ <a href="<%=request.getContextPath() %>/common/home/memFindPwForm.do" class="text-dark fw-bold">비밀번호
										찾기</a>
								</div>
							</div>
							<!--end col-->

							<!-- 로그인 버튼 -->
							<div class="col-lg-12 mb-0">
								<div class="d-grid">
									<button id="loginBtn" class="btn btn-primary" type="button" onclick="login();">로그인</button>
								</div>
							</div>
							<!--end col-->

							<!-- 로그인창 이동 -->
							<div class="col-12 text-center">
								<p class="mb-0 mt-3">
									<small class="text-dark me-2">회원이 아니신가요?</small><a
										href="<%=request.getContextPath() %>/common/home/registSelect.do" class="text-dark fw-bold">회원가입하기</a>
										<br>
										<a href="<%=request.getContextPath() %>/common/manage/index.do" class="text-dark fw-bold">관리자 페이지</a>
								</p>
							</div>
							<!--end col-->


						</div>
					</div>
					<!---->
				</div>
				<!--end col-->
			</div>
			<!--end row-->
		</div>
		<!--end container-->
	</section>
	<!--end section-->
	<!-- Hero End -->



	<!-- javascript -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- Icons -->
	<script src="js/feather.min.js"></script>
	<!-- Main Js -->
	<script src="js/plugins.init.js"></script>
	<!--Note: All init js like tiny slider, counter, countdown, maintenance, lightbox, gallery, swiper slider, aos animation etc.-->
	<script src="js/app.js"></script>
	<!--Note: All important javascript like page loader, menu, sticky menu, menu-toggler, one page menu etc. -->
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">

function autoLogin(){
	
	var selectId = $("#autoLogin option:selected");

	if (selectId.val() =="1"){
		$('#member_id').val("testest");
		$('#member_password').val("1");
		return;
	}
	if (selectId.val() =="2"){
		$('#member_id').val("comp");
		$('#member_password').val("comp");		
		return;
	}
	
}



</script>


<script type="text/javascript">

var loginForm;

// $(document).ready(function(){
    $(window).on('load',  function(){

		$("#login1").show();
		$("#login2").hide();
		loginForm=1;

	});

	function login(){
		if(loginForm==1){
			$("#member_login").submit();
		}else if(loginForm==2){
			$("#com_login").submit();
		}
	}

	function formchange1(){
		$("#login1").show();
		$("#login2").hide();
		loginForm=1;
	}

	function formchange2(){
		$("#login1").hide();
		$("#login2").show();
		loginForm=2;
	}

//아이디 - 한글입력 방지
	$("#com_id").keyup(function(event) {
		if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
			var inputVal = $(this).val();
			var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			if (check.test(inputVal)) {
				$(this).val("");
			}
		}
	});

// 엔터버튼 누르면 로그인 버튼 실행
	$("#member_password").keyup(function(e){
			if(e.keyCode ==13){
				login();
			}
	});
	$("#com_password").keyup(function(e){
			if(e.keyCode ==13){
				login();
			}
	});


</script>
</body>

</html>