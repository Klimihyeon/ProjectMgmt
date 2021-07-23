<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<title>JOBSTICK - NCS분류체계</title>
<%@ include file="/WEB-INF/views/include/home/main_header_home2.jsp"%>

<!-- Hero Start -->
<section class="bg-half d-table w-100"
	style="background: url('<%=request.getContextPath()%>/resources/landrick/images/company/aboutus.jpg');">
	<div class="bg-overlay"></div>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-12 text-center">
				<div class="page-next-level title-heading">
					<h1 class="text-white title-dark">IT정보</h1>
					<p class="text-white-50 para-desc mb-0 mx-auto">IT에 관련된 여러 정보를
						확인할 수 있습니다.</p>

					<!-- page -->
					<div class="page-next">
						<nav aria-label="breadcrumb" class="d-inline-block">
							<ul class="breadcrumb bg-white rounded shadow mb-0">
								<li class="breadcrumb-item"><a href="index.html">JOBSTICK</a></li>
								<li class="breadcrumb-item active" aria-current="page">IT-INFO</li>
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
		<svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
        </svg>
	</div>
</div>
<!-- Hero End -->


<!-- 내가 만드는데 시작  -->
<section class="section">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="border-bottom pb-4">
					<div class="row">
						<div class="section-title">
							<h1 class="title mb-2 text-center">NCS(국가직무능력표준)이란?</h1>
							<p class="text-muted  text-center mb-0">산업현장에서 직무를 수행하는 데 필요한
								능력(지식, 기술, 태도)을 국가가 표준화한 것입니다. 교육훈련 ‧ 자격에 NCS를 활용하여 현장중심의 인재를
								양성할 수 있도록 지원하고 있습니다.</p>
						</div>
						<!--end col-->

					</div>
				</div>
			</div>
		</div>
		
		<div class="col mt-4 pt-2" id="nav-tabs">
		<div class="component-wrapper rounded shadow">

			<div class="p-4">
				<div class="row">
					<div class="col-lg-12">
						<ul class="nav nav-pills nav-justified flex-column flex-sm-row rounded active" id="pills-tab" role="tablist">
							<li class="nav-item"><a class="nav-link rounded"
								id="pills-cloud-tab" data-bs-toggle="pill" href="#pills-cloud"
								role="tab" aria-controls="pills-cloud" aria-selected="false">
									<div class="text-center py-2">
										<h6 class="mb-0">분류</h6>
									</div>
							</a>
							</li>
							<!--end nav link-->
							
							<!--end nav item-->

							<li class="nav-item"><a class="nav-link rounded"
								id="pills-smart-tab" data-bs-toggle="pill" href="#pills-smart"
								role="tab" aria-controls="pills-smart" aria-selected="false">
									<div class="text-center py-2">
										<h6 class="mb-0">About</h6>
									</div>
							</a>
							<!--end nav link--></li>
							<!--end nav item-->

							<li class="nav-item"><a class="nav-link rounded "
								id="pills-apps-tab" data-bs-toggle="pill" href="#pills-apps"
								role="tab" aria-controls="pills-apps" aria-selected="true">
									<div class="text-center py-2">
										<h6 class="mb-0">연혁</h6>
									</div>
							</a>
							<!--end nav link--></li>
							<!--end nav item-->
						</ul>
						<!--end nav pills-->
					</div>
					<!--end col-->
				</div>
				<!--end row-->

					<div class="row pt-2">
						<div class="col-12">
							<div class="tab-content" id="pills-tabContent">
								<div class="tab-pane fade" id="pills-cloud" role="tabpanel"
									aria-labelledby="pills-cloud-tab">
									<div class="text-muted mb-0 text-center">
										<p class="text-muted">국가직무능력표준의 분류는 직무의 유형(Type)을 중심으로
											국가직무능력표준의 단계적 구성을<br> 나타내는 것으로, 국가직무능력표준 개발의 전체적인 로드맵을 제시.</p>
										<p class="text-muted">한국고용직업분류(KECO: Korean Employment
											Classification of Occupations) 등을 참고하여 분류하였으며<br> ‘대분류(24) →
											중분류(80) → 소분류(257) → 세분류(1,022개)’의 순으로 구성.</p>
										<p class="text-muted">분류 마련을 위해 직업분류, 산업분류 및 자격분류 전문가,
											해당산업<br> 분야 전문가 대상 의견수렴 방법을 통해 직종구조분석 시행</p>

										<ul class="list-unstyled d-flex justify-content-between mt-4">
											<li class="list-inline-item user me-2"><i
												class="uil uil-user text-dark"></i> 정보통신-정보기술개발분야 (분류예시)</li>

										</ul>

										<img src="images/blog/bg1.jpg"
											class="img-fluid rounded-md shadow" alt=""> <br> <br>
										<br>

										<div class="col-md-10">

											<h2>직업기초능력 영역</h2>
											<h3>국가직무능력표준 분류도(예시)</h3>
											<table class="table_base textTypeC">
												<caption>직업기초능력영역과 하위능력으로 구성된 작업기초 능력영역 데이터입니다.</caption>
												<colgroup>
													<col width="250px">
													<col width="auto">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">직업기초능력 영역</th>
														<th scope="col">하위능력</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th scope="row">의사소통능력</th>
														<td class="ta_l">문서이해능력, 문서작성능력, 경청능력, 의사표현능력,
															기초외국어능력</td>
													</tr>
													<tr>
														<th scope="row">수리능력</th>
														<td class="ta_l">기초연산능력, 기초통계능력, 도표분석능력, 도표작성능력</td>
													</tr>
													<tr>
														<th scope="row">문제해결능력</th>
														<td class="ta_l">사고력, 문제처리능력</td>
													</tr>
													<tr>
														<th scope="row">자기개발능력</th>
														<td class="ta_l">자아인식능력, 자기관리능력, 경력개발능력</td>
													</tr>
													<tr>
														<th scope="row">자원관리능력</th>
														<td class="ta_l">시간관리능력, 예산관리능력, 물적자원관리능력, 인적자원관리능력</td>
													</tr>
													<tr>
														<th scope="row">대인관계능력</th>
														<td class="ta_l">팀웍능력, 리더십능력, 갈등관리능력, 협상능력, 고객서비스능력</td>
													</tr>
													<tr>
														<th scope="row">정보능력</th>
														<td class="ta_l">컴퓨터활용능력, 정보처리능력</td>
													</tr>
													<tr>
														<th scope="row">기술능력</th>
														<td class="ta_l">기술이해능력, 기술선택능력, 기술적용능력</td>
													</tr>
													<tr>
														<th scope="row">조직이해능력</th>
														<td class="ta_l">국제감각, 조직체제이해능력, 경영이해능력, 업무이해능력</td>
													</tr>
													<tr>
														<th scope="row">직업윤리</th>
														<td class="ta_l">근로윤리, 공동체윤리</td>
													</tr>
												</tbody>
											</table>
										</div>
										<!-- 1컬럼 끝입니다요-->

										<!-- 직업기초 능력 영역 시작입니다요-->
										<div class="col-md-10">

											<h2 class="con_sectionTit">세부 분류기준</h2>
											<table class="table_base textTypeC">
												<caption>분류와 하위능력으로 구성된 세부분류기준 테이블</caption>
												<colgroup>
													<col width="200px">
													<col width="auto">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">분류</th>
														<th scope="col">하위능력</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th scope="row">대분류</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>직능유형이 유사한 분야(한국고용직업분류 참조)</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">중분류</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>대분류 내에서 직능유형이 유사한 분야</li>
																<li>대분류 내에서 산업이 유사한 분야</li>
																<li>대분류 내에서 노동시장이 독립적으로 형성되거나 경력개발경로가 유사한 분야</li>
																<li>중분류 수준에서 산업별인적자원개발협의체(SC)가 존재하는 분야</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">소분류</th>
														<td class="ta_l">
															<ul class="">
																<li>중분류 내에서 직능유형이 유사한 분야</li>
																<li>소분류 수준에서 산업별인적자원개발협의체(SC)가 존재하는 분야</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">세분류</th>
														<td class="">
															<ul class="">
																<li>소분류 내에서 직능유형이 유사한 분야</li>
																<li>한국고용직업분류의 직업 중 대표 직무</li>
															</ul>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="col-md-10">
											<h2 class="con_sectionTit dp_iblock">국가직무능력표준 분류</h2>
											<table class="table_base textTypeC">
												<caption>대분류, 중분류, 소분류, 세분류로 구성된 국가직무능력표준 분류 데이터</caption>
												<colgroup>
													<col width="300px">
													<col width="auto">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">대분류</th>
														<th scope="col">중분류</th>
														<th scope="col">소분류</th>
														<th scope="col">세분류</th>
													</tr>
													<tr>
														<th scope="col">24개</th>
														<th scope="col">81개</th>
														<th scope="col">261개</th>
														<th scope="col">1,039개</th>
													</tr>
												</thead>
												<!-- <tfoot>
                            <tr>
                                <th scope="col">계</th>
                                <td class="ta_r">80개</td>
                                <td class="ta_r">257개</td>
                                <td class="ta_r">1,022개</td>
                            </tr>
                        </tfoot> -->
												<tbody>
													<tr>
														<th scope="row" class="ta_l">01. 사업관리</th>
														<td class="ta_r">1</td>
														<td class="ta_r">2</td>
														<td class="ta_r">5</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">02. 경영·회계·사무</th>
														<td class="ta_r">4</td>
														<td class="ta_r">11</td>
														<td class="ta_r">27</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">03. 금융·보험</th>
														<td class="ta_r">2</td>
														<td class="ta_r">9</td>
														<td class="ta_r">36</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">04. 교육·자연·사회과학</th>
														<td class="ta_r">2</td>
														<td class="ta_r">3</td>
														<td class="ta_r">8</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">05. 법률·경찰·소방·교도·국방</th>
														<td class="ta_r">2</td>
														<td class="ta_r">4</td>
														<td class="ta_r">16</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">06. 보건·의료</th>
														<td class="ta_r">1</td>
														<td class="ta_r">2</td>
														<td class="ta_r">11</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">07. 사회복지·종교</th>
														<td class="ta_r">3</td>
														<td class="ta_r">6</td>
														<td class="ta_r">17</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">08. 문화·예술·디자인·방송</th>
														<td class="ta_r">3</td>
														<td class="ta_r">9</td>
														<td class="ta_r">61</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">09. 운전·운송</th>
														<td class="ta_r">4</td>
														<td class="ta_r">8</td>
														<td class="ta_r">31</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">10. 영업판매</th>
														<td class="ta_r">3</td>
														<td class="ta_r">8</td>
														<td class="ta_r">18</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">11. 경비·청소</th>
														<td class="ta_r">2</td>
														<td class="ta_r">2</td>
														<td class="ta_r">4</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">12. 이용·숙박·여행·오락·스포츠</th>
														<td class="ta_r">4</td>
														<td class="ta_r">12</td>
														<td class="ta_r">46</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">13. 음식서비스</th>
														<td class="ta_r">1</td>
														<td class="ta_r">3</td>
														<td class="ta_r">10</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">14. 건설</th>
														<td class="ta_r">8</td>
														<td class="ta_r">28</td>
														<td class="ta_r">132</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">15. 기계</th>
														<td class="ta_r">11</td>
														<td class="ta_r">35</td>
														<td class="ta_r">136</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">16. 재료</th>
														<td class="ta_r">2</td>
														<td class="ta_r">8</td>
														<td class="ta_r">39</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">17. 화학·바이오(구.화학)</th>
														<td class="ta_r">5</td>
														<td class="ta_r">13</td>
														<td class="ta_r">42</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">18. 섬유·의복</th>
														<td class="ta_r">3</td>
														<td class="ta_r">8</td>
														<td class="ta_r">26</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">19. 전기·전자</th>
														<td class="ta_r">3</td>
														<td class="ta_r">34</td>
														<td class="ta_r">110</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">20. 정보통신</th>
														<td class="ta_r">3</td>
														<td class="ta_r">17</td>
														<td class="ta_r">102</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">21. 식품가공</th>
														<td class="ta_r">2</td>
														<td class="ta_r">4</td>
														<td class="ta_r">21</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">22. 인쇄·목재·가구·공예</th>
														<td class="ta_r">2</td>
														<td class="ta_r">4</td>
														<td class="ta_r">23</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">23. 환경·에너지·안전</th>
														<td class="ta_r">6</td>
														<td class="ta_r">18</td>
														<td class="ta_r">64</td>
													</tr>
													<tr>
														<th scope="row" class="ta_l">24. 농림어업</th>
														<td class="ta_r">4</td>
														<td class="ta_r">13</td>
														<td class="ta_r">54</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>

								</div>
								<!--end teb pane-->

								<div class="tab-pane fade" id="pills-smart" role="tabpanel"
									aria-labelledby="pills-smart-tab">
									<div class="text-muted mb-0 text-center">
									
										<p class="text-muted">직무는 국가직무능력표준 분류의 세분류를 의미하고, 원칙상 세분류
											단위에서 표준이 개발 됩니다.</p>
										<p class="text-muted">능력단위는 국가직무능력표준 분류의 하위단위로서 국가직무능력 표준의
											기본 구성요소에 해당 되며,<br> 능력단위요소(수행준거,지식·기술·태도), 적용범위 및 작업상황, 평가지침,
											직업기초능력으로 구성</p>

										<ul class="list-unstyled d-flex justify-content-between mt-4">
											<li class="list-inline-item user me-2"><i
												class="uil uil-user text-dark"></i> 국가직무능력표준 능력단위 구성</li>
											<h4>직무</h4>
											<ul>
												<li>1.능력단위
													<ul>
														<li>능력단위 요소
															<ul>
																<li>수행준거</li>
																<li>지식·기술·태도</li>
															</ul>
														</li>
														<li>적용범위 및 작업상황</li>
														<li>평가지침</li>
														<li>직업기초능력</li>
													</ul>
												</li>
												<li>2.능력단위
													<ul>
														<li>능력단위 요소
															<ul>
																<li>수행준거</li>
																<li>지식·기술·태도</li>
															</ul>
														</li>
														<li>적용범위 및 작업상황</li>
														<li>평가지침</li>
														<li>직업기초능력</li>
													</ul>
												</li>
											</ul>
										</ul>

										<div class="col-md-10">
											<h1>수준체계</h1>
											<ul class="icon_type1">
												<li>국가직무능력표준의 수준체계는 산업현장 직무의 수준을 체계화한 것으로,
													'산업현장·교육훈련·자격' 연계, 평생학습능력 성취 단계 제시, 자격의 수준체계 구성에서 활용합니다.</li>
												<li>국가직무능력표준 개발 시 8단계의 수준체계에 따라 능력단위 및 능력단위요소별 수준을 평정하여
													제시합니다.</li>
											</ul>
											<table class="table_base textTypeC">
												<caption>수준(1~8수준), 항목(정의, 지식기술, 역량, 경력), 내용으로 구성된
													수준체계 데이터입니다.</caption>
												<colgroup>
													<col width="100px">
													<col width="150px">
													<col width="auto">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">수준</th>
														<th scope="col">항목</th>
														<th scope="col">내용</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th scope="rowgroup" rowspan="4">8수준</th>
														<th scope="row">정의</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>해당분야에 대한 최고도의 이론 및 지식을 활용하여 새로운 이론을 창조할 수 있고,
																	최고도의 숙련으로 광범위한 기술적 작업을 수행할 수 있으며 조직 및 업무 전반에 대한 권한과 책임이
																	부여된 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">지식기술</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>해당분야에 대한 최고도의 이론 및 지식을 활용하여 새로운 이론을 창조할 수 있는 수준</li>
																<li>최고도의 숙련으로 광범위한 기술적 작업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">역량</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>조직 및 업무 전반에 대한 권한과 책임이 부여된 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">경력</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>수준7에서 2-4년 정도의 계속 업무 후 도달 가능한 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="rowgroup" rowspan="4">7수준</th>
														<th scope="row">정의</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>해당분야의 전문화된 이론 및 지식을 활용하여, 고도의 숙련으로 광범위한 작업을 수행할
																	수 있으며 타인의 결과에 대하여 의무와 책임이 필요한 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">지식기술</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>해당분야의 전문화된 이론 및 지식을 활용할 수 있으며, 근접분야의 이론 및 지식을
																	사용할 수 있는 수준</li>
																<li>고도의 숙련으로 광범위한 작업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">역량</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>타인의 결과에 대하여 의무와 책임이 필요한 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">경력</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>수준6에서 2-4년 정도의 계속 업무 후 도달 가능한 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="rowgroup" rowspan="4">6수준</th>
														<th scope="row">정의</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>독립적인 권한 내에서 해당분야의 이론 및 지식을 자유롭게 활용하고, 일반적인 숙련으로
																	다양한 과업을 수행하고, 타인에게 해당분야의 지식 및 노하우를 전달할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">지식기술</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>해당분야의 이론 및 지식을 자유롭게 활용할 수 있는 수준</li>
																<li>일반적인 숙련으로 다양한 과업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">역량</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>타인의 결과에 대하여 의무와 책임이 필요한 수준</li>
																<li>독립적인 권한 내에서 과업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">경력</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>수준5에서 1-3년 정도의 계속 업무 후 도달 가능한 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="rowgroup" rowspan="4">5수준</th>
														<th scope="row">정의</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>포괄적인 권한 내에서 해당분야의 이론 및 지식을 사용하여 매우 복잡하고 비일상적인
																	과업을 수행하고, 타인에게 해당분야의 지식을 전달할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">지식기술</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>해당분야의 이론 및 지식을 자유롭게 사용할 수 있는 수준</li>
																<li>매우 복잡하고 비일상적인 과업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">역량</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>타인에게 해당분야의 지식을 전달할 수 있는 수준</li>
																<li>매우 복잡하고 비일상적인 과업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">경력</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>수준4에서 1-3년 정도의 계속 업무 후 도달 가능한 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="rowgroup" rowspan="4">4수준</th>
														<th scope="row">정의</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>일반적인 권한 내에서 해당분야의 이론 및 지식을 제한적으로 사용하여 복잡하고 다양한
																	과업을 수행하는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">지식기술</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>해당분야의 이론 및 지식을 제한적으로 사용할 수 있는 수준</li>
																<li>복잡하고 다양한 과업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">역량</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>일반적인 권한 내에서 과업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">경력</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>수준3에서 1-4년 정도의 계속 업무 후 도달 가능한 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="rowgroup" rowspan="4">3수준</th>
														<th scope="row">정의</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>제한된 권한 내에서 해당분야의 기초이론 및 일반지식을 사용하여 다소 복잡한 과업을
																	수행하는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">지식기술</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>해당분야의 기초이론 및 일반지식을 사용할 수 있는 수준</li>
																<li>다소 복잡한 과업을 수행하는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">역량</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>제한된 권한 내에서 과업을 수행하는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">경력</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>수준2에서 1-3년 정도의 계속 업무 후 도달 가능한 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="rowgroup" rowspan="4">2수준</th>
														<th scope="row">정의</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>일반적인 지시 및 감독 하에 해당분야의 일반 지식을 사용하여 절차화되고 일상적인
																	과업을 수행하는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">지식기술</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>해당분야의 일반지식을 사용할 수 있는 수준</li>
																<li>절차화되고 일상적인 과업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">역량</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>일반적인 지시 및 감독 하에 과업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">경력</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>수준1에서 6-12개월 정도의 계속 업무 후 도달 가능한 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="rowgroup" rowspan="3">1수준</th>
														<th scope="row">정의</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>구체적인 지시 및 철저한 감독 하에 문자이해, 계산능력 등 기초적인 일반 지식을
																	사용하여 단순하고 반복적인 과업을 수행하는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">지식기술</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>문자이해, 계산능력 등 기초적인 일반 지식을 사용할 수 있는 수준</li>
																<li>단순하고 반복적인 과업을 수행할 수 있는 수준</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">역량</th>
														<td class="ta_l">
															<ul class="table_bulletList100">
																<li>구체적인 지시 및 철저한 감독 하에 과업을 수행하는 수준</li>
															</ul>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<!-- 1컬럼 끝입니다요-->

										<!-- 직업기초 능력 영역 시작입니다요-->
										<div class="col-md-10">

											<h2>분류번호 체계</h2>
											<ul class="icon_type1">
												<li>국가직무능력표준의 분류번호는 국가직무능력표준의 구성단위인 능력단위에 대한 식별번호로 대분류,
													중분류, 소분류, 세분류, 능력단위 및 개발연도로 구성 됩니다.
													<ul class="icon_type2 pb14">
														<li>대분류 : 대분류의 2자리 숫자(2digits)</li>
														<li>중분류 : 대분류 중 중분류의 2자리 숫자(2digits)</li>
														<li>소분류 : 중분류 중 소분류의 2자리 숫자(2digits)</li>
														<li>세분류 : 소분류 중 세분류의 2자리 숫자(2digits)</li>
														<li>능력단위 : 세분류 중 능력단위 연번으로 2자리 숫자(2digits)</li>
														<li>개발연도 : 능력단위 개발·보완 연도 2자리 숫자(2012년 → 12)로 작성하되, 앞의
															분류와 구분하기 위하여 "_"이후에 연도 기입</li>
														<li>버전 : 표준 개발 순서 2자리(첫번째 → v, 두번째 → 숫자)/(2digits)</li>
													</ul>
												</li>
											</ul>
											<div class="ncs_num">
												<p>
													<span class="txtBlue">0101010101_12v1</span>분류번호체계
												</p>
												<div class="data_table">
													<table class="table_base textTypeC">
														<caption>분류번호와 분류명으로 구성된 분류번호체계 데이터 샘플입니다.</caption>
														<colgroup>
															<col width="110px">
															<col width="110px">
															<col width="110px">
															<col width="110px">
															<col width="110px">
															<col width="110px">
															<col width="110px">
															<col width="110px">
														</colgroup>
														<thead>
															<tr>
																<th scope="col">01</th>
																<th scope="col">01</th>
																<th scope="col">01</th>
																<th scope="col">01</th>
																<th scope="col">01</th>
																<th scope="col">-</th>
																<th scope="col">12</th>
																<th scope="col">v1</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>대분류</td>
																<td>중분류</td>
																<td>소분류</td>
																<td>세분류</td>
																<td>능력단위</td>
																<td>-</td>
																<td>개발연도</td>
																<td>버전</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--end teb pane-->

								<div class="tab-pane fade active show" id="pills-apps"
									role="tabpanel" aria-labelledby="pills-apps-tab">
									<div class="text-muted col-lg-12">
                        <div class="main-icon rounded-pill text-primary text-center mt-4 pt-2">
                            <i data-feather="star" class="fea icon-md-sm"></i>
                        </div>
                        <div class="timeline-page pt-2 position-relative">
                        
                        	<div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-1 order-2">
                                        <div class="card event event-description-left rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Partnership</h5> -->
                                                <p class="mt-3 mb-0 text-muted">99년 국무조정실 자격제도 규제개혁 과제의 일환으로 '국가직업능력표준의 조기 개발·보급' 제시,</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-2 order-1">
                                        <div class="duration duration-right rounded border p-2 px-4 position-relative shadow text-start">1999</div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
                        
                            <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="duration date-label-left border rounded p-2 px-4 position-relative shadow">2002</div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card event event-description-right rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Founding</h5> -->
                                                <p class="mt-3 mb-0 text-muted">00년 노사정 합의에 따라 02년부터 표준 개발 착수</p>
                                                <p class="mt-3 mb-0 text-muted">고용노동부·한국산업인력공단 주관 국가직업능력표준(NOS:National Occupational Standards) 개발</p>
                                                <p class="mt-3 mb-0 text-muted">교육부·한국직업능력개발원 주관 국가직무능력표준(KSS:Korea Skills Standards) 개발</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
            
                            <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-1 order-2">
                                        <div class="card event event-description-left rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Partnership</h5> -->
                                                <p class="mt-3 mb-0 text-muted">07년 자격기본법령 개정으로 표준 개발 법제화, 동 법령은 각부처가 소관 산업분야의 NCS를 개발하여 고시하도록 규정</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-2 order-1">
                                        <div class="duration duration-right rounded border p-2 px-4 position-relative shadow text-start">2007</div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
        
                            <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="duration date-label-left border rounded p-2 px-4 position-relative shadow">2009</div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card event event-description-right rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Secuirty</h5> -->
                                                <p class="mt-3 mb-0 text-muted">「국가직무능력표준 일원화 TF」 ('09.2~8)구성·운영</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
            
                            <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-1 order-2">
                                        <div class="card event event-description-left rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Branch</h5> -->
                                                <p class="mt-3 mb-0 text-muted">10.5월, 국가직무능력표준 추진 효율화를 위한 '국가정책조정회의' 조정</p>
                                                <p class="mt-3 mb-0 text-muted">표준 명칭 통일(국가직무능력표준, NCS) 및 개발주체 일원화</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-2 order-1">
                                        <div class="duration duration-right rounded border p-2 px-4 position-relative shadow text-start">2010</div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
        
                            <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="duration date-label-left border rounded p-2 px-4 position-relative shadow">2013</div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card event event-description-right rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Global</h5> -->
                                                <p class="mt-3 mb-0 text-muted">13.2월, '능력중심 사회를 위한 여건 조성'의 핵심국정과제로 확정</p>
                                                <p class="mt-3 mb-0 text-muted">14.12월까지 총797개 NCS개발완료('13년 240개, '14년 557개 개발)</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
            
                            <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-1 order-2">
                                        <div class="card event event-description-left rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Branches</h5> -->
                                                <p class="mt-3 mb-0 text-muted">15.1월, 기획재정부, 고용노동부, 교육부 등 정부부처와 협력하여 공공기관 및 기업에서의 활용, 과정평가형 자격제도 시행, 신직업자격의 설계와 적용등에 중점을 두어 NCS활용·확산 추진</p>
                                                <p class="mt-3 mb-0 text-muted">15.12월까지 총847개 NCS개발 완료('15년 50개 개발)</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-2 order-1">
                                        <div class="duration duration-right rounded border p-2 px-4 position-relative shadow text-start">2015</div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
                            
                            <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="duration date-label-left border rounded p-2 px-4 position-relative shadow">2016</div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card event event-description-right rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Global</h5> -->
                                                <p class="mt-3 mb-0 text-muted">16. 7. 22, 「자격기본법」 제5조, 같은 법 시행령 제6조제1항에 따라 국가직무능력표준 고시 완료(고용노동부고시 제2016 - 33호)</p>
                                                <p class="mt-3 mb-0 text-muted">16.12월까지 총897개 NCS개발·개선 완료('16년 50개 개발, 403개 개선)</p>
                                                <p class="mt-3 mb-0 text-muted">1,000개 민간 중견·중소기업 대상 기업 컨설팅 실시</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
                            
                             <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-1 order-2">
                                        <div class="card event event-description-left rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Branches</h5> -->
                                                <p class="mt-3 mb-0 text-muted">17. 4. 27, 「자격기본법」 제5조, 같은 법 시행령 제6조제1항에 따라 국가직무능력표준 개정 고시 완료(고용노동부고시 제2017 – 26호)</p>
                                                <p class="mt-3 mb-0 text-muted">1,000개 민간 중견·중소기업 대상 기업 컨설팅 실시</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-2 order-1">
                                        <div class="duration duration-right rounded border p-2 px-4 position-relative shadow text-start">2017</div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
                            
                            <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="duration date-label-left border rounded p-2 px-4 position-relative shadow">2020</div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card event event-description-right rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Global</h5> -->
                                                <p class="mt-3 mb-0 text-muted">700개 민간 중견·중소기업 대상 컨설팅 실시</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
                            
                             <div class="timeline-item mt-4">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-1 order-2">
                                        <div class="card event event-description-left rounded shadow border-0 overflow-hidden float-start">
                                            <div class="card-body">
<!--                                                 <h5 class="mb-0 text-capitalize">Branches</h5> -->
                                                <p class="mt-3 mb-0 text-muted">‘21.1.5, 한국산업인력공단법 개정 및 공포, 시행</p>
                                                <p class="mt-3 mb-0 text-muted">NCS 고시</p>
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                    <div class="col-lg-6 col-md-6 col-sm-6 order-sm-2 order-1">
                                        <div class="duration duration-right rounded border p-2 px-4 position-relative shadow text-start">2021</div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div><!--end timeline item-->
                            
                        </div><!--end timeline page-->
                        <!-- TIMELINE END -->
                    </div><!--end col-->
								</div>
								<!--end teb pane-->
							</div>
							<!--end tab content-->
						</div>
						<!--end col-->
					</div>
					<!--end row-->
			</div>
		</div>
	</div>
		
		
		
		
	</div>
</section>

<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp"%>
