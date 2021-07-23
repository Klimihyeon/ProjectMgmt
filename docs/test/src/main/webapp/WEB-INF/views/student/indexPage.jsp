<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>students's Home</title>
<head>
<style>
	*{margin:0;padding:0;}
</style>
</head>

<body class="vertical-layout vertical-menu-modern navbar-floating footer-static" data-open="click" data-menu="vertical-menu-modern" data-col="">
 	<%@ include file="/WEB-INF/views/include/manage/main_header_manage.jsp" %>

 	<%@ include file="/WEB-INF/views/include/manage/main_aside_manage.jsp" %>

	<div class="app-content content">
		<div class="content-overlay"></div>
		<div class="content-wrapper container-xxl p-0">
			<div class="content-body">
				<iframe id="ifr" name="ifr" src="<%=request.getContextPath()%>/student/manage/main.do" frameborder="0" style="width: 100%;" onLoad="resizeHeight('ifr');"></iframe>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/include/manage/main_footer_manage.jsp" %>

<!-- handlebars -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/index.js"></script>
<script type="text/x-handlebars-template"  id="subMenu-list-template" >
{{#each .}}
	<li class="nav-item subMenu" >
      	<a href="javascript:goPage('{{menuUrl}}','{{menuCode}}');"
			class="d-flex align-items-center">
			<i data-feather="{{menuIcon}}"></i>
			<span class="menu-item text-truncate" data-i18n="List">{{menuName}}</span>
        </a>
	</li>
{{/each}}
</script>

<script>

function resizeHeight(id)
{
    var the_height = document.getElementById(id).contentWindow.document.body.scrollHeight;
    document.getElementById(id).height = the_height + 30;
}

function init_manage(){
	goPage('${menu.menuUrl}','${menu.menuCode}');
	subMenu_manage('${menu.menuCode}'.substring(0,3)+"0000");
}
</script>
</body>