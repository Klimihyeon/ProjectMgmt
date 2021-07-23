<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="subjectList" value="${subjectList }" />

<title>과목 목록 조회</title>

<body>
	<section class="bg-half-170 d-table w-100"></section>
	<h1>교과목</h1>
	<!-- 검색창 -->
	<div class="card">
		<div class="input-group">
			<div class="col-md-1">
				<select class="form-control" name="searchType" id="searchType">
					<option value="a" ${cri.searchType eq 'a' ? 'selected' : ''}>통합검색</option>
					<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>교과목명</option>
					<option value="w" ${cri.searchType eq 'w' ? 'selected' : ''}>작성자</option>
				</select>
			</div>
			<input type="text" class="form-control" aria-label="Amount" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />
			<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1,'list.do');">Search</button>
		</div>
	</div>

	<!-- 게시판 테이블 -->
	<div class="col-sm-12">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<div class="d-flex justify-content-between align-items-center header-actions" style="margin: 0px; text-align: right;">
						<!-- @@개씩 보기 -->
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
						<div class="col-sm-6" style="text-align: right;">
							<button type="button" class="btn btn-primary float-end" onclick="OpenWindow('registForm.do','입력창',300,300);">등록</button>
						</div>
					</div>
				</div>
				<br>

				<table class="table">
					<thead>
						<tr>
							<th>구분</th>
							<th>과목명</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="sub" items="${subjectList}">
							<tr>
								<td>
									<c:set var="ans1" value="${fn:substring(sub.subCode,'3','8') }" />
									<c:forEach begin="0" end="5">
										<c:set var="ans2" value="${ans1}" />
										<c:if test="${fn:startsWith(ans2,'0')}">
											<c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
										</c:if>
									</c:forEach>
									${ans2 }
								</td>
								<td>
									<a href="javascript:OpenWindow('detail.do?subCode=${sub.subCode }','상세보기',800,700)">${sub.subName}</a>
								</td>
								<td>${sub.facName}</td>
								<td>
									<fmt:formatDate value="${sub.subDate }" pattern="yy-MM-dd" />
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="card-footer">
		<c:set var="list_url" value="list.do"></c:set>
		<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
	</div>

	<section class="section bg-light"></section>
</body>









