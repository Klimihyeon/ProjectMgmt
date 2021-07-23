<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<script>
	alert("가입승인이 완료됐습니다.\n 기업회원 목록조회 페이지로 이동합니다.");

	window.opener.parent.location.reload();
	window.close();
</script>
</body>