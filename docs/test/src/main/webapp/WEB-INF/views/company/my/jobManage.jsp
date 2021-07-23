<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyyMMdd");
%>


<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="compJobList" value="${compJobList }" />


<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/home/style_home.jsp" %>
<style type="text/css">
.bg-overlay {
    background-color: rgba(60, 72, 88, 0.7);
    }

/* .table mb-0 table-center invoice-tb { */
/* 	width: 100%; */
/* 	table-layout: fixed; */
/* } */

#text_limit {
width:70px;
 padding:0 5px; 
 overflow:hidden; 
 text-overflow:ellipsis; 
 white-space:nowrap; 
 }
</style>

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

        <!-- Profile Start -->
        <section class="section mt-60">
            <div class="container mt-lg-3">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12 d-lg-block d-none">
                        <div class="sidebar sticky-bar p-4 rounded shadow">
                            <div class="widget">
                                <h5 class="widget-title">Followers :</h5>
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
					<div class="rounded shadow p-4">
						<div class="d-flex align-items-center justify-content-between">
							<h5 class="mb-0">내 공고관리</h5>
							
						</div>



						<div class="row">
						<c:forEach items="${compJobList }" var="jobList" varStatus="vs">
								<form role="form" action="end.do" method="post" name="end${vs.index }">
									<input type="hidden" name="hbCode" value="${jobList.hbCode }" />
									<input type="hidden" name="hAnnounce" value="마감" />
								</form>
								<a href="javascript:OpenWindow('detail.do?hbCode=${jobList.hbCode }','상세보기',1000,900);">    
							<div class="col-12 mt-4 pt-2">
								<div
									class="job-box d-md-flex align-items-center border-0 shadow rounded p-4 position-relative">
									<img src="<%=request.getContextPath() %>/resources/landrick/images/job/Circleci.svg" class="avatar avatar-md-sm" alt="">

									<div class="ms-md-4 mt-4 mt-sm-0">
										<h5 style="color: black;">${jobList.hTitle }</h5>

										<ul class="list-unstyled mb-0 mt-2">
											<li class="d-lg-inline text-muted h6 mb-0 me-lg-2"><i
												class="uil uil-map-marker text-primary"></i>모집분야 : ${jobList.hType }</li><br>
											<li class="d-lg-inline text-muted h6 mb-0 me-lg-2"><i
												class="uil uil-map-marker text-primary"></i>근무형태 : ${jobList.hJobtype }</li><br>
											<li class="d-lg-inline text-muted h6 mb-0 me-lg-2"><i
												class="uil uil-map-marker text-primary"></i>경력여부 : ${jobList.hCareer }</li><br>
											<li class="d-lg-inline text-muted h6 mb-0 me-lg-2">
												<i class="uil uil-clock text-primary"></i>접수기간 : <fmt:formatDate value="${jobList.hBdate }" pattern="YY/MM/dd"/>~<fmt:formatDate value="${jobList.hEdate }" pattern="YY/MM/dd"/><br>
										</ul>
											<c:if test="${jobList.hAnnounce eq '채용중' }">
												<a href="#" class="badge badge-link bg-danger me-2 mt-2" return false; onclick="jobEnd('end${vs.index }');";>공고마감하기</a> 
											</c:if>
											<span class="badge rounded-pill bg-soft-warning me-2 mt-2">채용공고 상태 [ ${jobList.hAnnounce } ]</span>
											<span class="badge rounded-pill bg-soft-success me-2 mt-2">조회수 ${jobList.hCnt }</span>
											<span class="badge rounded-pill bg-soft-info me-2 mt-2">지원자수 ${jobList.hApplicantNo }</span>
											
									
										</div>
									</div>

								</div>
								</a>
								</c:forEach>
							</div>
							<!--end col-->
						</div>
						<div class="col-12 mt-4 pt-2">
						<ul class="pagination justify-content-center mb-0">
							<li class="page-item"><a class="page-link"
								href="javascript:void(0)" aria-label="Previous">Prev</a></li>
							<li class="page-item active"><a class="page-link"
								href="javascript:void(0)">1</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0)">2</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0)">3</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0)" aria-label="Next">Next</a></li>
						</ul>
					</div>
					</div>					
				</div>


			</div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->

        <!-- Profile End -->
	<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp" %>
	<script type="text/javascript">
		function jobEnd(formName){
			var answer;
			//확인을 선택하면 answer에  true, 취소를 선택하면 false 값이 들어간다.
// 			alert($('input[name="hbCode" ]').val());
			answer = confirm("공고를 마감하시겠습니까?");
			
			//확인을 선택한 경우 
			if(answer == true){
				var form = $('form[name=' + formName + ']');
				form.submit();
			}
		}
	</script>
</body>
<%@ include file="/WEB-INF/views/include/home/js_home.jsp" %> 
