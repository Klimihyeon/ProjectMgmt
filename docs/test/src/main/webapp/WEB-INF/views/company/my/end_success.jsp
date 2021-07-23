<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


<script>
	alert("공고글이 마감되었습니다.");
	location.href="jobManage.do?comId=${loginUser.usersId}";	
</script>