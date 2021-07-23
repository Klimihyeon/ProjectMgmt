<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/home/style_home.jsp" %>

<title>JOBSTICK - 마이페이지</title>
<style>
.bg-overlay {
    background-color: rgba(60, 72, 88, 0.7);
    }

</style>
</head>
<body>

<%@ include file="/WEB-INF/views/include/home/main_header_home2.jsp" %>
        <!-- Hero Start -->
        <section class="bg-profile d-table w-100 bg-primary" 
        		style="background: url('<%=request.getContextPath()%>/resources/landrick/images/company/aboutus.jpg');">
           <div class="bg-overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card public-profile border-0 rounded shadow" style="z-index: 1;">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col-lg-2 col-md-3 text-md-start text-center">
                                        <img src="<%=request.getContextPath() %>/resources/landrick/images/client/05.jpg" class="avatar avatar-large rounded-circle shadow d-block mx-auto" alt="">
                                    </div><!--end col-->
    
                                    <div class="col-lg-10 col-md-9">
                                        <div class="row align-items-end">
                                            <div class="col-md-7 text-md-start text-center mt-4 mt-sm-0">
                                                <h3 class="title mb-0">${loginUser.comName} </h3> 
                                                <small class="text-muted h6 me-2">담당자</small> ${loginUser.comManagerName}
                                                <br>
                                                <small class="text-muted h6 me-2">담당자 메일 </small>${loginUser.comManagerEmail}
                                            </div><!--end col-->
                                        </div><!--end row-->
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--ed container-->
        </section><!--end section-->
        <!-- Hero End -->
        <!-- Hero End -->
		
