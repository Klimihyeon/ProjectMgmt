<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title>과목 상세보기</title>

<section class="bg-half-170 d-table w-100"></section>

<body>
<h1>과목 상세조회</h1>
<table>
	<thead>
		<tr>
			<th>과목명</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${subject.subName}</td>
			<td>${subject.facName}</td>
			<td><fmt:formatDate value="${subject.subDate }" pattern="yy-MM-dd" /></td>
		</tr>
	</tbody>
</table>

<button type="button" id="modifyBtn" onclick="location.href='modifyForm.do?subCode=${subject.subCode}';">수정</button>
<button type="button" id="removeBtn" onclick="location.href='remove.do?subCode=${subject.subCode}';">삭제</button>
<button type="button" id="cancelBtn" onclick="CloseWindow();">닫기</button>

<section class="section bg-light"></section>

</body>










