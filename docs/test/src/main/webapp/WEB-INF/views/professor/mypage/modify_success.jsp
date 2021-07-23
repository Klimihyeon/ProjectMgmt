<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	alert("${loginUser.usersId}님의 정보가 수정되었습니다.");	
	location.href='main.do?usersId=${loginUser.usersId}';
</script>