<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>JOBSTICK - IT교육에 모든 것!</title>
<!-- Hero Start -->
	<section class="bg-half-170 d-table w-100">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6">
					<div class="title-heading mt-4">
						<h1 class="display-4 fw-bold mb-3">
							IT교육 통합검색<br>
						</h1>
						<p class="para-desc text-muted">
						NCS 기반으로 구성된 IT분야의 훈련과정을 검색해보세요!
						</p>
					</div>

					<div class="subcribe-form mt-4 pt-2">
						<form>
							<input type="text" id="search" name="search"
								class="border bg-white rounded-pill" required=""
								placeholder="IT분야, 교육과정, 교육기관 등을 검색하세요">
							<button type="submit" class="btn btn-pills btn-primary">Search</button>
						</form>
						<!--end form-->
					</div>

<!-- 					<div class="form-check mt-3"> -->
<!-- 						<input class="form-check-input" type="checkbox" value="" -->
<!-- 							id="flexCheckDefault"> <label class="form-check-label" -->
<!-- 							for="flexCheckDefault">I Accept <a href="#" -->
<!-- 							class="text-primary">Terms And Condition</a></label> -->
<!-- 					</div> -->
				</div>
				<!--end col-->

				<div class="col-md-6">
					<img src="<%=request.getContextPath() %>/resources/landrick/images/illustrator/Startup_SVG.svg" alt="">
				</div>
				<!--end col-->
			</div>
			<!--end row-->
		</div>
		<!--end container-->
	</section>
	<!-- Hero End -->

	<!-- 빠른메뉴 Start -->
	<section class="section bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <div class="card features fea-primary rounded p-4 bg-white position-relative overflow-hidden border-0">
                            <span class="h1 icon2 text-primary">
                                <i class="uil uil-newspaper"></i>
                            </span>
                            <div class="card-body p-0 content">
                                <h3>맞춤검색</h3>
                                <p class="para text-muted mb-0">
								처음이신가요? 당신을 위한 IT교육을 추천해드립니다!
                                </p>

<%--                                 <a href="<%=request.getContextPath() %>/common/home/survey/list.do"  --%>
<!--                                 class="btn btn-pills btn-soft-success mt-4">GO</a> -->
                                <a href="#" onclick="OpenWindow('https://doda.app/quiz/WXjO9y1pCi','맞춤검색',500,800);" 
                                class="btn btn-pills btn-soft-success mt-4">GO</a>
                            </div>
                        </div>
                    </div><!--end col-->
                    
                    <div class="col-lg-3 col-md-6 col-12 mt-4 pt-2 mt-sm-0 pt-sm-0">
                        <div class="card features fea-primary rounded p-4 bg-white position-relative overflow-hidden border-0">
                            <span class="h1 icon2 text-primary">
                                <i class="uil uil-clock"></i>
                            </span>
                            <div class="card-body p-0 content">
                                <h3>입학상담</h3>
                                <p class="para text-muted mb-0">
                                	입학을 위한 상담이 필요하신가요?
                                	<br>
                                </p>
                                <a href="<%=request.getContextPath() %>/webmember/home/consult/registForm.do" 
                                class="btn btn-pills btn-soft-success mt-4">GO</a>
                            </div>
                        </div>
                    </div><!--end col-->
                    
                    <div class="col-lg-3 col-md-6 col-12 mt-4 mt-lg-0 pt-2 pt-lg-0">
                        <div class="card features fea-primary rounded p-4 bg-white position-relative overflow-hidden border-0">
                            <span class="h1 icon2 text-primary">
                                <i class="uil uil-user-md"></i>
                            </span>
                            <div class="card-body p-0 content">
                            <h3>수강후기</h3>
                                <p class="para text-muted mb-0">
                                	수료생들의 생생한 후기를 들려드립니다!
                               <br>
                                </p>

                                <a href="<%=request.getContextPath() %>/common/home/review/list.do" 
                                class="btn btn-pills btn-soft-success mt-4">GO</a>
                            </div>
                        </div>
                    </div><!--end col-->
                    
                    <div class="col-lg-3 col-md-6 col-12 mt-4 mt-lg-0 pt-2 pt-lg-0">
                        <div class="card features fea-primary rounded p-4 bg-white position-relative overflow-hidden border-0">
                            <span class="h1 icon2 text-primary">
                                <i class="uil uil-map-marker"></i>
                            </span>
                            <div class="card-body p-0 content">
                                <h3>채용정보</h3>
                                <p class="para text-muted mb-0">
                                IT최신 채용정보를 한 눈에!<br><br>
                                </p>

                                <a href="<%=request.getContextPath() %>/common/home/job/list.do" 
                                class="btn btn-pills btn-soft-success mt-4">GO</a>
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section>
	<!-- 빠른메뉴 end -->
	
	
	<!--  회사소개 start -->
	<div class="container mt-100 mt-60">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6">
                    	<img src="<%=request.getContextPath() %>/resources/landrick/images/illustrator/app_development_SVG.svg" alt="">
