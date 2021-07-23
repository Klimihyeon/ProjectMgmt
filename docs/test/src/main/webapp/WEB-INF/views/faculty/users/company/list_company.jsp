<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="companyList" value="${companyList }" />

<head>
<title>기업회원 목록 조회</title>
<style type="text/css">
div.card{
	padding: 20px;
}
div#divMargin{
	padding: 0;
	margin: 0;
}
th, tr, td{
text-align: center;
}
</style>
</head>

<body>
<!-- 	<section class="bg-half-170 d-table w-100"></section> -->

	<!-- 게시판 제목 -->
	<h1>기업회원 목록</h1>

				<!-- 과거 검색창 -->
<!-- 			<div class="row"> -->
<!-- 				<div class="input-group"> -->
<!-- 					<select class="form-control col-md-3" name="perPageNum" id="searchType" style="display: none"> -->
<!-- 						<option value="10" selected></option> -->
<!-- 					</select> -->
<!-- 					<div class="col-md-2"> -->
<!-- 						<select class="form-control" name="searchType" id="searchType"> -->
<!-- 							<option value="">검색구분</option> -->
<%-- 							<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>아이디</option> --%>
<%-- 							<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>이름</option> --%>
<%-- 							<option value="a" ${cri.searchType eq 'a' ? 'selected' : ''}>통합</option> --%>
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 					<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요" value="" /> <span class="input-group-append"> -->
<!-- 						<button class="btn btn-icon btn-outline-primary waves-effect" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1,'list_company.do');"> -->
<!-- 							<i data-feather='search'></i> -->
<!-- 						</button> -->
<!-- 					</span> -->
<!-- 				</div> -->
<!-- 			</div> -->

		<!-- 게시판 테이블 -->
		<div class="col-sm-12">
			<div class="card">
				<!-- 검색창 -->
				<div class="input-group">
							<div class="col-md-1">
				<select class="form-control" name="searchType" id="searchType">
							<option value="a" ${cri.searchType eq 'a' ? 'selected' : ''}>통합검색</option>
							<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>아이디</option>
							<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>이름</option>
				</select>
			</div>
					<input type="text" class="form-control" aria-label="Amount"
						name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />
					<button class="btn btn-primary" type="button" id="searchBtn"
						data-card-widget="search" onclick="list_go(1, 'list.do') ;">Search</button>
				</div>
				<br>

				<div class="table-responsive">
				<!-- @@개씩 보기 -->
				<div class="d-flex justify-content-between align-items-center header-actions" style="margin: 0px; text-align: right;">
					<div class="col-sm-12 col-md-4 col-lg-6">
						<div class="dataTables_length" id="DataTables_Table_0_length">
								<select class="form-select" name="perPageNum" style="width: 150px;" id="perPageNum" onchange="list_go(1);">
									<option value="10" ${cri.perPageNum==10 ? 'selected':'' } >10개씩 보기</option>
							  		<option value="20" ${cri.perPageNum==20 ? 'selected':'' }>20개씩 보기</option>
							  		<option value="50" ${cri.perPageNum==50 ? 'selected':'' }>50개씩 보기</option>
							  		<option value="100" ${cri.perPageNum==100 ? 'selected':'' }>100개씩 보기</option>
								</select>
							</div>
					</div>

					<div class="col-sm-12"  id="divMargin">
						<div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-md-end align-items-center flex-sm-nowrap flex-wrap me-1">
							<div class="me-1"></div>
							<div class="dt-buttons btn-group flex-wrap">
							</div>
						</div>
					</div>
				</div>
				<!-- @@개씩 보기 끝 -->
				<br>
				<!-- 테이블 -->
				<table class="table">
						<thead>
							<tr>
								<th>NO</th>
								<th>ID</th>
								<th>상호명</th>
								<th>담당자</th>
								<th>이메일</th>
								<th>지역</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="company" items="${companyList}" varStatus="vs">
								<tr>
									<td>${fn:length(companyList) - vs.index }</td>
									<td>${company.comId }</td>
									<td>
										<a href="javascript:OpenWindow('detail.do?comId=${company.comId }','상세보기',800,600)">${company.comName}</a>
									</td>
									<td>${company.comManagerName}</td>
									<td>${company.comManagerEmail}</td>
									<td>${fn:substring(company.comAddr,0,fn:indexOf(company.comAddr,' '))}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 테이블 끝 -->
				</div>
			</div>
		</div>

			<!-- 페이징처리 -->
			<div>
				<c:set var="list_url" value="list_company.do"></c:set>
				<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
			</div>

	<section class="section bg-light"></section>

	<script>
		// $(function() {
		// 	$("#btnRequest").on("click", function() { // URL 주소에 존재하는 HTML 코드에서 <li>요소를 읽은 후에 id가 "list"인 요소에 배치한다.
		// 		$("#list").load("/examples.html li");
		// 	});
		// });
	</script>

</body>









