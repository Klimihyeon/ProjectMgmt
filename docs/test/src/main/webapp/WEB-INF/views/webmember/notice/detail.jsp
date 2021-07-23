<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<meta charset="utf-8">
<title>공지사항</title>
<%@ include file="/WEB-INF/views/include/home/style_home.jsp" %>

</head>
<body>
<%@ include file="/WEB-INF/views/include/home/main_header_home2.jsp" %>
<section class="bg-half d-table w-100"
		style="background: url('<%=request.getContextPath()%>/resources/landrick/images/company/aboutus.jpg');">
		<div class="bg-overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="page-next-level title-heading">
						<h1 class="text-white title-dark">공지사항</h1>
						<p class="text-white-50 para-desc mb-0 mx-auto"></p>

						<!-- page -->
						<div class="page-next">
							<nav aria-label="breadcrumb" class="d-inline-block">
								<ul class="breadcrumb bg-white rounded shadow mb-0">
									<li class="breadcrumb-item"><a href="index.html">JOBSTICK</a></li>
									<li class="breadcrumb-item active" aria-current="page">notice</li>
								</ul>
							</nav>
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
	<div class="position-relative">
		<div class="shape overflow-hidden text-white">
			<svg viewBox="0 0 2880 48" fill="none"
				xmlns="http://www.w3.org/2000/svg">
                    <path
					d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z"
					fill="currentColor"></path>
                </svg>
		</div>
	</div>
	<!-- Hero End -->
	<section class="section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-5 col-12">
                        <div class="card sidebar sticky-bar rounded shadow border-0">
                            <div class="card-body widget border-bottom">
                                <h5 class="mb-0">공지사항</h5>
                            </div>
    
                            <div class="card-body">
                                <div class="d-flex widget align-items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-check fea icon-ex-md me-3"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><polyline points="17 11 19 13 23 9"></polyline></svg>
                                    <div class="flex-1">
                                        <h6 class="widget-title mb-1">작성자</h6>
                                        <p>JOBSTICK</p>
<%--                                         <p>${notice.writer }</p> --%>
                                    </div>
                                </div>

                                <div class="d-flex widget align-items-center mt-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock fea icon-ex-md me-3"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                                    <div class="flex-1">
                                        <h6 class="widget-title mb-1">작성일</h6>
                                        <p><fmt:formatDate value="${notice.regdate }" pattern="yy/MM/dd"/></p>
                                    </div>
                                </div>

                                <div class="d-flex widget align-items-center mt-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-book fea icon-ex-md me-3"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path></svg>
                                    <div class="flex-1">
                                        <h6 class="widget-title mb-1">조회수</h6>
                                        <p>${notice.viewcnt }</p>
                                    </div>
                                </div>

<!--                                 <div class="d-flex widget align-items-center mt-3"> -->
<!--                                     <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-briefcase fea icon-ex-md me-3"><rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect><path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"></path></svg> -->
<!--                                     <div class="flex-1"> -->
<!--                                         <h6 class="widget-title mb-1">첨부파일</h6> -->
<!--                                         <p></p> -->
<!--                                     </div> -->
<!--                                 </div> -->
                            </div>
                        </div>
                    </div><!--end col-->
    					
                    <div class="col-lg-8 col-md-7 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
					<br>
					<div class="ms-lg-4">

						<div class="col-lg-12" style="text-align: right;">
							<a href="list.do" class="btn btn-primary d-print-none">목록</a>
						</div>
						<br>
						<div class="card">
							<div class="card-header">
								<h5>${notice.title }</h5>
							</div>
							<div class="card-body">${notice.content }</div>
						</div>

					</div>

				</div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section>
        	<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp" %>

<%@ include file="/WEB-INF/views/include/home/js_home.jsp" %>  	
</body>
