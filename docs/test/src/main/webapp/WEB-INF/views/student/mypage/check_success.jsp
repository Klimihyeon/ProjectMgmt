<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<script>
	alert("비밀번호 확인이 완료되었습니다.");
	window.resizeBy(100,750);
	location.href="modifyForm.do?id=${student.usersId}"
</script>