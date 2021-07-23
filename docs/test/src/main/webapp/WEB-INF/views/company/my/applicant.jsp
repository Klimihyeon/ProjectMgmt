<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="application" value="${applicationList }" />

<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/home/style_home.jsp" %>
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
                                            <h6 class="mb-0 ms-2">공고관리</h6>
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
				<div class="container">
                <div class="row">
                    <div class="col-lg-12 col-12">
                        <div class="row align-items-center">
                            <div class="col-lg-9 col-md-8">
                                <div class="section-title">
<!--                                     <span class="text-muted me-3">Showing 1 - 15 out of 452</span> -->
                                </div>
                            </div><!--end col-->
        
                            <div class="col-lg-3 col-md-4 mt-4 mt-sm-0 pt-2 pt-sm-0">
                                <div class="form custom-form">
                                    <select class="form-select form-control" aria-label="Default select example" id="Sortbylist-job">
                                        <option selected="">All Jobs</option>
                                        <option>Full Time</option>
                                        <option>Part Time</option>
                                        <option>Remote</option>
                                        <option>Work From Home</option>
                                    </select>
                                </div>
                            </div><!--end col-->
                        </div><!--end row-->

                        <div class="row">
                         <c:forEach items="${applicationList }" var="applicationList">
                            <div class="col-12 mt-4 pt-2">
                                <div class="job-box d-md-flex align-items-center border-0 shadow rounded p-4 position-relative">
                                    <img src="<%=request.getContextPath() %>/resources/landrick/images/job/Circleci.svg" class="avatar avatar-md-sm" alt="">
        
                                    <div class="ms-md-4 mt-4 mt-sm-0">
                                        <a href="job-detail-three.html" class="text-dark h5">{applicationList.hbCode}</a>
        
                                        <ul class="list-unstyled mb-0 mt-2">
                                            <li class="d-lg-inline text-muted h6 mb-0 me-lg-2"><i class="uil uil-map-marker text-primary"></i> <a href="javascript:void(0)" class="text-dark">CircleCI</a>, San Francisco</li>
                                            <li class="d-lg-inline text-muted h6 mb-0 me-lg-2"><i class="uil uil-clock text-primary"></i> 8hr/ Day</li>
                                            <li class="d-lg-inline text-muted h6 mb-0"><i class="uil uil-bill text-primary"></i> 30k-35k</li>
                                        </ul>
        
                                        <div class="mt-2">
                                            <span class="badge bg-soft-primary"></span>
                                            <span class="badge bg-soft-warning">Office</span>
                                        </div>
                                    </div>
        
                                    <div class="position-absolute top-0 end-0 mt-3 me-3">
                                        <a href="javascript:void(0)" class="btn btn-icon btn-pills btn-soft-primary"><i class="uil uil-bookmark align-middle"></i></a>
                                    </div>
                                </div>
                            </div><!--end col-->                           
	                    </c:forEach>
                        </div><!--end row-->
                    </div><!--end col-->
                </div><!--end row-->
            </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Profile End -->
	<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp" %>
</body>
<%@ include file="/WEB-INF/views/include/home/js_home.jsp" %> 
