<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOBSTICK - IT 교육검색 </title>
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
						<h1 class="text-white title-dark">일반 검색</h1>
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
			<div class="row">
				<div class="col-12">
					<div class="border-bottom pb-4">
						<div class="row">
							<div class="col-lg-8 col-md-8">
								<div class="section-title">
									<h4 class="title mb-2">일반 검색</h4>
								</div>
							</div>
							<!--end col-->


							<div class="col-lg-2 col-md-2 mt-2 mt-sm-0 pt-2 pt-sm-0">
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
		<div>
			<form class="rounded p-4 mt-4 bg-white" action="normalsearch">
				<div class="row text-start">
					<div class="col-lg-5 col-md-4">
						<div class="mb-0">
							<label for="">검색 </label>
							<input type="text" class="form-control" placeholder="교육과정 키워드를 입력하세요" value="">
						</div>
					</div>
					<!--end col-->

					<div class="col-lg-7 col-md-8">
						<div class="row align-items-center">
						
							<div class="col-md-4 mt-4 mt-sm-0">
								<div class="mb-0">
									<label for="">지역</label>
									<select class="form-control custom-select"name="" id="" onchange="" >
<!-- 									<select class="form-control custom-select"name="searchTypeArea" id="searchTypeArea"> -->
										<option>선택해 주세요</option>
										<option value="4">자연 계열</option>
										<option value="5">공학 계열</option>
										<option value="7">디자인 계열</option>
										<option value="A002">과학&정보 통신 </option>
										<option value="A004">문화&예술</option>
									</select>
								</div>
							</div>
							<!--end col-->


							<div class="col-md-4 mt-4 mt-sm-0">
								<div class="mb-0">
									<label for="">학과</label>
									<select class="form-control custom-select" name="" id="">
										<option>선택해 주세요</option>
										
									</select>
								</div>
							</div>
							<!--end col-->

							<div class="col-md-4 mt-4 mt-sm-0">
								<div class="d-grid">
									<br>
									<input type="button" id="search" name="search"
										class="searchbtn btn btn-primary" value="Search"
										onclick="list_go_dep();">
								</div>
							</div>
							
							
							
<script>
function depselectchange(e) {
    var nat = ["통계학"];
    var gong = ["컴퓨터", "응용 소프트웨어", "게임 공학","정보 통신","정보 보완"];
    var deign = ["디자인"];
    var science = ["하이브리드전기자동차","모바일 게임 ","국방 과학 ","쇼핑몰"];
    var art = ["게임 제작"];
    var target = document.getElementById("depselectD");

    if(e.value == "4") var d = nat ;
    else if(e.value == "5") var d = gong;
    else if(e.value == "7") var d = deign;
    else if(e.value == "A002") var d = science;
    else if(e.value == "A004") var d = art;

    target.options.length = 0;

    for (x in d) {
        var opt = document.createElement("option");
        opt.innerHTML = d[x];
        if(d[x] == "통계학"){opt.value = '13';}
        else if(d[x] == "컴퓨터"){opt.value = '22';}
        else if(d[x] == "응용 소프트웨어"){opt.value = '23';}
        else if(d[x] == "게임 공학"){opt.value = '24';}
        else if(d[x] == "정보 통신"){opt.value = '25';}
        else if(d[x] == "정보 보완"){opt.value = '26';}
        else if(d[x] == "디자인"){opt.value = '1';}
        else if(d[x] == "하이브리드전기자동차"){opt.value = '10001';}
        else if(d[x] == "모바일 게임"){opt.value = '10002';}
        else if(d[x] == "국방 과학"){opt.value = '10004';}
        else if(d[x] == "쇼핑몰"){opt.value = '10005';}
        else if(d[x] == "게임 제작"){opt.value = '10001';}
        target.appendChild(opt);
    }   
}
</script>
							
							
							
							<!--end col-->
						</div>
						<!--end row-->
					</div>
					<!---end col-->
				</div>
				<!--end row-->
			</form>
			<!--end form-->
		</div>


		<div class="row">
			<!-- 카테고리 검색 -->
				<div class="col-lg-12">

					<div class="table-responsive bg-white shadow rounded mt-4">
						<table class="table mb-0 table-center">
							<thead class="bg-light">
								<tr>
									<th scope="col" class="border-bottom" style="min-width: 300px;">직업명
										</th>
<!-- 									<th scope="col" class="border-bottom text-center" -->
<!-- 										style="max-width: 150px;">관련부처</th> -->
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="d-flex">
											<i class="uil uil-comment text-muted h5"></i>
											<div class="flex-1 content ms-3">
												<a href="forums-topic.html"
													class="forum-title text-primary fw-bold">프로그래머</a>
												<p class="text-muted small mb-0 mt-2">
												프로그래머 정의</p>
											</div>
										</div>
									</td>
<!-- 									<td class="text-center small h6">한국산업인력공단</td> -->
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
	<!--end col-->

</body>
</html>