<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>교직원 페이지</title>
<head>
</head>

<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static" 
data-open="click" data-menu="vertical-menu-modern" data-col="" onload="init_manage();">

 	<%@ include file="/WEB-INF/views/include/manage/main_header_manage.jsp" %>

 	<%@ include file="/WEB-INF/views/include/manage/main_aside_manage.jsp" %>

	<div class="app-content content">
		<div class="content-overlay"></div>
		<div class="header-navbar-shadow"></div>
		<div class="content-wrapper container-xxl p-0">
			<div class="content-body">
		<iframe id="ifr" name="ifr" src="<%=request.getContextPath() %>/professor/manage/main.do" frameborder="0" style="width:100%;"onLoad="resizeHeight('ifr');"></iframe>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/include/manage/main_footer_manage.jsp" %>
</body>