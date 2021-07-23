<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="hireBoardList" value="${dataMap.hireBoardList }" />

<title>채용정보조회 안에</title>
<%@ include file="/WEB-INF/views/include/home/style_home.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/include/home/main_header_home.jsp" %>
<div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <div class="title-heading text-center mt-4 mt-md-5 pt-md-5">
                            <div class="alert alert-light alert-pills" role="alert">
                                <span class="badge rounded-pill bg-success me-1">Start??</span>
                                <span class="content"> Fill job <a href="page-job-apply.html" class="text-primary">application</a> now !</span>
                            </div>
                            <h1 class="heading mb-3">Job Vacancies for <span class="text-primary typewrite" data-period="2000" data-type="[ &quot;Freelancer&quot;, &quot;Developer&quot;, &quot;Designer&quot;, &quot;UX Developer&quot;, &quot;ios Developer&quot; ]"><span class="wrap">Design</span></span></h1>
                            <p class="para-desc mx-auto text-muted">Huge community of designers and developers ready for your project.</p>
                            <form class="rounded p-4 mt-4 bg-white">
                                <div class="row text-start">
                                    <div class="col-lg-5 col-md-4">
                                        <div class="mb-0">
                                            <input type="text" class="form-control"  placeholder="Keywords" value="${param.keyword }">
                                        </div>
                                    </div><!--end col-->
                                    
                                    <div class="col-lg-7 col-md-8">
                                        <div class="row align-items-center">
                                            <div class="col-md-4 mt-4 mt-sm-0">
                                                <div class="mb-0">
                                                    <select class="form-control custom-select" name="searchTypeArea" id="searchTypeArea">
                                                        <option value="all" ${cri.searchType eq 'w' ? 'selected':'' }>전체</option>
                                                        <option value="s" ${cri.searchType eq 's' ? 'selected':'' }>서울</option>
                                                        <option value="b" ${cri.searchType eq 'b' ? 'selected':'' }>부산</option>
                                                        <option value="d" ${cri.searchType eq 'd' ? 'selected':'' }>대구</option>
                                                        <option value="i" ${cri.searchType eq 'i' ? 'selected':'' }>인천</option>
                                                        <option value="ga" ${cri.searchType eq 'ga' ? 'selected':'' }>광주</option>
                                                        <option value="da" ${cri.searchType eq 'da' ? 'selected':'' }>대전</option>
                                                        <option value="wo" ${cri.searchType eq 'wo' ? 'selected':'' }>울산</option>
                                                        <option value="se" ${cri.searchType eq 'se' ? 'selected':'' }>세종</option>
                                                        <option value="gg" ${cri.searchType eq 'gg' ? 'selected':'' }>경기</option>
                                                        <option value="gw" ${cri.searchType eq 'gw' ? 'selected':'' }>강원</option>
                                                        <option value="cb" ${cri.searchType eq 'cb' ? 'selected':'' }>충북</option>
                                                        <option value="cn" ${cri.searchType eq 'cn' ? 'selected':'' }>충남</option>
                                                        <option value="jb" ${cri.searchType eq 'jb' ? 'selected':'' }>전북</option>
                                                        <option value="jn" ${cri.searchType eq 'jn' ? 'selected':'' }>전남</option>
                                                        <option value="gb" ${cri.searchType eq 'gb' ? 'selected':'' }>경북</option>
                                                        <option value="gn" ${cri.searchType eq 'gn' ? 'selected':'' }>경남</option>
                                                        <option value="je" ${cri.searchType eq 'je' ? 'selected':'' }>제주</option>
                                                    </select>
                                                </div>
                                            </div><!--end col-->
                                            
                                            <div class="col-md-4 mt-4 mt-sm-0">
                                                <div class="mb-0">
                                                    <select class="form-control custom-select" name="searchType" id="searchType">
                                                        <option value="1" ${cri.searchType eq '1' ? 'selected':'' }>웹개발</option>
                                                        <option value="2" ${cri.searchType eq '2' ? 'selected':'' }>응용프로그램개발</option>
                                                        <option value="3" ${cri.searchType eq '3' ? 'selected':'' }>시스템개발</option>
                                                        <option value="4" ${cri.searchType eq '4' ? 'selected':'' }>서버/네트워크/보안</option>
                                                        <option value="5" ${cri.searchType eq '5' ? 'selected':'' }>ERP/시스템분석설계</option>
                                                        <option value="6" ${cri.searchType eq '6' ? 'selected':'' }>데이터베이스DBA</option>
                                                        <option value="7" ${cri.searchType eq '7' ? 'selected':'' }>퍼블리싱.UI개발</option>
                                                        <option value="8" ${cri.searchType eq '8' ? 'selected':'' }>웹디자인</option>
                                                        <option value="9" ${cri.searchType eq '9' ? 'selected':'' }>하드웨어/소프트웨어</option>
                                                        <option value="10" ${cri.searchType eq '10' ? 'selected':'' }>통신/모바일</option>
                                                        <option value="11" ${cri.searchType eq '11' ? 'selected':'' }>웹기획.PM</option>
                                                        <option value="12" ${cri.searchType eq '12' ? 'selected':'' }>웹마스터.QA.테스터</option>
                                                        <option value="13" ${cri.searchType eq '13' ? 'selected':'' }>컨텐츠사이트운영</option>
                                                        <option value="14" ${cri.searchType eq '14' ? 'selected':'' }>게임Game</option>
                                                        <option value="15" ${cri.searchType eq '15' ? 'selected':'' }>IT디자인컴퓨터교육</option>
                                                        <option value="16" ${cri.searchType eq '16' ? 'selected':'' }>동영상편집코덱</option>
                                                        <option value="17" ${cri.searchType eq '17' ? 'selected':'' }>인공지능(AI)빅데이터</option>        
                                                    </select>
                                                </div>
                                            </div><!--end col-->
    
                                            <div class="col-md-4 mt-4 mt-sm-0">
                                                <div class="d-grid">
                                                    <input type="submit" id="search" name="search" class="searchbtn btn btn-primary" value="Search">
                                                </div>
                                            </div><!--end col-->
                                        </div><!--end row-->
                                    </div> <!---end col-->
                                </div><!--end row-->
                            </form>
                        </div>
                    </div><!--end col-->

                  
                </div><!--end row-->
            </div>
	<!--end teb pane-->
	<!-- Hero End -->


	<section class="section">
	
		<div class="container">
		
			<div class="row">
                    <div class="col-12">
                        <div class="border-bottom pb-4">
                            <div class="row">
                                <div class="col-lg-9 col-md-8">
                                    <div class="section-title">
                                        <h4 class="title mb-2">All Jobs</h4>
                                        <p class="text-muted mb-0">Most Relevance Job</p>
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div>
                        <br>
                    </div><!--end col-->
               
				<div class="col-lg-9 col-md-8">
				</div>
				<!--end col-->
				
				<div class="col-lg-3 col-md-4 mt-4 mt-sm-0 pt-2 pt-sm-0">
					<div class="form custom-form">
						<div class="row">
							<div class="mb-0">
								<select class="form-select form-control"
									aria-label="Default select example" id="Sortbylist-job">
									<option selected="">등록일순</option>
									<option>마감일순</option>
								</select>
							</div>
						</div>
					</div>
					<!--end col-->
				</div>
				<!--end row-->

