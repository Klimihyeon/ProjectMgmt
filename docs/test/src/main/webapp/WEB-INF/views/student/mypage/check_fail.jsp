<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<script>
	alert("비밀번호가 틀렸습니다. \n 다시입력해주세요.");
	location.href="checkForm.do?id=${student.usersId}"
</script>