<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="hireBoardList" value="${hireBoardList }" />
<c:set var="count" value="${count }" />

<head>
<title>JOBSTICK - 채용정보</title>
<style type="text/css">
#searchTypeArea{
   text-align-last: center;
   text-align: center;
   -ms-text-align-last: center;
   -moz-text-align-last: center;
}
#searchType{
   text-align-last: center;
   text-align: center;
   -ms-text-align-last: center;
   -moz-text-align-last: center;
}
</style>
<%@ include file="/WEB-INF/views/include/home/style_home.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/include/home/main_header_home2.jsp" %>


	<!-- Hero Start -->
	<section class="bg-half d-table w-100"
		style="background: url('<%=request.getContextPath()%>/resources/landrick/images/company/aboutus.jpg');">
		<div class="bg-overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="page-next-level title-heading">
				
					<h1 class="heading mb-3" style="color: white;">내일이 더 즐거운 
						<span class=" typewrite" data-period="2000" style="color: white;"
							data-type="[ &quot;Freelancer&quot;, &quot;Developer&quot;, &quot;Designer&quot;, &quot;UX Developer&quot;, &quot;ios Developer&quot; ]"><span class="wrap">
							Freelancer</span>
						</span>
					</h1>
					 <p class="para-desc mx-auto" style="color: white;">다양한 분야의 IT 채용정보를 확인하세요!</p>

					 <form class="rounded p-4 mt-4">
                                <div class="row text-start">
                                    <div class="col-lg-5 col-md-4">
                                        <div class="mb-0">
                                            <input type="text" class="form-control" placeholder="회사, 직무, 지역 등 키워드를 입력하세요." value="${cri.keyword }" name="keyword" style="text-align: center;">
                                        </div>
                                    </div><!--end col-->
                                    <div class="col-lg-7 col-md-8">
                                        <div class="row align-items-center">
                                            <div class="col-md-4 mt-4 mt-sm-0">
                                                <div class="mb-0">
                                                    <select class="form-control custom-select" name="searchArea" id="searchArea">
                                                         <option value="">지역 전체 </option>
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
                                                    <select class="form-control custom-select" name="search" id="search">
                                                        <option value="">IT직무</option>
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
                                                    <input type="button" id="search" name="search" class="searchbtn btn btn-primary" value="검 색" onclick="list_go(1,'list.do');">
                                                </div>
                                            </div><!--end col-->
                                        </div><!--end row-->
                                    </div> <!---end col-->
                                </div><!--end row-->
                            </form>
						<!-- page -->
						<div class="page-next">
							<nav aria-label="breadcrumb" class="d-inline-block">
								<ul class="breadcrumb bg-white rounded shadow mb-0">
									<li class="breadcrumb-item"><a href="index.html">JOBSTICK</a></li>
									<li class="breadcrumb-item active" aria-current="page">JOB-INFO</li>
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
	
	
<!-- <!-- 헤더 -->
<!-- <div class="container"> -->
<!--                 <div class="row justify-content-center"> -->
<!--                     <div class="col-lg-10"> -->
<!--                         <div class="title-heading text-center mt-4 mt-md-5 pt-md-5"> -->
<!--                             <div class="alert alert-light alert-pills" role="alert"> -->
<!--                                 <span class="badge rounded-pill bg-success me-1">Start</span> -->
<!--                                 <span class="content"> Fill job <a href="page-job-apply.html" class="text-primary">application</a> now !</span> -->
<!--                             </div> -->
<!--                             <h1 class="heading mb-3">내일이 더 즐거운 <span class="text-primary typewrite" data-period="2000" data-type="[ &quot;Freelancer&quot;, &quot;Developer&quot;, &quot;Designer&quot;, &quot;UX Developer&quot;, &quot;ios Developer&quot; ]"><span class="wrap">Design</span></span></h1> -->
<!--                             <p class="para-desc mx-auto text-muted">다양한 분야의 IT 채용정보를 확인하세요!</p> -->
<!--                             <form class="rounded p-4 mt-4 bg-white"> -->
<!--                                 <div class="row text-start"> -->
<!--                                     <div class="col-lg-5 col-md-4"> -->
<!--                                         <div class="mb-0"> -->
<%--                                             <input type="text" class="form-control"  placeholder="회사, 직무, 지역 등 키워드를 입력하세요." value="${cri.keyword }"> --%>
<!--                                         </div> -->
<!--                                     </div>end col -->
                                    
