<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<title>채용상세정보</title>
<%@ include file="/WEB-INF/views/include/home/style_home.jsp" %>

<head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day', { role: "style" }],
          ['남자', 11, "color: #93DAFF"],
          ['여자', 2, "color: #FFB6C1"]
        ]);

        var options = {
          title: '지원자 성별 통계',
          pieHole: 0.5
          
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
      
      google.charts.load("current", {packages:['corechart']});
      google.charts.setOnLoadCallback(drawChart2);
      function drawChart2() {
        var data = google.visualization.arrayToDataTable([
          ["Edu", "Density", { role: "style" } ],
          ["고졸이하", 8.94, "#93DAFF"],
          ["2~3년제", 10.49, "#87CEFA"],
          ["4년제", 15.30, "#00BFFF"],
          ["석사", 18.45, "color: #00A5FF	"],
          ["박사", 21.45, "color: #0078FF"]
        ]);

        var view = new google.visualization.DataView(data);
        view.setColumns([0, 1,
                         { calc: "stringify",
                           sourceColumn: 1,
                           type: "string",
                           role: "annotation" },
                         2]);

        var options = {
          title: "학력별 현황",
          width: 200,
          height: 200,
          bar: {groupWidth: "95%"},
          legend: { position: "none" },
        };
        var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
        chart.draw(view, options);
      }
    </script>
</head>
<body>

	<!-- Hero Start -->
	<section class="bg-half-260 bg-primary d-table w-100"
		style="background-image: url('<%=request.getContextPath()%>/resources/landrick/images/company/aboutus.jpg'); padding-top: 50px;">
		<div class="bg-overlay"></div>
		
		<!-- <div class="bg-overlay"></div> -->
	</section>
	<!--end section-->
	<!-- Hero End -->

	<!-- Company Detail Start -->
	<section class="section" style="padding-bottom: 0px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-5 col-12">
					<div class="job-profile position-relative">
						<div class="rounded shadow bg-white">
							<div class="text-center py-5 border-bottom">
								<img class="avatar avatar-medium mx-auto rounded-circle d-block"
								src=""
								onerror="this.src='<%=request.getContextPath() %>/resources/img/noimage2.png'">	
									
								<h5 class="mt-3 mb-0">
										${compInfo.comName}</h5>
								<p class="text-muted mb-0">${compInfo.comItem}</p>
							</div>

							<div class="p-4">
								<h5>기업정보</h5>
								<ul class="list-unstyled mb-4">

									<!-- 대표자명 -->
									<li class="h6"><svg style="color: #2f55d4;"
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-user-check fea icon-ex-md me-3">
											<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
											<circle cx="8.5" cy="7" r="4"></circle>
											<polyline points="17 11 19 13 23 9"></polyline>
	                                        </svg> <span class="text-muted">대표자명
									</span> ${compInfo.comChairman }</li>

									<!-- 설립일 -->
									<li class="h6"><svg style="color: #2f55d4;"
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-clock fea icon-ex-md me-3">
											<circle cx="12" cy="12" r="10"></circle>
											<polyline points="12 6 12 12 16 14"></polyline></svg> <span
										class="text-muted">설립일 </span> <fmt:formatDate
											value="${compInfo.comOpenDate}" pattern="yyyy-MM-dd" /></li>
											
									<!-- 사업자등록번호 -->
									<li class="h6"><svg style="color: #2f55d4;"
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-book fea icon-ex-md me-3">
											<path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path>
											<path
												d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path></svg>
										<span class="text-muted">사업자등록번호 </span> ${compInfo.comRegNo}
									</li>

									<!-- 업종 -->
									<li class="h6"><svg style="color: #2f55d4;"
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-briefcase fea icon-ex-md me-3">
											<rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect>
											<path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"></path></svg>
										<span class="text-muted">업종 </span> ${compInfo.comItem}</li>

									<!-- 주소 -->
									<li class="h6">
									<svg style="color: #2f55d4;"
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-map-pin fea icon-ex-md me-3">
											<path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path>
											<circle cx="12" cy="10" r="3"></circle></svg> <span
										class="text-muted">소재지 </span> ${company.comAddr}</li>
								</ul>
								
								<div class="d-grid">
								<c:if test="${loginUser.authority eq '교육생'}">
								<a href="#" data-bs-toggle="modal" return false; data-bs-target="#ApplyNow" class="btn btn-primary" onclick="application();">지원하기</a>	
								</c:if>
								
								<c:if test="${loginUser.authority eq '기업회원' or loginUser.authority eq '교강사' or loginUser.authority eq '교직원'or loginUser.authority eq '관리자'}">
								<a href="#" data-bs-toggle="modal" return false; data-bs-target="#ApplyNow" class="btn btn-primary" onclick="application_not();">지원하기</a>
									<script type='text/javascript'>
										function application_not(){
											alert('지원불가 대상자입니다. 관리자에게 문의하세요.');
										}
									</script>
								</c:if>
								
								<c:if test="${loginUser.authority eq '웹회원'}">
								<a href="#" data-bs-toggle="modal" return false; data-bs-target="#ApplyNow" class="btn btn-primary" onclick="application_web();">지원하기</a>
									<script type='text/javascript'>
										function application_web(){
											alert('JOBSTICK의 교육생이 되면 지원하실 수 있습니다.');
										}
									</script>
								</c:if>
								</div>
							</div>
						</div>

						<div class="map mt-4 pt-2">
							<h6>조회수 ${comp.hCnt }</h6>
							<h6>지원자수 ${comp.hApplicantNo }</h6>
							<div id="donutchart" ></div> 
							<div id="columnchart_values"></div> 
						</div>
						<div class="map mt-4 pt-2">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9459036900826!2d-122.39420768440696!3d37.79130751898054!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085806516341641%3A0x3f1e44c262252836!2sCircleCI!5e0!3m2!1sen!2sin!4v1575034257139!5m2!1sen!2sin"
								style="border: 0" class="rounded" allowfullscreen=""></iframe>
						</div>
					</div>
				</div>
				<!--end col-->

				<div class="col-lg-8 col-md-7 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
					<div class="col-sm-12">

						<div class="col-sm-12 row">
							<div class="col-sm-9" style="text-align: left;">
								<h4>${comp.hTitle }</h4>
							</div>
							<div class="col-sm-3"
								style="text-align: right; padding: 0x; margin: 0px;">
								<a href="javascript:window.print()"
									class="btn btn-primary d-print-none"> <svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-printer" viewBox="0 0 16 16">
								  <path d="M2.5 8a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z"></path>
								  <path
											d="M5 1a2 2 0 0 0-2 2v2H2a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h1v1a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-1h1a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-1V3a2 2 0 0 0-2-2H5zM4 3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1v2H4V3zm1 5a2 2 0 0 0-2 2v1H2a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-1v-1a2 2 0 0 0-2-2H5zm7 2v3a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1z"></path>
									</svg> Print
								</a>
							</div>
						</div>
						<br>
						<div class="card">
							<div class="card-body">
								<h5>모집내용</h5>
								<div class="mt-4 row">

									<div class="d-flex align-items-center col-sm-6"
										style="padding: 10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
										<div class="flex-1">
											<h6 class="text-primary mb-0">모집인원</h6>
											<p class="text-muted mb-0">${comp.hHire }명</p>
										</div>
									</div>
									<div class="d-flex align-items-center col-sm-6"
										style="padding: 10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
										<div class="flex-1">
											<h6 class="text-primary mb-0">모집분야</h6>
											<p class="text-muted mb-0">${comp.hType }</p>
										</div>
									</div>
									<div class="d-flex align-items-center col-sm-6"
										style="padding: 10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
										<div class="flex-1">
											<h6 class="text-primary mb-0">마감일</h6>
											<p class="text-muted mb-0">
												<fmt:formatDate value="${comp.hEdate }" pattern="YY/MM/dd" />
											</p>
										</div>
									</div>
									<div class="d-flex align-items-center col-sm-6"
										style="padding: 10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
										<div class="flex-1">
											<h6 class="text-primary mb-0">경력여부</h6>
											<p class="text-muted mb-0">${comp.hJobtype }</p>
										</div>
									</div>
									<div class="d-flex align-items-center col-sm-6"
										style="padding: 10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
										<div class="flex-1">
											<h6 class="text-primary mb-0">지원자 학력</h6>
											<p class="text-muted mb-0">${comp.hEducation }</p>
										</div>
									</div>
									<div class="d-flex align-items-center col-sm-6"
										style="padding: 10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
										<div class="flex-1">
											<h6 class="text-primary mb-0">급여 조건</h6>
											<p class="text-muted mb-0">${comp.hSalary }</p>
										</div>
									</div>
									<div class="d-flex align-items-center col-sm-6"
										style="padding: 10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
										<div class="flex-1">
											<h6 class="text-primary mb-0">근무형태</h6>
											<p class="text-muted mb-0">${comp.hJobtype }</p>
										</div>
									</div>
									<div class="d-flex align-items-center col-sm-6"
										style="padding: 10px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round"
											class="feather feather-bookmark fea icon-ex-md text-muted me-3">
											<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
										<div class="flex-1">
											<h6 class="text-primary mb-0">근무시간</h6>
											<p class="text-muted mb-0">
											${comp.hWorktime }</p>
										</div>
									</div>
								</div>
							</div>
						</div>


						<!-- 상세정보 -->

						<div class="card" style="padding: 20px; margin-top: 20px;">
							<div class="card-body">

								<div class="col-lg-12">
									<h5>모집 부문 및 상세내용</h5>
								</div>
								<!--end col-->

								<br>
								<h6>자격요건 및 우대조건</h6>
								<div class="col-sm-12">
									<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
									${comp.hQualification }</div>
								</div>

								<h6 class="mt-4">사용기술</h6>
								<div class="col-sm-12">
									<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
									${comp.hSkill }
									</div>
								</div>
								<h6 class="mt-4">전형절차</h6>
								<div class="col-sm-12">
<!-- 								<div class="rounded shadow bg-white p-1"> -->
								<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
										${comp.hHireProsedure }</div>
								</div>
								<h6 class="mt-4">비고</h6>
								<div class="col-sm-12">
									<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
									${comp.hEtc }</div>
								</div>
							</div>



						</div>
					</div>

				</div>
			</div>
			<!--end col-->
		</div>
		<!--end row-->
		</div>
		<!--end container-->
		<input type="hidden" name="hbCode" value="${comp.hbCode}">
		<input type="hidden" name="loginUser" value="${loginUser.usersId}">
	</section>
	<!--end section-->
	

<%@ include file="/WEB-INF/views/include/home/js_home.jsp" %>
        
<script>

function application(){
	
	var input_hbCode=$('input[name="hbCode"]');
	var input_loginUser=$('input[name="loginUser"]');

	var answer;
	answer = confirm("해당 공고에 지원하시겠습니까?");
	
	//확인을 선택한 경우 
	if(answer == true){
    $.ajax({
		url : "application.do?hbCode="+input_hbCode.val()+"&usersId="+input_loginUser.val()
		, method : "get"
		, success : function(result,status,xhr){
			if(result == "no_applyer"){
				alert("지원되었습니다. \n입사지원현황은 마이페이지에서 열람 가능합니다.");
			 }
			else if(result == "applyer"){
				alert("이미 지원한 공고입니다.");
			 }else{
				alert("이건 멍미");
				 
			 }
		}
		, error : function(xhr) {
			alert("지원 불가합니다." + xhr.status);
		}
	});	
		
	}

	
}
</script>
</body>


