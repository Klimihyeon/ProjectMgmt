<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE html>
<html class="loading" lang="kr" data-textdirection="ltr">
<head>
<%@ include file="/WEB-INF/views/include/style.jsp"%>
<decorator:head />
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="">
<%@ include file="/WEB-INF/views/include/main_header.jsp"%>
<%@ include file="/WEB-INF/views/include/main_aside.jsp"%>
    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

<div class="content-wrapper" style="background-color:#fff;">
	 	<iframe name="ifr" src="<%=request.getContextPath() %>/qr.do" frameborder="0" style="width:100%;height:85vh;"></iframe>
 	</div>

    <script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
        })
    </script>
    <decorator:body />
    
<%@ include file="/WEB-INF/views/include/main_footer.jsp"%>    
<%@ include file="/WEB-INF/views/include/js.jsp"%>    
</body>
<!-- END: Body-->

</html>