<!-- 				<div class="row"> -->
<!--                     <div class="col-12 mt-4 pt-2"> -->
<!--                         <div class="section-title"> -->
<!--                             <h5 class="mb-0"></h5> -->
<!--                         </div> -->
<!--                     </div>end col -->

                  <c:forEach items="${hireBoardList }" var="hire">
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card job-box rounded shadow border-0 overflow-hidden">
                            <div class="border-bottom">
                                <div class="position-relative">
                                    <img src="<%=request.getContextPath() %>/resources/landrick/images/job/full.jpg" class="img-fluid" alt="">
                                    <div class="job-overlay bg-white"></div>
                                </div>
                                	<div class="mb-0 position"><a href="job_detail.do?hbCode=${hire.hbCode }" class="text-dark h5">${hire.hType }</a>
                                	</div>
                                <ul class="list-unstyled head mb-0">
                                    <li class="badge bg-success rounded-pill">${hire.hEdate }</li>
                                </ul>
                            </div>
                            
                            <div class="card-body content position-relative">
                                <div class="firm-logo rounded-circle shadow bg-light text-center">
                                    <img src="<%=request.getContextPath() %>/resources/landrick/images/job/Circleci.svg" class="avatar avatar-md-sm" alt="">
                                </div>
                                <div class="company-detail text-center mt-3">
                                    <h5 class="mb-0"><a href="page-job-company.html" class="text-dark company-name">${hire.comId }</a></h5>
                                    <p class="text-muted"><a href="#" class="text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin fea icon-sm"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>${hire.hLocation }</a></p>
                                </div>
                                <ul class="job-facts list-unstyled">
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg>${hire.hCarrer }</li>
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg>${hire.hJobtype }</li>
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg>${hire.hWorktime }</li>
                                </ul>
                                <div class="d-grid">
                                    <a href="#" class="btn btn-outline-primary">입사지원</a>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->
                   </c:forEach>

                    <!-- PAGINATION START -->
                    <div class="col-12 mt-4 pt-2">
                        <ul class="pagination justify-content-center mb-0">
                            <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Previous">Prev</a></li>
                            <li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Next">Next</a></li>
                        </ul>
                    </div><!--end col-->
                    <!-- PAGINATION END -->
                </div>
			</div>
			<!--end container-->
	</section>
	<!--end section-->
	<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp" %>
	<!-- Back to top -->
	<a href="#" onclick="topFunction()" id="back-to-top"
		class="btn btn-icon btn-primary back-to-top" style="display: none;">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up icons">
			<line x1="12" y1="19" x2="12" y2="5"></line>
			<polyline points="5 12 12 5 19 12"></polyline>
		</svg></a>
	<!-- Back to top -->

	<%@ include file="/WEB-INF/views/include/home/js_home.jsp" %>   
<style type="text/css">
.typewrite>.wrap {
	border-right: 0.08em solid transparent
}
</style>


</body>
</html>