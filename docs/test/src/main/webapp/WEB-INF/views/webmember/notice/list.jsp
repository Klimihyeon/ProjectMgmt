<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="noticeList" value="${noticeList }" />

<head>
<meta charset="utf-8">
<title>JOBSTICK - 공지사항</title>
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
						<h1 class="text-white title-dark">공지사항</h1>
						<p class="text-white-50 para-desc mb-0 mx-auto"></p>

						<!-- page -->
						<div class="page-next">
							<nav aria-label="breadcrumb" class="d-inline-block">
								<ul class="breadcrumb bg-white rounded shadow mb-0">
									<li class="breadcrumb-item"><a href="index.html">JOBSTICK</a></li>
									<li class="breadcrumb-item active" aria-current="page">notice</li>
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
									<input type="text" id="name" name="keyword"
										class="rounded-pill shadow" placeholder="키워드를 입력하세요" value="${param.keyword }">
									<button type="button" class="btn btn-pills btn-primary"onclick="list_go(1);" data-card-widget="search">검색</button>
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
											<label class="form-label"></label> 
											<select class="form-select form-control" aria-label="Default select example" id="Sortbylist-job">
												<option value="10">정렬개수</option>
												<option value="20" ${cri.perPageNum == 20 ? 'selected':''}>20개씩</option>
												<option value="30" ${cri.perPageNum == 30 ? 'selected':''}>30개씩</option>
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
									<tr style="text-align: center;">
										<th style="text-align: center;" scope="col" class="border-bottom text-start">No</th>
										<th style="text-align: center;" scope="col" class="border-bottom">제목</th>
										<th style="text-align: center;" scope="col" class="border-bottom">작성자</th>
										<th style="text-align: center;" scope="col" class="border-bottom">작성일</th>
										<th style="text-align: center;" scope="col" class="border-bottom">조회수</th>
									</tr>
									<c:if test="${empty noticeList }">
										<tr>
											<td colspan="5" style="text-align: center;"><strong>해당 내용이 없습니다.</strong></td>
										</tr>
									</c:if>
								</thead>
								<tbody>
								<c:forEach items="${noticeList }" var="notice">
									<tr>
										<th style="width:10%; text-align: center;" scope="row" class="text-start">${notice.nno }</th>
										<td style="text-align: left;"><a href="detail.do?nno=${notice.nno }">${notice.title }</a></td>
<%-- 										<td style="width:10%; text-align: center;">${notice.writer }</td> --%>
										<td style="width:10%; text-align: center;">JOBSTICK</td>
										<td style="width:20%; text-align: center;"><fmt:formatDate value="${notice.regdate }" pattern="yy/MM/dd"/></td>
										<td style="width:10%; text-align: center;">${notice.viewcnt }</td>
									</tr>
									</c:forEach>
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
			 <%@ include file="/WEB-INF/views/common/pagination.jsp" %>
		</div>
		<!--end col-->
		<!-- PAGINATION END -->
		</div>
		<!--end row-->
		</div>
		<!--end container-->
	</section>

	<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp" %>

<%@ include file="/WEB-INF/views/include/home/js_home.jsp" %>  	


</body>
