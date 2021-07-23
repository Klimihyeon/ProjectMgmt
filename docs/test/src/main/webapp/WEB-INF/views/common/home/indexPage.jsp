
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>메인화면</title>
<head>
<style>
	*{margin:0;padding:0;}
</style>
</head>

<body>
 	<%@ include file="/WEB-INF/views/include/home/main_header_home.jsp" %>

	<section class="bg-half-170 d-table w-100" id="textChange">
		<%@ include file="/WEB-INF/views/common/home/main.jsp" %>
	</section>

	<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp" %>
        <a href="#" onclick="topFunction()" id="back-to-top" class="btn btn-icon btn-primary back-to-top"><i data-feather="arrow-up" class="icons"></i></a>

	 	<script src="<%=request.getContextPath() %>/resources/js/index.js"></script>
<script>
function resizeHeight(id)
{
    var the_height = document.getElementById(id).contentWindow.document.body.scrollHeight;
    document.getElementById(id).height = the_height + 30;
}

function init(){
	goPage('${menu.menuUrl}','${menu.menuCode}');
// 	subMenu('${menu.menuCode}'.substring(0,3)+"0000");
}
</script>
</body>