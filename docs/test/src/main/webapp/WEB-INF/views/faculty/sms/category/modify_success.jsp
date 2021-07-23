private String smsMacroCode;<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<script>
	alert("자동SMS 수정이 완료되었습니다.\n SMS관리 페이지로 이동합니다.");
	location.href="<%=request.getContextPath()%>/faculty/manage/sms/main.do";
</script>
</body>