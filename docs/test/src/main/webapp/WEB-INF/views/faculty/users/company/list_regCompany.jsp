<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="regCompanyList" value="${companyList }" />

<head>
<title>기업회원 가입신청내역</title>
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
	<!-- 게시판 제목 -->
	<h1>기업회원 가입신청내역</h1>

		<!-- 게시판 테이블 -->
		<div class="col-sm-12">
			<div class="card">
				<div class="body">

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
				<div class="table">
					<table class="regCompnayListTable table">
						<thead>
							<tr>
								<th>NO</th>
								<th>ID</th>
								<th>상호명</th>
								<th>담당자</th>
								<th>이메일</th>
								<th>신청일</th>
								<th>상태</th>
								<th>심사</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="regCompany" items="${regCompanyList}" varStatus="vs">
								<tr>
									<td>${fn:length(regCompanyList) - vs.index }</td>
									<td>${regCompany.comId }</td>
									<td>${regCompany.comName}</td>
									<td>${regCompany.comManagerName}</td>
									<td>${regCompany.comManagerEmail}</td>
									<td>
										<fmt:formatDate value="${regCompany.comRegdate }" pattern="yy-MM-dd" />
									</td>
									<td>${regCompany.comStatus}</td>
									<td>
										<a href="javascript:OpenWindow('approveForm.do?comId=${regCompany.comId }','상세보기',900,600)"><button class="btn btn-primary" type="button">심사하기</button></a>
									</td>
								</tr>
							</c:forEach>

							<c:if test="${fn:length(regCompanyList) eq 0 }">
								<tr>
									<td colspan="8">가입신청중인 기업회원이 존재하지 않습니다.</td>
								</tr>
							</c:if>
						</tbody>
					</table>
					</div>
				</div>
			</div>
		</div>
	</div>

			<!-- 페이징 처리 -->
			<div>
				<c:set var="list_url" value="list_regCompany.do"></c:set>
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









