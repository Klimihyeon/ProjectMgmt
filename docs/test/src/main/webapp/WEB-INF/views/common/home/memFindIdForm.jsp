<%@page import="com.spring.dto.WebmemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	//WebmemberVO webmember = request.getAttribute("webmember") == null ? 
	//	 new WebmemberVO() :(WebmemberVO)request.getAttribute("webmember");
	//	 System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	//	 System.out.println(request.getAttribute("aaa"));
		 
%>
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
							<!-- Tab -->
							<div class="row justify-content-center">
								<div class="col-lg-8 col-md-12 mt-4 pt-2 text-center">
									<ul
										class="nav nav-pills nav-justified flex-column flex-sm-row rounded"
										id="pills-tab" role="tablist">

										<!-- 일반회원 탭 -->
										<li class="nav-item"><a class="nav-link rounded active"
											id="pills-cloud-tab" data-bs-toggle="pill"
											href="#member_regist" role="tab" aria-controls="pills-cloud"
											aria-selected="true">
												<div class="text-center py-2">
													<h6 class="mb-0">일반회원</h6>
												</div>
										</a> <!--end nav link--></li>
										<!--end nav item-->

										<!-- 기업회원 탭 -->
										<li class="nav-item"><a class="nav-link rounded"
											id="pills-cloud-tab" data-bs-toggle="pill" href="#com_regist"
											role="tab" aria-controls="pills-cloud" aria-selected="false">
												<div class="text-center py-2">
													<h6 class="mb-0">기업회원</h6>
												</div>
										</a> <!--end nav link--></li>
										<!--end nav item-->
									</ul>
									<!--end nav pills-->
								</div>
							</div>

							<!-- 아래 내용 -->

							<div class="row">
								<div class="tab-content" id="pills-tabContent">
								<div class="tab-pane fade active show" id="member_regist"
										role="tabpanel" aria-labelledby="pills-cloud-tab">
										

										<!-- 휴대폰 입력 -->
										<form class="login-form mt-4" role="memFindId" id="memFindId">
											<div class="col-lg-12">
												<div class="mb-3">
													<label class="form-label"><span class="text-danger">*</span>휴대폰 번호
													</label>
													<div class="form-icon position-relative">
														<i data-feather="phone" class="fea icon-sm icons"></i> <input
															type="text" id="memPhone" class="form-control ps-5"
															placeholder="휴대폰 번호를 입력하세요" name="memPhone"
															maxlength="13"
															oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
													</div>
												</div>
											</div>

										</form>
										<!-- 일반회원 end -->
										<!-- 아이디 찾기 버튼 -->
										<div class="col-lg-12">
											<div class="d-grid">
												<button type="button" class="btn btn-primary"
													onclick="memFindId();">아이디 찾기${webmember.memberId }</button>
											</div>
										</div>
										<!--end tab content-->
									</div>
									<!--end teb pane-->

									<div class="tab-pane fade" id="com_regist" role="tabpanel"
										aria-labelledby="pills-smart-tab">

										<!-- 기업회원 start -->
										<form class="login-form mt-4" role="comFindId">

											<!-- 사업자등록번호 입력 -->
											<div class="col-lg-12">
												<div class="mb-3">
													<label class="form-label"><span class="text-danger">*</span>사업자등록번호</label>
													<div class="form-icon position-relative">
														<i data-feather="phone" class="fea icon-sm icons"></i> <input
															type="text" id="comRegNo" class="form-control ps-5"
															placeholder="사업자등록번호 입력하세요" name="comRegNo" maxlength="15"
															oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
													</div>
												</div>
											</div>

											<!--end col-->
											<!-- 아이디 찾기 버튼 -->
											<div class="col-lg-12">
												<div class="d-grid">
													<button type="button" class="btn btn-primary"
														onclick="comFindId();">아이디 찾기</button>
												</div>
											</div>
											<!--end tab content-->
									<!--end col-->
									</form>
									<!-- 기업회원 end -->
								</div>
								<!--end teb pane-->
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

	
<script type="text/javascript">

	// enter 시 submit 방지
	$('input[type="text"]').keydown(function() {
		  if (event.keyCode === 13) {
		    event.preventDefault();
		  };
		});	
	
function memFindId(){
	//휴대폰번호 빈값 확인
	var input_Phone=$('input[name="memPhone"]');
    // 빈값확인
    if(input_Phone.val()==""){
		alert("휴대폰번호를 입력해주세요.");
		input_Phone.focus();
       return;
    }
    
		$.ajax({
		url : "memFindId.do?memPhone="+input_Phone.val()
		, method : "get"
		, success : function(result,status,xhr){
 			alert("아이디 찾기 성공!");
 			console.log(result);
			location.href="<%=request.getContextPath()%>/common/home/memFindId_success.do?memPhone="+input_Phone.val()
		}
		, error : function(xhr) {
			alert("입력을 확인해주세요. : " + xhr.status)
		}
	});	
}


function comFindId(){
	//사업자등록번호 빈값 확인
	var input_ComRegNo=$('input[name="comRegNo"]');
    // 빈값확인
    if(input_ComRegNo.val()==""){
		alert("사업자등록번호를 입력해주세요.");
		input_ComRegNo.focus();
       return;
    }

    $.ajax({
		url : "compFindId.do?comRegNo="+input_ComRegNo.val()
		, method : "get"
		, success : function(result,status,xhr){
 			alert("아이디 찾기 성공!");
			location.href="<%=request.getContextPath()%>/common/home/compFindId_success.do?comRegNo="+input_ComRegNo.val()
		}
		, error : function(xhr) {
			alert("입력을 확인해주세요. : " + xhr.status)
		}
	});	

	
}

</script>
</body>
