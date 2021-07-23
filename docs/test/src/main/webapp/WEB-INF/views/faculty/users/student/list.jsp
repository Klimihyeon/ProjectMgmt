<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="studentList" value="${studentList }" />

<head>
<title>교육생 목록 조회</title>
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
	<h1>교육생 목록</h1>

	<div class="card">
		<div class="input-group">
			<div class="col-md-1">
				<select class="form-control" name="searchType" id="searchType">
					<option value="t" ${cri.searchType eq 't' ? 'selected' : ''}>통합검색</option>
					<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>아이디</option>
					<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>이름</option>
					<option value="c" ${cri.searchType eq 'c' ? 'selected' : ''}>과정명</option>
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
					<h5>수료여부</h5>
					<br>
					<label for="a1">전체</label><input id="a1" type="radio" name="paramRadio1" checked="checked" value="">
					 <label for="a2">교육생</label> <input id="a2" type="radio" name="paramRadio1" value="교육생">
					  <label for="a3">중퇴생</label> <input id="a3" type="radio" name="paramRadio1" value="중퇴생">
					  <label for="a4">수료생</label> <input id="a4" type="radio" name="paramRadio1" value="수료생">
				</div>
				<div class="col-md-6">
					<h5>교육과정</h5>
					<select class="form-control" name="param3" id="param3">
						<option value="" ${cri.param3 eq '' ? 'selected' : ''}>전체</option>
						<c:forEach var="ingCourse" items="${ingCourseList}" varStatus="vs">
							<option value="${ingCourse.ingCourseCode }" ${cri.param3 eq ingCourse.ingCourseCode  ? 'selected' : ''}>${ingCourse.ingCourseName }</option>
						</c:forEach>
					</select>
				</div>
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

						<!-- 등록 -->
						<div class="col-sm-6" style="text-align: right;">
							<button type="button" class="btn btn-primary float-end" onclick="OpenWindow('registForm.do','입력창',1500,800);">교육생 등록</button>
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
							<th>과정</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="student" items="${studentList}" varStatus="vs">
							<tr>
								<td>${fn:length(studentList) - vs.index }</td>
								<td>${student.usersId }</td>
								<td>
									<a href="javascript:OpenWindow('detail.do?studentId=${student.usersId }','상세보기',800,700)">${student.name }</a>
								</td>
								<td>${student.ingCourseName }</td>
								<td>${student.stuStatus }</td>
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

	<script>
		function NotAdvanced() {
			//상세검색란 원위치해야함.
		}

		window.onload = function() {

		$.each($("input[name='paramRadio1']"),function(i,item){
			if($(item).val()=='${cri.paramRadio1}'){
				$(item).attr("checked",true);
			}
		});

			if ($('[name=param3]').val() != ''
					|| $("input[name='paramRadio1']:checked").val() != '') {
				$(".collapse").addClass("show");
			}
		}
	</script>
</body>
