<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="webmemberList" value="${webmemberList }" />

<title>일반회원 목록 조회</title>
<head>
<style type="text/css">
div.card {
	padding: 20px;
}

div#divMargin {
	padding: 0;
	margin: 0;
}

th, tr, td {
	text-align: center;
}
</style>

</head>
<body>
	<section class="bg-half-170 d-table w-100"></section>

	<!-- 게시판 제목 -->
	<h1>일반회원 목록</h1>

	<!-- 검색창 -->
	<div class="card">
		<div class="input-group">
			<div class="col-md-1">
				<select class="form-control" name="searchType" id="searchType">
					<option value="t" ${cri.searchType eq 't' ? 'selected' : ''}>통합검새</option>
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
		<div class="card">
			<div class="table-responsive">
				<!-- @@개씩 보기 -->
				<div class="d-flex justify-content-between align-items-center header-actions" style="margin: 0px; text-align: right;">
					<div class="col-sm-12 col-md-4 col-lg-6">
						<div class="dataTables_length" id="DataTables_Table_0_length">
							<select class="form-select" name="perPageNum" style="width: 150px;" id="perPageNum" onchange="list_go(1);">
								<option value="10" ${cri.perPageNum==10 ? 'selected':'' }>10개씩 보기</option>
								<option value="20" ${cri.perPageNum==20 ? 'selected':'' }>20개씩 보기</option>
								<option value="50" ${cri.perPageNum==50 ? 'selected':'' }>50개씩 보기</option>
								<option value="100" ${cri.perPageNum==100 ? 'selected':'' }>100개씩 보기</option>
							</select>
						</div>
					</div>

					<div class="col-sm-12" id="divMargin">
						<div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-md-end align-items-center flex-sm-nowrap flex-wrap me-1">
							<div class="me-1"></div>
							<div class="dt-buttons btn-group flex-wrap"></div>
						</div>
					</div>
				</div>
				<!-- @@개씩 보기 끝 -->
				<br>
				<table class="table">
					<thead>
						<tr>
							<th>NO</th>
							<th>ID</th>
							<th>이름</th>
							<th>성별</th>
							<th>이메일</th>
							<th>가입일</th>
							<th>상담여부(횟수)</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="webmember" items="${webmemberList}" varStatus="vs">
							<tr>
								<td>${fn:length(webmemberList) - vs.index }</td>
								<td>${webmember.usersId }</td>
								<td>
									<a href="javascript:OpenWindow('detail.do?memberId=${webmember.usersId }','상세보기',800,830)">${webmember.name }</a>
								</td>
								<td>
									<c:if test="${webmember.gender eq 'M'}">
									남
								</c:if>
									<c:if test="${webmember.gender eq 'F'}">
									여
								</c:if>
								</td>
								<td>${webmember.memberEmail}</td>
								<td>
									<fmt:formatDate value="${webmember.memberRegdate }" pattern="yy-MM-dd" />
								</td>
								<td>
									<c:if test="${webmember.counselYn  eq 'Y'}">
								O
								</c:if>
									<c:if test="${webmember.counselYn  eq 'N'}">
								X
								</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- 게시판 테이블 끝 -->

	<!-- 페이징처리 -->
	<div>
		<c:set var="list_url" value="list.do"></c:set>
		<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
	</div>

	<section class="section bg-light"></section>
</body>









