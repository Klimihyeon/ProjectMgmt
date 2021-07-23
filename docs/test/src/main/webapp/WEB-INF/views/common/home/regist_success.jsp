<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<script>
	alert("회원가입을 완료 하였습니다.\n 메인화면으로 이동합니다.");

	location.href="<%=request.getContextPath()%>/common/home/index.do";

</script>
</body>