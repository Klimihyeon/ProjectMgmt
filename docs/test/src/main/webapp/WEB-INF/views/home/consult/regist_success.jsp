<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<script>
	alert("상담신청을 완료 하였습니다.\n 상담신청내역에서 조회 가능합니다.");
	location.href="<%=request.getContextPath()%>/webmember/home/consult/registForm.do";
</script>
</body>