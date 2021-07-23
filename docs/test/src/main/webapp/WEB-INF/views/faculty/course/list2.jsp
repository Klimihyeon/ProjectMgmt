<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="courseList" value="${courseList }" />
<head>

</head>
<title>과정 목록 조회</title>

<body>
	<section class="bg-half-170 d-table w-100"></section>

	<h1>과정 목록 조회</h1>

	<div class="input-group row">
		<select class="form-control col-md-3" name="perPageNum" id="searchType" style="display:none">
			<option value="10" selected></option>
		</select>
		<select class="form-control col-md-3" name="searchType" id="searchType">
			<option value="">검색구분</option>
			<option value="tcw" ${cri.searchType eq 't' ? 'selected' : ''}>교과정구분</option>
			<option value="tcw" ${cri.searchType eq 'n' ? 'selected' : ''}>교과정명</option>
			<option value="t" ${cri.searchType eq 'w' ? 'selected' : ''}>작성자</option>
			<option value="c" ${cri.searchType eq 'a' ? 'selected' : ''}>통합</option>
		</select>
		<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요" value="${param.keyword }" />
		<span class="input-group-append">
			<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1,'list.do');">
				<i class="fa fa-fw fa-search"></i>
			</button>
		</span>
	</div>
	<button type="button" class="btn btn-primary" onclick="OpenWindow('registForm.do','입력창',1200,800);">등록</button>
	<table border="1">
		<thead>
			<tr>
				<th>구분</th>
				<th>과정구분</th>
				<th>과정명</th>
				<th>시간</th>
				<th>인원</th>
				<th>작성일</th>
				<th>작성자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="course" items="${courseList}" varStatus="vs">
				<tr>
					<td>${vs.index+1 }</td>
					<td>${course.courseType}</td>
					<td><a href="javascript:OpenWindow('detail.do?courseCode=${course.courseCode }','상세보기',800,700)">${course.courseName}</a></td>
					<td>${course.courseTime}</td>
					<td>${course.courseLimit}</td>
					<td><fmt:formatDate value="${course.courseDate }" pattern="yy-MM-dd" /></td>
					<td>${course.facId}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="">
		<c:set var="list_url" value="list.do"></c:set>
		<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
	</div>

	<section class="section bg-light"></section>

</body>









