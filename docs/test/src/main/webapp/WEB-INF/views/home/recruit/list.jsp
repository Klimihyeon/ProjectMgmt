<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<title>JOBSTICK - 교육생모집</title>
<%@ include file="/WEB-INF/views/include/home/main_header_home2.jsp"%>

	<!-- Hero Start -->
	<section class="bg-half d-table w-100"
		style="background: url('<%=request.getContextPath()%>/resources/landrick/images/company/aboutus.jpg');">
		<div class="bg-overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="page-next-level title-heading">
						<h1 class="text-white title-dark">교육생모집</h1>
						<p class="text-white-50 para-desc mb-0 mx-auto">본원 교육생 모집 공고입니다.</p>

						<!-- page -->
						<div class="page-next">
							<nav aria-label="breadcrumb" class="d-inline-block">
								<ul class="breadcrumb bg-white rounded shadow mb-0">
									<li class="breadcrumb-item"><a href="index.html">JOBSTICK</a></li>
									<li class="breadcrumb-item active" aria-current="page">recruit</li>
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

	<!-- section -->
	<section class="section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="border-bottom pb-4">
						<div class="row">
							<div class="text-center subcribe-form mb-2">
								<form style="max-width: 800px;">
									<input type="text" id="name" name="name"
										class="rounded-pill shadow" placeholder="키워드를 입력하세요"
										required="">
									<button type="submit" class="btn btn-pills btn-primary">검
										색</button>
								</form>
								<!--end form-->
							</div>

							<div class="col-lg-9 col-md-8">
								<div class="section-title">
									<div class="text-center subcribe-form mb-2">

										<!--end form-->
									</div>

								</div>
								<!--end col-->

								<div class="col-lg-3 col-md-4 mt-4 mt-sm-0 pt-2 pt-sm-0">
									<div class="form custom-form">
										<div class="">
											<label class="form-label"></label> <select
												class="form-select form-control"
												aria-label="Default select example" id="Sortbylist-job">
												<option selected="">10개씩 보기</option>
												<option>20개씩 보기</option>
												<option>30개씩 보기</option>
												<option>40개씩 보기</option>
												<option>50개씩 보기</option>
											</select>
										</div>
									</div>
								</div>
								<!--end col-->
							</div>
							<!--end row-->
						</div>
					</div>
					<!--end col-->
				</div>
				<!--end row-->

				<div class="row">
					<div class="col-12 mt-4 pt-2">
						<div class="section-title"></div>
					</div>
					<!--end col-->

					<!-- 카테고리 검색 -->
					<div class="col-lg-12">

						<div class="table-responsive bg-white shadow rounded mt-4">
							<table class="table mb-0 table-center invoice-tb">
								<thead class="bg-light">
									<tr>
										<th style="text-align: center;" scope="col" class="border-bottom text-start">No.</th>
										<th style="text-align: center;" scope="col" class="border-bottom">사업분류</th>
										<th style="text-align: center;" scope="col" class="border-bottom">과정명</th>
										<th style="text-align: center;" scope="col" class="border-bottom">교육기간</th>
										<th style="text-align: center;" scope="col" class="border-bottom">상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th style="text-align: center;" scope="row" class="text-start">1</th>
										<td style="text-align: center;">국가기간.전략산업직종훈련/취업연수과정</td>
										<td style="text-align: center;" class="text-start">[K-디지털]AI 기술을 활용한 소프트웨어 엔지니어링 과정(2회차)</td>
										<td style="text-align: center;" >2021/08/09~2022/04/06</td>
										<td style="text-align: center;">접수중</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!--end col-->
				<div class="card-body content position-relative"></div>
			</div>
		</div>
		<!--end col-->
		<!-- PAGINATION START -->
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
		<!--end col-->
		<!-- PAGINATION END -->
		</div>
		<!--end row-->
		</div>
		<!--end container-->
	</section>


<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp"%>
