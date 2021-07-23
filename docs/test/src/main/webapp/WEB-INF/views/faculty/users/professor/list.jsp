<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="usersList" value="${usersList }" />
<head>
<title>교강사 목록 조회</title>
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
	<h1>교강사 목록</h1>

	<!-- 검색창 -->
	<div class="card">
		<div class="input-group">
			<div class="col-md-1">
				<select class="form-control" name="searchType" id="searchType">
					<option value="a" ${cri.searchType eq 'a' ? 'selected' : ''}>통합검색</option>
					<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>아이디</option>
					<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>이름</option>
				</select>
			</div>
			<input type="text" class="form-control" aria-label="Amount" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />
			<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1,'list.do');">Search</button>
		</div>
	</div>

		<!-- 게시판 테이블 -->
		<div class="col-sm-12">
			<div class="cord">
				<div class="card body">
				<div class="table-responsive">
					<div class="d-flex justify-content-between align-items-center header-actions" style="margin: 0px; text-align: right;">

						<!-- @@개씩 보기 -->
						<div class="col-sm-6">
							<div class="dataTables_length" id="DataTables_Table_0_length">
								<select class="form-select" name="perPageNum" style="width: 150px;" id="perPageNum" onchange="list_go(1);">
								<option value="10" ${cri.perPageNum==10 ? 'selected':'' }>10개씩 보기</option>
								<option value="20" ${cri.perPageNum==20 ? 'selected':'' }>20개씩 보기</option>
								<option value="50" ${cri.perPageNum==50 ? 'selected':'' }>50개씩 보기</option>
								<option value="100" ${cri.perPageNum==100 ? 'selected':'' }>100개씩 보기</option>
							</select>
							</div>
						</div>

						<!-- 등록 -->
						<div class="col-sm-6" style="text-align: right;">
							<button type="button" class="btn btn-primary float-end"
							onclick="OpenWindow('registForm.do','입력창',700,500);">등록</button>
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
								<th>이름</th>
								<th>연락처</th>
								<th>이메일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="professor" items="${professorList}" varStatus="vs">
								<tr>
									<td>${fn:length(professorList) - vs.index }</td>
									<td>${professor.usersId }</td>
									<td><a
										href="javascript:OpenWindow('detail.do?profId=${professor.usersId }','상세보기',800,800)">${professor.profName }</a></td>
									<td>${professor.profPhone}</td>
									<td>${professor.profEmail}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

			<!-- 페이징 처리 -->
			<div>
				<c:set var="list_url" value="list.do"></c:set>
				<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
			</div>

	<section class="section bg-light"></section>
</body>









