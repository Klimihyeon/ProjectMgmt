<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>opendeco</title>
<%@ include file="/WEB-INF/views/include/style.jsp"%>
<decorator:head />
</head>

<body class="vertical-layout vertical-menu-modern navbar-floating footer-static" data-open="click" data-menu="vertical-menu-modern" data-col="">


<decorator:body />

<%@ include file="/WEB-INF/views/include/js.jsp" %>
</body>

</html>









