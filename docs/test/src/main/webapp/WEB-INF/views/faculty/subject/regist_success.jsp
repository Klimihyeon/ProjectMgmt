<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<script>
	alert("교과목 등록에 성공했습니다.\n 교과목 조회 페이지로 이동합니다.");


	window.opener.parent.location.reload();
	window.close();

</script>
</body>