<!--                                     <div class="col-lg-7 col-md-8"> -->
<!--                                         <div class="row align-items-center"> -->
<!--                                             <div class="col-md-4 mt-4 mt-sm-0"> -->
<!--                                                 <div class="mb-0"> -->
<!--                                                     <select class="form-control custom-select" name="searchTypeArea" id="searchTypeArea"> -->
<%--                                                         <option value="all" ${cri.searchType eq 'w' ? 'selected':'' }>지역 전체</option> --%>
<%--                                                         <option value="s" ${cri.searchType eq 's' ? 'selected':'' }>서울</option> --%>
<%--                                                         <option value="b" ${cri.searchType eq 'b' ? 'selected':'' }>부산</option> --%>
<%--                                                         <option value="d" ${cri.searchType eq 'd' ? 'selected':'' }>대구</option> --%>
<%--                                                         <option value="i" ${cri.searchType eq 'i' ? 'selected':'' }>인천</option> --%>
<%--                                                         <option value="ga" ${cri.searchType eq 'ga' ? 'selected':'' }>광주</option> --%>
<%--                                                         <option value="da" ${cri.searchType eq 'da' ? 'selected':'' }>대전</option> --%>
<%--                                                         <option value="wo" ${cri.searchType eq 'wo' ? 'selected':'' }>울산</option> --%>
<%--                                                         <option value="se" ${cri.searchType eq 'se' ? 'selected':'' }>세종</option> --%>
<%--                                                         <option value="gg" ${cri.searchType eq 'gg' ? 'selected':'' }>경기</option> --%>
<%--                                                         <option value="gw" ${cri.searchType eq 'gw' ? 'selected':'' }>강원</option> --%>
<%--                                                         <option value="cb" ${cri.searchType eq 'cb' ? 'selected':'' }>충북</option> --%>
<%--                                                         <option value="cn" ${cri.searchType eq 'cn' ? 'selected':'' }>충남</option> --%>
<%--                                                         <option value="jb" ${cri.searchType eq 'jb' ? 'selected':'' }>전북</option> --%>
<%--                                                         <option value="jn" ${cri.searchType eq 'jn' ? 'selected':'' }>전남</option> --%>
<%--                                                         <option value="gb" ${cri.searchType eq 'gb' ? 'selected':'' }>경북</option> --%>
<%--                                                         <option value="gn" ${cri.searchType eq 'gn' ? 'selected':'' }>경남</option> --%>
<%--                                                         <option value="je" ${cri.searchType eq 'je' ? 'selected':'' }>제주</option> --%>
<!--                                                     </select> -->
<!--                                                 </div> -->
<!--                                             </div>end col -->
                                            
<!--                                             <div class="col-md-4 mt-4 mt-sm-0"> -->
<!--                                                 <div class="mb-0"> -->
<!--                                                     <select class="form-control custom-select" name="searchType" id="searchType"> -->
<!--                                                         <option value="0">IT직무</option> -->
<%--                                                         <option value="1" ${cri.searchType eq '1' ? 'selected':'' }>웹개발</option> --%>
<%--                                                         <option value="2" ${cri.searchType eq '2' ? 'selected':'' }>응용프로그램개발</option> --%>
<%--                                                         <option value="3" ${cri.searchType eq '3' ? 'selected':'' }>시스템개발</option> --%>
<%--                                                         <option value="4" ${cri.searchType eq '4' ? 'selected':'' }>서버/네트워크/보안</option> --%>
<%--                                                         <option value="5" ${cri.searchType eq '5' ? 'selected':'' }>ERP/시스템분석설계</option> --%>
<%--                                                         <option value="6" ${cri.searchType eq '6' ? 'selected':'' }>데이터베이스DBA</option> --%>
<%--                                                         <option value="7" ${cri.searchType eq '7' ? 'selected':'' }>퍼블리싱.UI개발</option> --%>
<%--                                                         <option value="8" ${cri.searchType eq '8' ? 'selected':'' }>웹디자인</option> --%>
<%--                                                         <option value="9" ${cri.searchType eq '9' ? 'selected':'' }>하드웨어/소프트웨어</option> --%>
<%--                                                         <option value="10" ${cri.searchType eq '10' ? 'selected':'' }>통신/모바일</option> --%>
<%--                                                         <option value="11" ${cri.searchType eq '11' ? 'selected':'' }>웹기획.PM</option> --%>
<%--                                                         <option value="12" ${cri.searchType eq '12' ? 'selected':'' }>웹마스터.QA.테스터</option> --%>
<%--                                                         <option value="13" ${cri.searchType eq '13' ? 'selected':'' }>컨텐츠사이트운영</option> --%>
<%--                                                         <option value="14" ${cri.searchType eq '14' ? 'selected':'' }>게임Game</option> --%>
<%--                                                         <option value="15" ${cri.searchType eq '15' ? 'selected':'' }>IT디자인컴퓨터교육</option> --%>
<%--                                                         <option value="16" ${cri.searchType eq '16' ? 'selected':'' }>동영상편집코덱</option> --%>
<%--                                                         <option value="17" ${cri.searchType eq '17' ? 'selected':'' }>인공지능(AI)빅데이터</option>         --%>
<!--                                                     </select> -->
<!--                                                 </div> -->
<!--                                             </div>end col -->
    
