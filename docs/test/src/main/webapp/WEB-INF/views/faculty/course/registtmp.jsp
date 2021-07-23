<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title>교육과정 상세보기</title>

<section class="bg-half-170 d-table w-100"></section>

<body>
<h1>교육과정 상세조회</h1>
<table border="1">
		<thead>
			<tr>
				<th>과정구분</th>
				<th>과정명</th>
				<th>회차</th>
				<th>기간</th>
				<th>강의실</th>
				<th>상태</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${ingCourse.courseType}</td>
					<td><a href="javascript:OpenWindow('detail.do?ingCourseCode=${ingCourse.ingCourseCode }','상세보기',800,700)">${ingCourse.courseName}</a></td>
					<td>${ingCourse.ingCourseCount}</td>
					<td><fmt:formatDate value="${ingCourse.ingCourseBeginDate }" pattern="yy-MM-dd" /> ~ <fmt:formatDate value="${ingCourse.ingCourseEndDate }" pattern="yy-MM-dd" /></td>
					<td>${ingCourse.roomCode}</td>
					<td>${ingCourse.ingCourseYn}</td>
					<td>${ingCourse.facId}</td>
					<td><fmt:formatDate value="${ingCourse.ingCourseRegdate}" pattern="yy-MM-dd" /></td>
				</tr>
		</tbody>
	</table>
<table border="1">
<thead>
	<tr>
		<th>교과목명</th>
		<th>기간</th>
		<th>과목시간</th>
		<th>총시간</th>
		<th>강사명</th>
		<th>강의계획서</th>
	</tr>
</thead>
	<tbody>
	<c:forEach var="subInIngCourse" items="${subInIngCourseList }">
	<tr>
		<td>${subInIngCourse.subName}</td>
		<td><fmt:formatDate value="${subInIngCourse.subBdate }" pattern="yy-MM-dd" /> ~ <fmt:formatDate value="${subInIngCourse.subEdate }" pattern="yy-MM-dd" /> </td>
		<td>${subInIngCourse.subTime }</td>
		<td>${subInIngCourse.subDayTime }</td>
		<td>${subInIngCourse.profId }</td>
		<td><a href="#"><button type="button"class="btn btn-primary">강의계획서${subInIngCourse.planCode }</button></a></td>
	</tr>
	</c:forEach>
	</tbody>
</table>
<button type="button" id="modifyBtn" onclick="location.href='modifyForm.do?ingCourseCode=${ingCourse.ingCourseCode}';">수정</button>
<button type="button" id="removeBtn" onclick="location.href='remove.do?ingCourseCode=${ingCourse.ingCourseCode}';">삭제</button>
<button type="button" id="cancelBtn" onclick="CloseWindow();">닫기</button>

<section class="section bg-light"></section>

</body>











