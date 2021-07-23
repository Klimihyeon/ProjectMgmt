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
<section class="section">
            <div class="container">

			<div class="row">
				<div class="col-lg-10"></div>
				<div class="col-lg-2">
				<button type="button" class="btn btn-primary" id="modifyBtn" onclick="OpenWindow('modifyForm.do?hbCode=${comp.hbCode}','채용공고수정',1000,1000); window.close();">공고수정</button>
				</div>
				<br><br><br>
				<div class="col-lg-4" style="float: right;">
					<div class="card sidebar sticky-bar rounded shadow border-0">
						<div class="card-body widget border-bottom">
							<h5 class="mb-0">기업정보</h5>
						</div>

						<div class="card-body">
							<div class="d-flex widget align-items-center">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-user-check fea icon-ex-md me-3">
									<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
									<circle cx="8.5" cy="7" r="4"></circle>
									<polyline points="17 11 19 13 23 9"></polyline></svg>
								<div class="flex-1">
									<h6 class="widget-title mb-1">대표자명</h6>
									<p class="text-primary mb-0">${compInfo.comChairman }</p>
								</div>
							</div>

							<div class="d-flex widget align-items-center mt-3">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-clock fea icon-ex-md me-3">
									<circle cx="12" cy="12" r="10"></circle>
									<polyline points="12 6 12 12 16 14"></polyline></svg>
								<div class="flex-1">
									<h6 class="widget-title mb-1">설립일</h6>
									<p class="text-primary mb-0">${compInfo.comOpenDate}</p>
								</div>
							</div>

							<div class="d-flex widget align-items-center mt-3">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-book fea icon-ex-md me-3">
									<path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path>
									<path
										d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path></svg>
								<div class="flex-1">
									<h6 class="widget-title mb-1">사업자등록번호</h6>
									<p class="text-primary mb-0">${compInfo.comRegNo}</p>
								</div>
							</div>

							<div class="d-flex widget align-items-center mt-3">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-briefcase fea icon-ex-md me-3">
									<rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect>
									<path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"></path></svg>
								<div class="flex-1">
									<h6 class="widget-title mb-1">업종</h6>
									<p class="text-primary mb-0">${compInfo.comItem}</p>
								</div>
							</div>

							<div class="d-flex widget align-items-center mt-3">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-map-pin fea icon-ex-md me-3">
									<path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path>
									<circle cx="12" cy="10" r="3"></circle></svg>
								<div class="flex-1">
									<h6 class="widget-title mb-1">주소</h6>
									<p class="text-primary mb-0">${company.comAddr}</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--end col-->

				<div class="col-lg-8 col-md-7 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
					<div class="col-lg-12">
						<div class="card event-schedule rounded border">
							<div class="card-body">
								<div class="d-flex">
									<ul
										class="date text-center text-primary me-3 mb-0 list-unstyled">
										<li class="day fw-bold mb-2">D-7</li>
										<li class="month fw-bold">~7/20</li>
									</ul>
									<div class="flex-1 content">
										<h5>
											<span class="text-primary">IT 웹개발</span>
										</h5>
										<div class="row">
											<div class="col-lg-6">
												<a href="javascript:void(0)" class="text-dark"> <span
													class="text-dark h6">모집분야: </span>${comp.hType } <br>
													<span class="text-dark h6">지원자학력: </span>${comp.hEducation }
													<br> <span class="text-dark h6">근무형태: </span>${comp.hJobtype }<br>
												</a>
											</div>
											<!--end col-->

											<div class="col-lg-6">
												<a href="javascript:void(0)" class="text-dark"> <span
													class="text-dark h6">경력여부: </span>${comp.hJobtype } <br>
													<span class="text-dark h6">급여조건: </span>${comp.hSalary } <br>
													<span class="text-dark h6">근무시간: </span>${comp.hWorktime }
												</a>
											</div>
										</div>
										<!--end col-->
										<br>
										<!-- 										<a href="#tickets" class="btn btn-primary">입사지원</a> -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="ms-lg-4">
						<div class="row">
							<div class="col-lg-10">
								<h5>모집 부문 및 상세내용</h5>
							</div>
							<!--end col-->

							<div class="col-lg-2">
								<a href="javascript:window.print()"
									class="btn btn-soft-primary d-print-none">Print</a>
							</div>
						</div>
						<hr>
						<h5 class="mt-4">모집인원</h5>
						<div class="col-lg-12 col-md-4 col-6 mt-4">
							<div class="rounded shadow bg-white p-1">
								<span class="text-primary">${comp.hHire }</span>
							</div>
						</div>
						<h5 class="mt-4">자격요건 및 우대조건</h5>
						<div class="col-lg-12 col-md-4 col-6 mt-4">
							<div class="rounded shadow bg-white p-1">
								${comp.hQualification }</div>
						</div>
						<h5 class="mt-4">마감일</h5>
						<div class="col-lg-12 col-md-4 col-6 mt-4">
							<div class="rounded shadow bg-white p-1">
								<fmt:formatDate value="${comp.hEdate }" pattern="YY/MM/dd" />
							</div>
						</div>
						<h5 class="mt-4">사용기술</h5>
						<div class="col-lg-12 col-md-4 col-6 mt-4">
							<div class="rounded shadow bg-white p-1">${comp.hSkill }</div>
						</div>
						<h5 class="mt-4">전형절차</h5>
						<div class="col-lg-12 col-md-4 col-6 mt-4">
							<div class="rounded shadow bg-white p-1">
								${comp.hHireProsedure }</div>
						</div>
						<h5 class="mt-4">비고</h5>
						<div class="col-lg-12 col-md-4 col-6 mt-4">
							<div class="rounded shadow bg-white p-1">${comp.hEtc }</div>
						</div>
						<!--end col-->

					</div>
					<br>
					<div class="row">
						<div class="col-lg-9">
							<h5>지원자 통계</h5>
						</div>
						<!--end col-->

						<div class="col-lg-3">지원자수 9명</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-6 col-md-4 col-6 mt-4">
							<div id="donutchart"></div>
						</div>
						<!--end col-->

						<div class="col-lg-6 col-md-4 col-6 mt-4">
							<div id="columnchart_values"></div>
						</div>
						<!--end col-->
					</div>
				</div>
				<!--end col-->
			</div>
			<!--end row-->
            </div><!--end container-->
        </section>
        
        <%@ include file="/WEB-INF/views/include/home/js_home.jsp" %>
</body>
