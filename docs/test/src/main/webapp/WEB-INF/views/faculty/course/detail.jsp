<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>교육과정 상세보기</title>

<section class="bg-half-170 d-table w-100"></section>

<body>
	<h1>교육과정 상세조회</h1>
	<div class="row card">
		<div class="card-header">
			<div class="card-title">교육과정 정보</div>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>과정구분</th>
							<th>과정명</th>
							<th>시간</th>
							<th>인원</th>
							<th>작성일</th>
							<th>작성자</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${course.courseType}</td>
							<td>
								<a href="javascript:OpenWindow('detail.do?courseCode=${course.courseCode }','상세보기',800,700)">${course.courseName}</a>
							</td>
							<td>${course.courseTime}</td>
							<td>${course.courseLimit}</td>
							<td>
								<fmt:formatDate value="${course.courseDate }" pattern="yy-MM-dd" />
							</td>
							<td>${course.facName}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="row card">
		<div class="card-header">
			<div class="card-title">교과목</div>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>교과목명</th>
							<th>시간</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="subInCourse" items="${subInCourseList }">
							<tr>
								<td>${subInCourse.subName}</td>
								<td>${subInCourse.subTime }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12" style="text-align: center;">
			<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="modifyBtn" onclick="location.href='modifyForm.do?courseCode=${course.courseCode}';">수정</button>
			<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="removeBtn" onclick="location.href='remove.do?courseCode=${course.courseCode}';">삭제</button>
			<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="cancelBtn" onclick="CloseWindow();">닫기</button>
		</div>
	</div>
	<section class="section bg-light"></section>
</body>











