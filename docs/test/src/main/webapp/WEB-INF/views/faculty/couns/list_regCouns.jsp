<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="ingCourseList" value="${ingCourseList }" />
<head>

</head>
<title>아아</title>

<body>
	<section class="bg-half-170 d-table w-100"></section>
	<h1>진행중인 교육과정</h1>
	<div class="card">
		<h3 class="card-header">진행중인 교육과정</h3>
		<div
			class="d-flex justify-content-between align-items-center mx-50 row pt-0 pb-2">
			<div class="row">
				<div class="input-group">
					<select class="form-control" name="perPageNum" id="searchType"
						style="display: none">
						<option value="10" selected></option>
					</select>
					<div class="col-md-2">
						<select class="form-control" name="param1" id="param1">
							<option value="">상태</option>
							<option value="예정" ${cri.param1 eq '예정' ? 'selected' : ''}>예정</option>
							<option value="진행" ${cri.param1 eq '진행' ? 'selected' : ''}>진행</option>
							<option value="종료" ${cri.param1 eq '종료' ? 'selected' : ''}>종료</option>
						</select>
					</div>
					<div class="col-md-2">
						<select class="form-control" name="searchType" id="searchType">
							<option value="a" ${cri.searchType eq 'a' ? 'selected' : ''}>통합검색</option>
							<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>교과정명</option>
							<option value="w" ${cri.searchType eq 'w' ? 'selected' : ''}>작성자</option>
						</select>
					</div>
					<input class="form-control" type="text" name="keyword"
						placeholder="검색어를 입력하세요" value="${param.keyword }" />
					<button class="btn btn-icon btn-outline-primary waves-effect"
						type="button" id="searchBtn" data-card-widget="search"
						onclick="list_go(1,'list.do');">
						<i data-feather='search'></i>
					</button>
				</div>
			</div>
			<div class="row">&nbsp;</div>
			<div class="row">
				<div class="col-md-12">
					<button type="button" class="btn btn-primary float-end"
						onclick="OpenWindow('registForm.do','입력창',1200,800);">등록</button>
				</div>
			</div>
			<div class="row">&nbsp;</div>
			<div class="row">
				<div class="table-responsive">
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
							<c:forEach var="ingCourse" items="${ingCourseList}"
								varStatus="vs">
								<tr>
									<td><c:set var="ans1"
											value="${fn:substring(ingCourse.ingCourseCode,'3','8') }" />
										<c:forEach begin="0" end="5">
											<c:set var="ans2" value="${ans1}" />
											<c:if test="${fn:startsWith(ans2,'0')}">
												<c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
											</c:if>
										</c:forEach> ${ans2 }</td>
									<td>${ingCourse.courseType}</td>
									<td><span class="fw-bold"><a
											href="javascript:OpenWindow('detail.do?ingCourseCode=${ingCourse.ingCourseCode }','상세보기',800,700)">${ingCourse.courseName}</a></span></td>
									<td>${ingCourse.ingCourseCount}</td>
									<td><fmt:formatDate
											value="${ingCourse.ingCourseBeginDate}" pattern="yy-MM-dd" />
										~ <fmt:formatDate value="${ingCourse.ingCourseEndDate}"
											pattern="yy-MM-dd" /></td>
									<td>${ingCourse.courseTime }</td>
									<td>${ingCourse.facName}</td>
									<td>${ingCourse.ingCourseYn}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="">
				<c:set var="list_url" value="list.do"></c:set>
				<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
			</div>
		</div>
	</div>
</body>









