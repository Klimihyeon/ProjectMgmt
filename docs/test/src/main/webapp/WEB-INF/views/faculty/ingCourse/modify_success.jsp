<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


<script>
	alert("교육과정의 정보가 수정되었습니다.");
	location.href='detail.do?courseCode=${course.courseCode}';
</script>