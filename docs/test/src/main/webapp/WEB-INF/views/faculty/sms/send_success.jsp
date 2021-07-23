private String smsMacroCode;<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	alert("전송이 완료되었습니다.\n"+"[SMS 전송 결과]\n"+"전체 : "+${totalCount}+" 개\n" + "성공 : "+${successCount}+" 개\n"+"실패 : "+${failCount}+" 개\n"+"SMS관리 페이지로 이동합니다.");

	window.location.href='main.do';
</script>
