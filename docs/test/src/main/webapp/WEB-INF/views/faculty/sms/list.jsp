<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />

<head>
<title>SMS 내역 조회</title>
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
	<!-- 게시판 제목 -->
	<h1>SMS 전송내역</h1>

	<div class="card">

		<div class="input-group">
			<div class="col-md-1">
				<select class="form-control" name="searchType" id="searchType">
					<option value="a" ${cri.searchType eq 'a' ? 'selected' : ''}>통합검색</option>
					<option value="c" ${cri.searchType eq 'c' ? 'selected' : ''}>구분명</option>
					<option value="t" ${cri.searchType eq 't' ? 'selected' : ''}>내용</option>
				</select>
			</div>
			<input type="text" class="form-control" aria-label="Amount" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />
			<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="NotAdvanced();list_go(1,'list.do');">Search</button>
		</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<!-- 게시판 테이블 -->
		<div class="col-sm-12">

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
				</div>
			</div>
			<!-- @@개씩 보기 끝 -->
			<br>

			<!-- 테이블 -->
			<table class="table">
				<thead>
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>내용</th>
						<th>발송건수</th>
						<th>일자</th>
						<th>발송인</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="smsSend" items="${smsSendList}" varStatus="vs">
						<tr>
							<td>${fn:length(smsSendList) - vs.index }</td>
							<td>${smsSend.smsCategoryName}</td>
							<td id="boardTitle" style="text-align:left;max-width: 200px; overflow: hidden;
                                    white-space: nowrap; text-overflow: ellipsis;">
								<a href="javascript:OpenWindow('detail.do?smsSendCode=${smsSend.smsSendCode }','상세보기',630,920)">${smsSend.smsSendContents }</a>
							</td>
							<td>${smsSend.smsCount }</td>
							<td>
								<fmt:formatDate value="${smsSend.smsSendDate }" pattern="yy-MM-dd" />
							</td>
							<td>${smsSend.facName}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<!-- 페이징 처리 -->
		<div>
			<c:set var="list_url" value="list.do"></c:set>
			<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
		</div>
	</div>

	<section class="section bg-light"></section>

	<script>
		function NotAdvanced() {
			//상세검색란 원위치해야함.
		}

		// 		window.onload = function() {
		// 			if ($('[name=stuStatus]').val() != ''
		// 					|| $('[name=param3]').val() != '') {
		// 				$(".collapse").addClass("show");
		// 			}
		// 		}
	</script>
</body>
