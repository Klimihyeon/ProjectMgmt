<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<script>
	alert("상담일지 작성이 완료되었습니다.\n 상담 내역 조회  페이지로 이동합니다.");
	window.opener.parent.location.reload();
	window.close();
</script>
</body>