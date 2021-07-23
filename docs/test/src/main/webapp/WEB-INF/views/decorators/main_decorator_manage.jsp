<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.pace-done {
	width: 99%;
}</style>
<title><decorator:title default="default title" /></title>

<%@ include file="/WEB-INF/views/include/manage/style_manage.jsp"%>
<decorator:head />
</head>
<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="" onload="init_manage();">
<decorator:body />
</body>

<%@ include file="/WEB-INF/views/include/manage/js_manage.jsp"%>
</html>