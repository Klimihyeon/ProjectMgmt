<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOBSTICK - 일반검색</title>
<style type="text/css">
#courses{
	padding-top: 20px;
}
</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/include/home/main_header_home2.jsp"%>
	<!-- Hero Start -->
	<section class="bg-half d-table w-100"
		style="background: url('<%=request.getContextPath()%>/resources/landrick/images/company/aboutus.jpg');">
		<div class="bg-overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="page-next-level title-heading">
						<h1 class="text-white title-dark">일반검색</h1>
						<p class="text-white-50 para-desc mb-0 mx-auto">IT교육과정에 대한 검색이
							가능합니다.</p>

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

	<section class="section" id="courses">
		<div class="container">
			<!-- 검색창 -->
			<form class="rounded p-4 mt-4 bg-white">
				<div class="row text-start">
					<div class="col-lg-3 col-md-3">
						<div class="mb-0">
							<input type="text" class="form-control"
								placeholder="교육과정 교육기관 등의 키워드를 입력하세요" value="">
						</div>
					</div>
					<!--end col-->

					<div class="col-lg-9 col-md-9">
						<div class="row align-items-center">
							<div class="col-md-3 mt-3 mt-sm-0">
								<div class="mb-0">
									<select class="form-control custom-select"
										name="searchTypeArea" id="searchTypeArea">
										<option value="all">지역</option>
										<option value="s">서울</option>
										<option value="b">부산</option>
										<option value="d">대구</option>
										<option value="i">인천</option>
										<option value="ga">광주</option>
										<option value="da">대전</option>
										<option value="wo">울산</option>
										<option value="se">세종</option>
										<option value="gg">경기</option>
										<option value="gw">강원</option>
										<option value="cb">충북</option>
										<option value="cn">충남</option>
										<option value="jb">전북</option>
										<option value="jn">전남</option>
										<option value="gb">경북</option>
										<option value="gn">경남</option>
										<option value="je">제주</option>
									</select>
								</div>
							</div>
							<!--end col-->


							<div class="col-md-3 mt-3 mt-sm-0">
								<div class="d-grid">
									<input type="button" id="search" name="search"
										class="searchbtn btn btn-primary" value="Search"
										onclick="list_go(1);">
								</div>
							</div>
							<!--end col-->
						</div>
						<!--end row-->
					</div>
					<!---end col-->
				</div>
				<!--end row-->
			</form>

			<div class="row">
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
				<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
					<div
						class="card courses-desc overflow-hidden rounded shadow border-0">
						<div class="position-relative d-block overflow-hidden">
							<img
								src="<%=request.getContextPath()%>/resources/landrick/images/course/1.jpg"
								class="img-fluid rounded-top mx-auto" alt="">
							<div class="overlay-work bg-dark"></div>
							<a href="javascript:void(0)" class="text-white h6 preview">Preview
								Now <i class="uil uil-angle-right-b align-middle"></i>
							</a>
						</div>

						<div class="card-body">
							<h5>
								<a href="javascript:void(0)" class="title text-dark">교육과정명1</a>
							</h5>
							<div class="rating">
								<ul class="list-unstyled mb-0">
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item">5 점 (3 <i
										class="uil uil-user text-muted small"></i>)
									</li>
								</ul>
							</div>
							<div class="fees d-flex justify-content-between">
								<ul class="list-unstyled mb-0 numbers">
									<li><i class="uil uil-graduation-cap text-muted"></i>
										대덕인재개발원</li>
									<li><i class="uil uil-notebooks text-muted"></i>21.01.01~21.03.01
										(120시간)</li>
								</ul>
								<h4>
									<span class="h6" style="color: red;">마감</span>
								</h4>
							</div>
						</div>
					</div>
				</div>
				<!--end col-->

				<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
					<div
						class="card courses-desc overflow-hidden rounded shadow border-0">
						<div class="position-relative d-block overflow-hidden">
							<img
								src="<%=request.getContextPath()%>/resources/landrick/images/course/2.jpg"
								class="img-fluid rounded-top mx-auto" alt="">
							<div class="overlay-work bg-dark"></div>
							<a href="javascript:void(0)" class="text-white h6 preview">Preview
								Now <i class="uil uil-angle-right-b align-middle"></i>
							</a>
						</div>

						<div class="card-body">
							<h5>
								<a href="javascript:void(0)" class="title text-dark">교육과정명2</a>
							</h5>
							<div class="rating">
								<ul class="list-unstyled mb-0">
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star-outline h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item">3.99 점 (11 <i
										class="uil uil-user text-muted small"></i>)
									</li>
								</ul>
							</div>
							<div class="fees d-flex justify-content-between">
								<ul class="list-unstyled mb-0 numbers">
									<li><i class="uil uil-graduation-cap text-muted"></i>대덕인재개발원</li>
									<li><i class="uil uil-notebooks text-muted"></i>21.11.11~21.12.11</li>
								</ul>
								<h4>
									<a href="#" class="btn btn-outline-primary mt-2"><i
										class="uil uil-book-alt"></i> 모집중</a> <span class="h5"
										style="color: blue;"></span>
								</h4>
							</div>
						</div>
					</div>
				</div>
				<!--end col-->

				<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
					<div
						class="card courses-desc overflow-hidden rounded shadow border-0">
						<div class="position-relative d-block overflow-hidden">
							<img
								src="<%=request.getContextPath()%>/resources/landrick/images/course/3.jpg"
								class="img-fluid rounded-top mx-auto" alt="">
							<div class="overlay-work bg-dark"></div>
							<a href="javascript:void(0)" class="text-white h6 preview">Preview
								Now <i class="uil uil-angle-right-b align-middle"></i>
							</a>
						</div>

						<div class="card-body">
							<h5>
								<a href="javascript:void(0)" class="title text-dark">교육과정명3</a>
							</h5>
							<div class="rating">
								<ul class="list-unstyled mb-0">
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item"><i
										class="mdi mdi-star-half h5 mb-0 text-warning"></i></li>
									<li class="list-inline-item">4.7 점 (9 <i
										class="uil uil-user text-muted small"></i>)
									</li>
								</ul>
							</div>
							<div class="fees d-flex justify-content-between">
								<ul class="list-unstyled mb-0 numbers">
									<li><i class="uil uil-graduation-cap text-muted"></i>대덕인재개발원</li>
									<li><i class="uil uil-notebooks text-muted"></i>21.10.11~21.11.01</li>
								</ul>
								<h4>
									<a href="#" class="btn btn-outline-primary mt-2"><i
										class="uil uil-book-alt"></i> 모집중</a>
								</h4>
							</div>
						</div>
					</div>
				</div>
				<!--end col-->

			</div>
			<!--end row-->
		</div>
		<!--end container-->

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

	</section>
	<!--end col-->

</body>
</html>