<div class="position-relative">
      <div class="shape overflow-hidden text-white">
         <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
                </svg>
      </div>
   </div>
				
        <!-- Profile Start -->
        <section class="section mt-60">
            <div class="container mt-lg-3">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12 d-lg-block d-none">
                        <div class="sidebar sticky-bar p-4 rounded shadow">
                            <div class="widget">
                                <h5 class="widget-title">지원자 수</h5>
                                <div class="row mt-4">
                                    <div class="col-6 text-center">
                                        <i data-feather="user-plus" class="fea icon-ex-md text-primary mb-1"></i>
                                        <h5 class="mb-0">2588</h5>
                                        <p class="text-muted mb-0">Followers</p>
                                    </div><!--end col-->

                                    <div class="col-6 text-center">
                                        <i data-feather="users" class="fea icon-ex-md text-primary mb-1"></i>
                                        <h5 class="mb-0">454</h5>
                                        <p class="text-muted mb-0">Following</p>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div>

                            <div class="widget mt-4 pt-2">
                                <h5 class="widget-title">Projects :</h5>
                                <div class="progress-box mt-4">
                                    <h6 class="title text-muted">Progress</h6>
                                    <div class="progress">
                                        <div class="progress-bar position-relative bg-primary" style="width:50%;">
                                            <div class="progress-value d-block text-muted h6">24 / 48</div>
                                        </div>
                                    </div>
                                </div><!--end process box-->
                            </div>
                            
                            <div class="widget mt-4">
                                <ul class="list-unstyled sidebar-nav mb-0" id="navmenu-nav">
                                    <li class="navbar-item account-menu px-0">
                                        <a href="<%=request.getContextPath() %>/company/home/mypage.do?comId=${loginUser.usersId}" class="navbar-link d-flex rounded shadow align-items-center py-2 px-4">
                                             <span class="h4 mb-0"><i class="uil uil-setting"></i></span>
                                            <h6 class="mb-0 ms-2">내 정보</h6>
                                        </a>
                                    </li>
                                   
                                    <li class="navbar-item account-menu px-0 mt-2">
                                        <a href="<%=request.getContextPath() %>/company/home/mypage/jobManage.do?comId=${loginUser.usersId}" class="navbar-link d-flex rounded shadow align-items-center py-2 px-4">
                                       
                                            <span class="h4 mb-0"><i class="uil uil-file"></i></span>
                                            <h6 class="mb-0 ms-2">내 공고관리</h6>
                                        </a>
                                    </li>

                                    <li class="navbar-item account-menu px-0 mt-2">
                                        <a href="<%=request.getContextPath() %>/company/home/mypage/applicant.do?comId=${loginUser.usersId}" class="navbar-link d-flex rounded shadow align-items-center py-2 px-4">
                                            <span class="h4 mb-0"><i class="uil uil-users-alt"></i></span>
                                            <h6 class="mb-0 ms-2">지원자관리</h6>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-8 col-12">
					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade bg-white show active shadow rounded p-4"
							id="dash" role="tabpanel" aria-labelledby="dashboard">

							<!-- 회원정보수정 -->
							<form role="form" action="mypage/modify.do" method="post">
								<div class="row">
									<!-- 아이디 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">아이디<span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													class="feather feather-user-check fea icon-sm icons">
													<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
													<circle cx="8.5" cy="7" r="4"></circle>
													<polyline points="17 11 19 13 23 9"></polyline></svg>
												<input name="usersId" id="usersId" type="text"
													class="form-control ps-5" value="${loginUser.usersId }" readonly="readonly">
											</div>
										</div>
									</div>

									<!-- 비밀번호 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">비밀번호<span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="key" class="fea icon-sm icons"></i> <input
													name="usersPwd" id="usersPwd" type="password"
													class="form-control ps-5" value="${loginUser.usersPwd }" onchange="password_Check();">
											</div>
										</div>
										
										<!-- 비밀번호 유효성 검사 -->
										<div class="mb-3">
											<span id="spUserPwEmpty" style="color: red; display: none; font-size: 10pt;">
												* 비밀번호는 필수 입력입니다.</span>
											<span id="spUserPwReq" style="color: red; display: none; font-size: 10pt;">
												*영문 소문자/영문 대문자/숫자/특수문자가 각각 1개 이상씩 포함된 8~12 글자만 가능합니다.</span>
											<span id="spUserPwUse" style="color: green; display: none; font-size:10pt;">
												* 사용가능한 비밀번호입니다.</span>
										</div>
									</div>
									<!--end col-->

									<!-- 이름 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">담당자 이름<span class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user" class="fea icon-sm icons"></i> <input
													name="name" id="name" type="text"
													class="form-control ps-5" value="${company.comManagerName}" onchange="name_Check();">
											</div>
										</div>
										<!-- 이름 유효성 검사 -->
										<div class="mb-3">
											<span id="spUserNameEmpty" style="color: red; display: none; font-size: 10pt;">
												* 이름은 필수 입력입니다.</span>
											<span id="spUserNameReq"
												style="color: red; font-size: 10pt; display: none;">*
												이름은 한글 2~5글자만 가능합니다. </span>
										</div>
									</div>
									<!--end col-->									
									
									<!-- 이메일 -->
									<div class="col-md-8">
										<div class="mb-3">
											<label class="form-label">담당자 이메일<span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="phone" class="fea icon-sm icons"></i> <input
													name="memPhone" id="memPhone" type="text"
													class="form-control ps-5" value="${company.comManagerEmail}"
													oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
											</div>
										<div class="mb-3">
											<span id="spUserPhoneEmpty"
												style="color: red; font-size: 10pt; display: none;">* 이메일 인증은 필수입니다.</span>
										</div>	
										</div>
									</div>
									<!--end col-->

									<!-- 휴대폰인증 -->
									<div class="col-md-4">
										<div class="mb-3">
											<label class="form-label"></label>
											<div class="col-lg-12 mt-2 mb-0"
												style="text-align: left; margin-top: 0;">
												<button type="button" class="btn btn-primary">이메일 인증</button>
											</div>
										</div>
									</div>
									<!--end col-->
									
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">상호명<span class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user" class="fea icon-sm icons"></i> <input
													name="name" id="name" type="text"
													class="form-control ps-5" value="${compInfo.comName}" onchange="name_Check();">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">대표자명<span class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user" class="fea icon-sm icons"></i> <input
													name="name" id="name" type="text"
													class="form-control ps-5" value="${compInfo.comChairman}" onchange="name_Check();">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">개업일자<span class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user" class="fea icon-sm icons"></i> 
												<input name="name" id="name" type="text" class="form-control ps-5" value="<fmt:formatDate value="${compInfo.comOpenDate}" pattern="yy/MM/dd"/>" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">업태<span class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user" class="fea icon-sm icons"></i> <input
													name="name" id="name" type="text"
													class="form-control ps-5" value="${compInfo.comType}" onchange="name_Check();">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">종목<span class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user" class="fea icon-sm icons"></i> <input
													name="name" id="name" type="text"
													class="form-control ps-5" value="${compInfo.comItem}" onchange="name_Check();">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="mb-3">
										</div>
									</div>
									
									<!-- 우편번호 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">우편번호<span class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="sample6_postcode" class="form-control ps-5"
													placeholder="" name="addrZip" value="${company.comZipcode }"
													readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 우편번호 검색 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label"><span class="text-danger"></span></label>
											<div class="col-lg-12 mt-2 mb-0" style="text-align: left;">
												<button class="btn btn-primary" type="button"
													onclick="sample6_execDaumPostcode();">우편번호 검색</button>
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 주소1 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">주소</label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="sample6_address" class="form-control ps-5"
													placeholder="" name="addr1" 
													value="${company.comAddr }"
													readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 주소2 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">건물명</label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="sample6_extraAddress"
													class="form-control ps-5" placeholder="" name="addr2"
													value="${company.comAddr2 }" readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->
									<div class="col-lg-12">
										<div class="mb-3">
											<label class="form-label">상세주소</label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="sample6_detailAddress"
													class="form-control ps-5" placeholder="" name="addr3"
													value="${company.comAddr3 }">
											</div>
										</div>
									</div>
									
									<!-- 권한 -->
									<input id="authority" name="authority" type="text" value="웹회원" style="display: none;">
																		
									<!--end col-->
									<div class="col-lg-12 mt-2 mb-0" style="text-align: right;">
										<button class="btn btn-primary">회원정보수정</button>
									</div>
									<!--end col-->
								</div>
								<!--end row-->
							</form>

						</div>
						<!--end teb pane-->
					</div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Profile End -->
	<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp" %>
</body>
<%@ include file="/WEB-INF/views/include/home/js_home.jsp" %> 