<!--                                             <div class="col-md-4 mt-4 mt-sm-0"> -->
<!--                                                 <div class="d-grid"> -->
<!--                                                     <input type="button" id="search" name="search" class="searchbtn btn btn-primary" value="검 색" onclick="list_go(1);"> -->
<!--                                                 </div> -->
<!--                                             </div>end col -->
<!--                                         </div>end row -->
<!--                                     </div> -end col -->
<!--                                 </div>end row -->
<!--                             </form> -->
<!--                         </div> -->
<!--                     </div>end col -->
<!--                 </div>end row -->
<!--             </div> -->
	<!--end teb pane-->
	<!-- Hero End -->


<section class="section">
	
		<div class="container">
		
			<div class="row">
				<div class="col-12">
					<div class="border-bottom pb-4">
						<div class="row">

							<!-- 기업회원시에만 공고등록 버튼 활성화 -->
							<div class="col-sm-12" style="text-align: right;">
								<c:if test="${loginUser.authority eq '기업회원'}">
									<button type="button" class="btn btn-primary" id="registBtn"
										onclick="OpenWindow('registForm.do','채용공고등록',1000,1000);">공고등록</button>
								</c:if>
							</div>
						</div>
						<!--end row-->
					</div>
					<br>
				</div>
				<!--end col-->

				<div class="col-lg-9 col-md-8">
				</div>
				<!--end col-->
				
				<div class="col-lg-3 col-md-4 mt-4 mt-sm-0 pt-2 pt-sm-0">
					<div class="form custom-form">
						<div class="row">
							<div class="mb-0">
								<select class="form-select" name="perPageNum" id="perPageNum" onchange="list_go(1);">
								<option value="10" ${cri.perPageNum==10 ? 'selected':'' }>10개씩 보기</option>
								<option value="20" ${cri.perPageNum==20 ? 'selected':'' }>20개씩 보기</option>
								<option value="50" ${cri.perPageNum==50 ? 'selected':'' }>50개씩 보기</option>
								<option value="100" ${cri.perPageNum==100 ? 'selected':'' }>100개씩 보기</option>
							</select>
							</div>
						</div>
					</div>
					<!--end col-->
				</div>
				<!--end row-->

                            
				<c:forEach items="${hireBoardList }" var="hire">
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
						<c:if test="${empty hireBoardList }">
							<strong style="text-align: center;">해당 내용이 없습니다.</strong>
						</c:if>

						<a href="javascript:OpenWindow('detail.do?hbCode=${hire.hbCode }','상세보기',1200,900);">    
						<div class="card job-box rounded shadow border-0 overflow-hidden">
                            <div class="border-bottom">
                                <div class="position-relative">
                                    <img src="<%=request.getContextPath() %>/resources/landrick/images/job/full.jpg" class="img-fluid" alt="">
                                    <div class="job-overlay bg-white"></div>
                                </div>
                                	<div class="mb-0 position"><h5 style="color: black;"><b>${hire.hType }</b></h5>
                                	</div>
                                <ul class="list-unstyled head mb-0">
                                    <li class="badge bg-success rounded-pill"><fmt:formatDate value="${hire.hEdate }" pattern="~MM/dd"/></li>
                                    
                                </ul>
                        </div>
                            
                            
                            <div class="card-body content position-relative">
                                <div class="firm-logo rounded-circle shadow bg-light text-center">
                                    <img src="<%=request.getContextPath() %>/resources/landrick/images/job/Circleci.svg" class="avatar avatar-md-sm" alt="">
                                </div>
                                <div class="company-detail text-center mt-3">
                                    <h5 class="mb-0" style="color: black;">${hire.comId }</h5>
                                    <p class="text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin fea icon-sm"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>${hire.hLocation }</p>
                                </div>
                          <a href="javascript:OpenWindow('detail.do?hbCode=${hire.hbCode }','상세보기',1000,900);">              
                                <ul class="job-facts list-unstyled">
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg>${hire.hCareer  }</li><br>
                                <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg>${hire.hJobtype }</li><br>
                                <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg>${hire.hWorktime }</li>
                                </ul>
                                </a>
                            </div>
                            
                        </div>
                    </a>
                    </div><!--end col-->
                     </c:forEach>
                     <!-- PAGINATION START -->
                    <div class="col-12 mt-4 pt-2">
                       <%@ include file="/WEB-INF/views/common/pagination.jsp" %>	
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

<script src="/resources/js/common.js" ></script>
</body>