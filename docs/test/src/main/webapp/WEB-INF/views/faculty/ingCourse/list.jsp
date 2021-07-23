<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="ingCourseList" value="${ingCourseList }" />
<head>
<title>진행중인 교육과정</title>
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
	<h1>진행중인 교육과정</h1>
	<div class="card">
		<div class="input-group">
			<div class="col-md-1">
				<select class="form-control" name="searchType" id="searchType">
					<option value="a" ${cri.searchType eq 'a' ? 'selected' : ''}>통합검색</option>
					<option value="c" ${cri.searchType eq 'c' ? 'selected' : ''}>교과정명</option>
					<option value="w" ${cri.searchType eq 'w' ? 'selected' : ''}>작성자명</option>
					<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>작성자ID</option>
				</select>
			</div>
			<input type="text" class="form-control" aria-label="Amount" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />
			<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="NotAdvanced();list_go(1,'list.do');">Search</button>
			&nbsp;&nbsp;
			<button class="btn btn-primary me-1" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">상세</button>
		</div>

		<div class="collapse" id="collapseExample">
			<div class="d-flex p-1 row">
				<div class="col-md-6">
					<h5>상태</h5>
					<br>
					<label for="a1">전체</label> <input id="a1" type="radio" name="paramRadio1" value="">
					<label for="a2">예정</label> <input id="a2" type="radio" name="paramRadio1" value="예정">
					<label for="a3">진행</label> <input id="a3" type="radio" name="paramRadio1" value="진행">
					<label for="a4">종료</label> <input id="a4" type="radio" name="paramRadio1" value="종료">
				</div>
				<div class="col-md-6"></div>

				<div class="col-md-12">&nbsp;</div>
				<div class="col-md-12">
					<button class="btn btn-primary float-end" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1,'list.do');">Advanced Search</button>
				</div>
			</div>
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

						<div class="col-md-6">
							<button type="button" class="btn btn-primary float-end" onclick="OpenWindow('registForm.do','입력창',1530,760);">등록</button>
						</div>
					</div>
				</div>

				<br>

				<table class="table">
					<thead>
						<tr>
							<th>구분</th>
							<th>과정구분</th>
							<th>과정명</th>
							<th>회차</th>
							<th>기간</th>
							<th>시간</th>
							<th>작성자</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="ingCourse" items="${ingCourseList}" varStatus="vs">
							<tr>
								<td>
									<c:set var="ans1" value="${fn:substring(ingCourse.ingCourseCode,'3','8') }" />
									<c:forEach begin="0" end="5">
										<c:set var="ans2" value="${ans1}" />
										<c:if test="${fn:startsWith(ans2,'0')}">
											<c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
										</c:if>
									</c:forEach>
									${ans2 }
								</td>
								<td>${ingCourse.courseType}</td>
								<td>
									<span class="fw-bold"><a href="javascript:OpenWindow('detail.do?ingCourseCode=${ingCourse.ingCourseCode }','상세보기',1530,760)">${ingCourse.courseName}</a></span>
								</td>
								<td>${ingCourse.ingCourseCount}</td>
								<td>
									<fmt:formatDate value="${ingCourse.ingCourseBeginDate}" pattern="yy-MM-dd" />
									~
									<fmt:formatDate value="${ingCourse.ingCourseEndDate}" pattern="yy-MM-dd" />
								</td>
								<td>${ingCourse.courseTime }</td>
								<td>${ingCourse.facName}</td>
								<td>${ingCourse.ingCourseYn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div>
		<c:set var="list_url" value="list.do"></c:set>
		<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
	</div>

	<section class="section bg-light"></section>
</body>