<!--                         <img src="images/saas/classic02.png" class="img-fluid shadow rounded" alt=""> -->
                    </div><!--end col-->

                    <div class="col-lg-6 col-md-6 mt-4 mt-sm-0 pt-2 pt-sm-0">
                        <div class="section-title ms-lg-5">
                            <h4 class="title mb-4">
                            <img src="<%=request.getContextPath() %>/resources/landrick/img/logo2.png" width="400" alt="">
                            </h4>
                            <p class="text-muted">
							본원은 그간의 풍부한 전문인력양성 경험과 최상의 커리큘럼 및 강사진, 
							현장실습 인프라를 바탕으로 수요자 중심의 현장 맞춤형 교육과 미래형 최첨단 
							디지털 교육을 확대 실시하여 S/W융합 패러다임의 시대를 열어가는 전문교육기관으로서
							 여러분에게 꿈과 희망을 드리도록 최선을 다할 것입니다.
                            </p>
                            <ul class="list-unstyled text-muted">
                                <li class="mb-0"><span class="text-primary h5 me-2"><i class="uil uil-check-circle align-middle"></i></span>풍부한 전문인력양성 경험</li>
                                <li class="mb-0"><span class="text-primary h5 me-2"><i class="uil uil-check-circle align-middle"></i></span>최상의 커리큘럼 및 강사진</li>
                                <li class="mb-0"><span class="text-primary h5 me-2"><i class="uil uil-check-circle align-middle"></i></span>현장실습 인프라</li>
                            </ul>
                            <a href="<%=request.getContextPath() %>/common/home/search/list.do" class="mt-3 h6 text-primary">교육과정 보기<i class="uil uil-angle-right-b"></i></a>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div>
	<!-- 회사소개 end -->
	
	<!-- 과정 Start -->
