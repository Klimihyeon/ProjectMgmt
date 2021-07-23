<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<script>

<%-- 	if(location.pathname== "<%=request.getContextPath()%>/common/home/job/list.do"){ --%>
// 		alert("교육생/기업회원 O");

	if(location.pathname== "<%=request.getContextPath()%>/webmember/home/consult/registForm.do"){
		alert("입학상담 신청은 회원만 이용 가능합니다.");
	}else{
		alert("권한이 없습니다.");
	}
	if (window.opener) {
		window.close();
	} else {
		history.go(-1);
	}
</script>