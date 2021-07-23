<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Landrick - Saas &amp; Software Landing Page Template</title>

	<title>Insert title here</title>
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
          width: 600,
          height: 400,
          bar: {groupWidth: "95%"},
          legend: { position: "none" },
        };
        var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
        chart.draw(view, options);
      }
    </script>
</head>
<body>
<div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <div class="title-heading text-center mt-4 mt-md-5 pt-md-5">
                            <div class="alert alert-light alert-pills" role="alert">
                                <span class="badge rounded-pill bg-success me-1">Start</span>
                                <span class="content"> Fill job <a href="page-job-apply.html" class="text-primary">application</a> now !</span>
                            </div>
                            <h1 class="heading mb-3">Job Vacancies for <span class="text-primary typewrite" data-period="2000" data-type="[ &quot;Freelancer&quot;, &quot;Developer&quot;, &quot;Designer&quot;, &quot;UX Developer&quot;, &quot;ios Developer&quot; ]"><span class="wrap">Design</span></span></h1>
                            <p class="para-desc mx-auto text-muted">Huge community of designers and developers ready for your project.</p>
                            <form class="rounded p-4 mt-4 bg-white">
                                <div class="row text-start">
                                    <div class="col-lg-5 col-md-4">
                                        <div class="mb-0">
                                            <input type="text" class="form-control" required="" placeholder="Keywords">
                                        </div>
                                    </div><!--end col-->
                                    
                                    <div class="col-lg-7 col-md-8">
                                        <div class="row align-items-center">
                                            <div class="col-md-4 mt-4 mt-sm-0">
                                                <div class="mb-0">
                                                    <select class="form-control custom-select">
                                                        <option selected="">Location</option>
                                                        <option value="AF">Afghanistan</option>
                                                        <option value="AX">Åland Islands</option>
                                                        <option value="AL">Albania</option>
                                                        <option value="DZ">Algeria</option>
                                                        <option value="AS">American Samoa</option>
                                                        <option value="AD">Andorra</option>
                                                        <option value="AO">Angola</option>
                                                        <option value="AI">Anguilla</option>
                                                        <option value="AQ">Antarctica</option>
                                                    </select>
                                                </div>
                                            </div><!--end col-->
                                            
                                            <div class="col-md-4 mt-4 mt-sm-0">
                                                <div class="mb-0">
                                                    <select class="form-control custom-select">
                                                        <option selected="">Job Types</option>
                                                        <option value="4">Accounting</option>
                                                        <option value="1">IT &amp; Software</option>
                                                        <option value="3">Marketing</option>
                                                        <option value="5">Banking</option>
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
				<div class="row">
				<div class="col-lg-12 col-md-4 col-12 mt-4 pt-2">
					<div class="row" id="counter">
						<div class="col-md-4 col-6 mt-4 pt-2">
							<div class="counter-box text-center">
								<img src="<%=request.getContextPath() %>/images/illustrator/Asset190.svg"
									class="avatar avatar-small" alt="">
								<h2 class="mb-0 mt-4">
									<span class="counter-value" data-target="15">15</span>
								</h2>
								<h6 class="counter-head text-muted">지원자수</h6>
							</div>
							<!--end counter box-->
						</div>

						<div class="col-md-4 col-6 mt-4 pt-2">
							<div class="counter-box text-center">
								<img src="<%=request.getContextPath() %>/images/illustrator/Asset189.svg"
									class="avatar avatar-small" alt="">
								<h2 class="mb-0 mt-4">
									<span class="counter-value" data-target="195">195</span>
								</h2>
								<h6 class="counter-head text-muted">조회수</h6>
							</div>
							<!--end counter box-->
						</div>

						<div class="col-md-3 col-6 mt-4 pt-2">
							<div class="counter-box text-center">
								<img src="<%=request.getContextPath() %>/images/illustrator/Asset187.svg"
									class="avatar avatar-small" alt="">
								<h2 class="mb-0 mt-4">
									<span class="counter-value" data-target="98">98</span>
								</h2>
								<h6 class="counter-head text-muted">미열람 이력서</h6>
							</div>
							<!--end counter box-->
						</div>
					</div>
				</div>
				<!--end col-->
				
				<div class="col-lg-6 col-md-4 col-12 mt-4 pt-2">
                         <div id="donutchart" style="width: 700px; height: 300px;"></div>
                    </div><!--end col-->
                    <div class="col-lg-6 col-md-4 col-12 mt-4 pt-2">
                         <div id="columnchart_values" style="width: 400px; height: 400px;"></div>
                    </div><!--end col-->
                    
                    <div class="col-lg-6 col-md-4 col-12 mt-4 pt-2">
                         <div class="sticky-bar work-detail p-4 rounded shadow">
                            <h6 class="title pb-3 border-bottom">업데이트된 인재를 확인하세요!</h6>
                        <div class="table-responsive bg-white shadow-md rounded-md">
                            <table class="table mb-0 table-center">
                                <thead>
                                    <tr>
                                        <th scope="col" class="border-bottom" style="width: 100px;">No</th>
                                        <th scope="col" class="border-bottom" style="width: 100px;">Name</th>
                                        <th scope="col" class="border-bottom" style="width: 100px;">지원일</th>
                                        <th scope="col" class="border-bottom" style="width: 100px;">채용공고</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>김민지</td>
                                        <td class="text-success">21.07.07</td>
                                        <td>IT WEB개발</td>
                                    </tr>
                                    
                                    <tr>
                                        <td>2</td>
                                        <td>공슬기</td>
                                        <td class="text-success">21.07.07</td>
                                        <td>IT WEB개발</td>
                                    </tr>
                                    
                                    <tr>
                                        <td>3</td>
                                        <td>서주형</td>
                                        <td class="text-success">21.07.07</td>
                                        <td>IT WEB개발</td>
                                    </tr>
                                    
                                    <tr>
                                        <td>4</td>
                                        <td>강건우</td>
                                       <td class="text-success">21.07.07</td>
                                        <td>IT WEB개발</td>
                                    </tr>
                                    
                                    <tr>
                                        <td>5</td>
                                        <td>최영준</td>
                                        <td class="text-success">21.07.07</td>
                                        <td>IT WEB개발</td>
                                    </tr>
                                </tbody>
                            </table><!--end table-->
                        </div>

                        <div class="mt-4 pt-2 text-center">
                            <a href="javascript:void(0)" class="text-primary h6">공고 지원자 관리 <i class="uil uil-angle-right-b align-middle"></i></a>
                        </div>
                    </div>
                    </div><!--end col-->
                    
                    <div class="col-lg-6 col-md-4 col-12 mt-4 pt-2">
                       <div class="sticky-bar work-detail p-4 rounded shadow">
                            <h6 class="title pb-3 border-bottom">JobStick님의 진행중인 채용은 
                            <span style="font-size:2.0em; color: blue;">3</span>건입니다.</h6>
                            <br><br><br>
						<table class="table mb-0 table-center" border="0">
							<tr>
								<th>진행중인 채용공고</th>
								<th>3</th>
							</tr>
							<tr>
								<th>대기중인 채용공고</th>
								<th>3</th>
							</tr>
							<tr>
								<th>오늘마감 채용공고</th>
								<th>0</th>
							</tr>
						</table>
						<br><br><br>
						<!--end table-->
                            <div class="mt-4 pt-2 text-center">
                            <a href="javascript:void(0)" class="text-primary h6">채용공고관리<i class="uil uil-angle-right-b align-middle"></i></a>
                        </div>   
                        </div>
                    </div><!--end col-->
                    <div class="col-12">
                        <div class="text-center mt-4 pt-2">
                            <a href="javascript:void(0)" class="btn btn-primary">채용공고등록<i class="uil uil-arrow-right align-middle"></i></a>
                        </div>
                    </div><!--end col-->
                </div>
                  
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

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card job-box rounded shadow border-0 overflow-hidden">
                            <div class="border-bottom">
                                <div class="position-relative">
                                    <img src="<%=request.getContextPath() %>/images/job/full.jpg" class="img-fluid" alt="">
                                    <div class="job-overlay bg-white"></div>
                                </div>
                                <div class="mb-0 position"><a href="page-job-detail.html" class="text-dark h5">직무</a>
                                </div>
                                <ul class="list-unstyled head mb-0">
                                    <li class="badge bg-success rounded-pill">마감일 (~ 07/29)</li>
                                </ul>
                            </div>
                            
                            <div class="card-body content position-relative">
                                <div class="firm-logo rounded-circle shadow bg-light text-center">
                                    <img src="<%=request.getContextPath() %>/images/job/Circleci.svg" class="avatar avatar-md-sm" alt="">
                                </div>
                                <div class="company-detail text-center mt-3">
                                    <h5 class="mb-0"><a href="page-job-company.html" class="text-dark company-name">CircleCi</a></h5>
                                    <p class="text-muted"><a href="#" class="text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin fea icon-sm"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg> 근무지역 (대전 중구 대흥동 )</a></p>
                                </div>
                                <ul class="job-facts list-unstyled">
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg> 경력여부 (신입)</li><br>
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg> 근무형태 (정규직)</li>
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg> 근무시간 (오전 9시 ~ 오후 6시)</li>
                                </ul>
                                <div class="d-grid">
                                    <a href="page-job-detail.html" class="btn btn-outline-primary">입사지원</a>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card job-box rounded shadow border-0 overflow-hidden">
                            <div class="border-bottom">
                                <div class="position-relative">
                                    <img src="<%=request.getContextPath() %>/images/job/full.jpg" class="img-fluid" alt="">
                                    <div class="job-overlay bg-white"></div>
                                </div>
                                <div class="mb-0 position"><a href="page-job-detail.html" class="text-dark h5">Web Developer</a>
                                    <ul class="list-unstyled h6 mb-0 text-warning">
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>                                    
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>                                    
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>                                    
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>                                    
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>
                                    </ul>
                                </div>
                                <ul class="list-unstyled head mb-0">
                                    <li class="badge bg-success rounded-pill">Full Time</li>
                                </ul>
                            </div>
                            
                            <div class="card-body content position-relative">
                                <div class="firm-logo rounded-circle shadow bg-light text-center">
                                    <img src="<%=request.getContextPath() %>/images/job/Codepen.svg" class="avatar avatar-md-sm" alt="">
                                </div>
                                <div class="company-detail text-center mt-3">
                                    <h5 class="mb-0"><a href="page-job-company.html" class="text-dark company-name">Codepen</a></h5>
                                    <p class="text-muted"><a href="#" class="text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin fea icon-sm"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg> San Francisco</a></p>
                                </div>
                                <ul class="job-facts list-unstyled">
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg> 2 Year Expirence</li>
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg> Working Hours- 6hr</li>
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg> Information strategy</li>
                                </ul>
                                <div class="d-grid">
                                    <a href="page-job-detail.html" class="btn btn-outline-primary">입사지원</a>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card job-box rounded shadow border-0 overflow-hidden">
                            <div class="border-bottom">
                                <div class="position-relative">
                                    <img src="<%=request.getContextPath() %>/images/job/part.jpg" class="img-fluid" alt="">
                                    <div class="job-overlay bg-white"></div>
                                </div>
                                <div class="mb-0 position"><a href="page-job-detail.html" class="text-dark h5">UX Designer</a>
                                    <ul class="list-unstyled h6 mb-0 text-warning">
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>                                    
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>                                    
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>                                    
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>                                    
                                        <li class="list-inline-item mb-0"><i class="mdi mdi-star"></i></li>
                                    </ul>
                                </div>
                                <ul class="list-unstyled head mb-0">
                                    <li class="badge bg-warning rounded-pill">Part Time</li>
                                </ul>
                            </div>
                            
                            <div class="card-body content position-relative">
                                <div class="firm-logo rounded-circle shadow bg-light text-center">
                                    <img src="<%=request.getContextPath() %>/images/job/Discord.svg" class="avatar avatar-md-sm" alt="">
                                </div>
                                <div class="company-detail text-center mt-3">
                                    <h5 class="mb-0"><a href="page-job-company.html" class="text-dark company-name">Discord</a></h5>
                                    <p class="text-muted"><a href="#" class="text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin fea icon-sm"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg> San Francisco</a></p>
                                </div>
                                <ul class="job-facts list-unstyled">
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg> 2 Year Expirence</li>
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg> Working Hours- 6hr</li>
                                    <li class="list-inline-item text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check fea icon-sm text-success me-1"><polyline points="20 6 9 17 4 12"></polyline></svg> Information strategy</li>
                                </ul>
                                <div class="d-grid">
                                    <a href="page-job-detail.html" class="btn btn-outline-primary">입사지원</a>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

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
	<!-- Back to top -->
	<a href="#" onclick="topFunction()" id="back-to-top"
		class="btn btn-icon btn-primary back-to-top" style="display: none;"><svg
			xmlns="http://www.w3.org/2000/svg" width="24" height="24"
			viewBox="0 0 24 24" fill="none" stroke="currentColor"
			stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
			class="feather feather-arrow-up icons">
			<line x1="12" y1="19" x2="12" y2="5"></line>
			<polyline points="5 12 12 5 19 12"></polyline></svg></a>
	<!-- Back to top -->



	<!-- javascript -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- SLIDER -->
	<script src="js/tiny-slider.js "></script>
	<!-- Icons -->
	<script src="js/feather.min.js"></script>
	<!-- Main Js -->
	<script src="js/plugins.init.js"></script>
	<style type="text/css">
.typewrite>.wrap {
	border-right: 0.08em solid transparent
}
</style>
	<!--Note: All init js like tiny slider, counter, countdown, maintenance, lightbox, gallery, swiper slider, aos animation etc.-->
	<script src="js/app.js"></script>
	<!--Note: All important javascript like page loader, menu, sticky menu, menu-toggler, one page menu etc. -->

</body>
</html>