<section class="section" id="courses">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="section-title mb-4 pb-2">
                            <h4 class="title mb-4">모집중인 IT교육과정 </h4>
                            <p class="text-muted para-desc mx-auto mb-0">
                            	현재 모집중인 
                            <span class="text-primary fw-bold">IT교육과정</span>
                             	을 확인하실 수 있습니다.
                            </p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card courses-desc overflow-hidden rounded shadow border-0">
                            <div class="position-relative d-block overflow-hidden">
                                <img src="<%=request.getContextPath() %>/resources/landrick/images/course/1.jpg" class="img-fluid rounded-top mx-auto" alt="">
                                <div class="overlay-work bg-dark"></div>
                                <a href="javascript:void(0)" class="text-white h6 preview">Preview Now <i class="uil uil-angle-right-b align-middle"></i></a>
                            </div>

                            <div class="card-body">
                                <h5><a href="javascript:void(0)" class="title text-dark">Program for Missionaries</a></h5>
                                <div class="rating">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item">5 Star (3 <i class="uil uil-user text-muted small"></i>)</li>
                                    </ul>
                                </div>
                                <div class="fees d-flex justify-content-between">
                                    <ul class="list-unstyled mb-0 numbers">
                                        <li><i class="uil uil-graduation-cap text-muted"></i> 30 Students</li>
                                        <li><i class="uil uil-notebooks text-muted"></i> 5 Lession</li>
                                    </ul>
                                    <h4><span class="h6">$</span>75</h4>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->
                    
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card courses-desc overflow-hidden rounded shadow border-0">
                            <div class="position-relative d-block overflow-hidden">
                                <img src="<%=request.getContextPath() %>/resources/landrick/images/course/2.jpg" class="img-fluid rounded-top mx-auto" alt="">
                                <div class="overlay-work bg-dark"></div>
                                <a href="javascript:void(0)" class="text-white h6 preview">Preview Now <i class="uil uil-angle-right-b align-middle"></i></a>
                            </div>

                            <div class="card-body">
                                <h5><a href="javascript:void(0)" class="title text-dark">Access to Higher Education</a></h5>
                                <div class="rating">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star-outline h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item">3.99 Star (11 <i class="uil uil-user text-muted small"></i>)</li>
                                    </ul>
                                </div>
                                <div class="fees d-flex justify-content-between">
                                    <ul class="list-unstyled mb-0 numbers">
                                        <li><i class="uil uil-graduation-cap text-muted"></i> 30 Students</li>
                                        <li><i class="uil uil-notebooks text-muted"></i> 5 Lession</li>
                                    </ul>
                                    <h4><span class="h6">$</span>150</h4>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->
                    
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card courses-desc overflow-hidden rounded shadow border-0">
                            <div class="position-relative d-block overflow-hidden">
                                <img src="<%=request.getContextPath() %>/resources/landrick/images/course/3.jpg" class="img-fluid rounded-top mx-auto" alt="">
                                <div class="overlay-work bg-dark"></div>
                                <a href="javascript:void(0)" class="text-white h6 preview">Preview Now <i class="uil uil-angle-right-b align-middle"></i></a>
                            </div>

                            <div class="card-body">
                                <h5><a href="javascript:void(0)" class="title text-dark">Course in TEFL Teacher Training</a></h5>
                                <div class="rating">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star-half h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item">4.7 Star (9 <i class="uil uil-user text-muted small"></i>)</li>
                                    </ul>
                                </div>
                                <div class="fees d-flex justify-content-between">
                                    <ul class="list-unstyled mb-0 numbers">
                                        <li><i class="uil uil-graduation-cap text-muted"></i> 30 Students</li>
                                        <li><i class="uil uil-notebooks text-muted"></i> 5 Lession</li>
                                    </ul>
                                    <h4><span class="h6">$</span>175</h4>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card courses-desc overflow-hidden rounded shadow border-0">
                            <div class="position-relative d-block overflow-hidden">
                                <img src="<%=request.getContextPath() %>/resources/landrick/images/course/4.jpg" class="img-fluid rounded-top mx-auto" alt="">
                                <div class="overlay-work bg-dark"></div>
                                <a href="javascript:void(0)" class="text-white h6 preview">Preview Now <i class="uil uil-angle-right-b align-middle"></i></a>
                            </div>

                            <div class="card-body">
                                <h5><a href="javascript:void(0)" class="title text-dark">Educational Communication</a></h5>
                                <div class="rating">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item">5 Star (3 <i class="uil uil-user text-muted small"></i>)</li>
                                    </ul>
                                </div>
                                <div class="fees d-flex justify-content-between">
                                    <ul class="list-unstyled mb-0 numbers">
                                        <li><i class="uil uil-graduation-cap text-muted"></i> 30 Students</li>
                                        <li><i class="uil uil-notebooks text-muted"></i> 5 Lession</li>
                                    </ul>
                                    <h4><span class="h6">$</span>22</h4>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card courses-desc overflow-hidden rounded shadow border-0">
                            <div class="position-relative d-block overflow-hidden">
                                <img src="<%=request.getContextPath() %>/resources/landrick/images/course/5.jpg" class="img-fluid rounded-top mx-auto" alt="">
                                <div class="overlay-work bg-dark"></div>
                                <a href="javascript:void(0)" class="text-white h6 preview">Preview Now <i class="uil uil-angle-right-b align-middle"></i></a>
                            </div>

                            <div class="card-body">
                                <h5><a href="javascript:void(0)" class="title text-dark">Introduction to Epidemiology</a></h5>
                                <div class="rating">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item">5 Star (3 <i class="uil uil-user text-muted small"></i>)</li>
                                    </ul>
                                </div>
                                <div class="fees d-flex justify-content-between">
                                    <ul class="list-unstyled mb-0 numbers">
                                        <li><i class="uil uil-graduation-cap text-muted"></i> 30 Students</li>
                                        <li><i class="uil uil-notebooks text-muted"></i> 5 Lession</li>
                                    </ul>
                                    <h4><span class="h6">$</span>100</h4>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card courses-desc overflow-hidden rounded shadow border-0">
                            <div class="position-relative d-block overflow-hidden">
                                <img src="<%=request.getContextPath() %>/resources/landrick/images/course/6.jpg" class="img-fluid rounded-top mx-auto" alt="">
                                <div class="overlay-work bg-dark"></div>
                                <a href="javascript:void(0)" class="text-white h6 preview">Preview Now <i class="uil uil-angle-right-b align-middle"></i></a>
                            </div>

                            <div class="card-body">
                                <h5><a href="javascript:void(0)" class="title text-dark">Good Clinical Practice</a></h5>
                                <div class="rating">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star-outline h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item">4 Star (2 <i class="uil uil-user text-muted small"></i>)</li>
                                    </ul>
                                </div>
                                <div class="fees d-flex justify-content-between">
                                    <ul class="list-unstyled mb-0 numbers">
                                        <li><i class="uil uil-graduation-cap text-muted"></i> 30 Students</li>
                                        <li><i class="uil uil-notebooks text-muted"></i> 5 Lession</li>
                                    </ul>
                                    <h4><span class="h6">$</span>110</h4>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card courses-desc overflow-hidden rounded shadow border-0">
                            <div class="position-relative d-block overflow-hidden">
                                <img src="<%=request.getContextPath() %>/resources/landrick/images/course/7.jpg" class="img-fluid rounded-top mx-auto" alt="">
                                <div class="overlay-work bg-dark"></div>
                                <a href="javascript:void(0)" class="text-white h6 preview">Preview Now <i class="uil uil-angle-right-b align-middle"></i></a>
                            </div>

                            <div class="card-body">
                                <h5><a href="javascript:void(0)" class="title text-dark">Advanced Diagnostic Research</a></h5>
                                <div class="rating">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star-half h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item">4.5 Star (8 <i class="uil uil-user text-muted small"></i>)</li>
                                    </ul>
                                </div>
                                <div class="fees d-flex justify-content-between">
                                    <ul class="list-unstyled mb-0 numbers">
                                        <li><i class="uil uil-graduation-cap text-muted"></i> 30 Students</li>
                                        <li><i class="uil uil-notebooks text-muted"></i> 5 Lession</li>
                                    </ul>
                                    <h4><span class="h6">$</span>149</h4>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card courses-desc overflow-hidden rounded shadow border-0">
                            <div class="position-relative d-block overflow-hidden">
                                <img src="<%=request.getContextPath() %>/resources/landrick/images/course/8.jpg" class="img-fluid rounded-top mx-auto" alt="">
                                <div class="overlay-work bg-dark"></div>
                                <a href="javascript:void(0)" class="text-white h6 preview">Preview Now <i class="uil uil-angle-right-b align-middle"></i></a>
                            </div>

                            <div class="card-body">
                                <h5><a href="javascript:void(0)" class="title text-dark">Skills Development Facilitation</a></h5>
                                <div class="rating">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item">5 Star (3 <i class="uil uil-user text-muted small"></i>)</li>
                                    </ul>
                                </div>
                                <div class="fees d-flex justify-content-between">
                                    <ul class="list-unstyled mb-0 numbers">
                                        <li><i class="uil uil-graduation-cap text-muted"></i> 30 Students</li>
                                        <li><i class="uil uil-notebooks text-muted"></i> 5 Lession</li>
                                    </ul>
                                    <h4><span class="h6">$</span>135</h4>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card courses-desc overflow-hidden rounded shadow border-0">
                            <div class="position-relative d-block overflow-hidden">
                                <img src="<%=request.getContextPath() %>/resources/landrick/images/course/9.jpg" class="img-fluid rounded-top mx-auto" alt="">
                                <div class="overlay-work bg-dark"></div>
                                <a href="javascript:void(0)" class="text-white h6 preview">Preview Now <i class="uil uil-angle-right-b align-middle"></i></a>
                            </div>

                            <div class="card-body">
                                <h5><a href="javascript:void(0)" class="title text-dark">PGCE Primary</a></h5>
                                <div class="rating">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star h5 mb-0 text-warning"></i></li>
                                        <li class="list-inline-item">5 Star (3 <i class="uil uil-user text-muted small"></i>)</li>
                                    </ul>
                                </div>
                                <div class="fees d-flex justify-content-between">
                                    <ul class="list-unstyled mb-0 numbers">
                                        <li><i class="uil uil-graduation-cap text-muted"></i> 30 Students</li>
                                        <li><i class="uil uil-notebooks text-muted"></i> 5 Lession</li>
                                    </ul>
                                    <h4><span class="h6">$</span>55</h4>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-12 mt-4 pt-2 text-center">
                        <a href="javascript:void(0)" class="btn btn-primary">See More Courses <i class="uil uil-angle-right-b align-middle"></i></a>
                    </div>
                </div><!--end row-->
            </div><!--end container-->


        </section>
	<!-- 과정 end -->