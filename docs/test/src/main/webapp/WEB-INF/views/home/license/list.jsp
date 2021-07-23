<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<title>JOBSTICK - 자격정보</title>
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
						<p class="text-white-50 para-desc mb-0 mx-auto">IT에 관련된 여러 정보를 확인할 수 있습니다.</p>

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
							<div class="col-lg-9 col-md-8">
								<div class="section-title">
									<h4 class="title mb-2">자격정보</h4>
									<p class="text-muted mb-0">국가기술자격 및 국가전문자격 종목별 상세 자격증 정보를 확인하실 수 있습니다.</p>
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

				
		<!-- 검색창 -->
		<div class="text-center subcribe-form mb-2">
			<br>
			<br>
			<form style="max-width: 800px;">
				<input type="text" id="name" name="name" class="rounded-pill shadow"
					placeholder="키워드를 입력하세요" required="">
				<button type="submit" class="btn btn-pills btn-primary">검 색</button>
			</form>
			<!--end form-->
		</div>

		
			<div class="row">
				<div class="col-lg-12">

					<div class="table-responsive bg-white shadow rounded mt-4">
						<table class="table mb-0 table-center">
							<thead class="bg-light">
								<tr>
									<th scope="col" class="border-bottom" style="min-width: 300px;">자격증명
										</th>
									<th scope="col" class="border-bottom text-center"
										style="max-width: 150px;">관련부처</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="d-flex">
											<i class="uil uil-comment text-muted h5"></i>
											<div class="flex-1 content ms-3">
												<a href="forums-topic.html"
													class="forum-title text-primary fw-bold">정보처리기사</a>
												<p class="text-muted small mb-0 mt-2">
												정보처리기사 정의</p>
											</div>
										</div>
									</td>
									<td class="text-center small h6">한국산업인력공단</td>
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
