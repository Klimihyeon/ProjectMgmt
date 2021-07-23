<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<script>
	alert("${loginUser.name}님의 정보가 수정되었습니다.");	
	location.href="<%=request.getContextPath()%>/webmember/home/mypage.do?id=${loginUser.usersId}";
</script>

</body>