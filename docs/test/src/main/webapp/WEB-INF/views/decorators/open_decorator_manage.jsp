<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<title><decorator:title default="default title" /></title>
<%@ include file="/WEB-INF/views/include/manage/style_manage.jsp"%>
<decorator:head />
</head>
<body>

	<decorator:body />

	<%@ include file="/WEB-INF/views/include/manage/js_manage.jsp"%>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
</body>
</html>