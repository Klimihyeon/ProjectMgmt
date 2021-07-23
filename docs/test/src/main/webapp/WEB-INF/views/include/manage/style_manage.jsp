<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/resources/vuexy/images/favicon2.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">



<!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/css/calendars/fullcalendar.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
<!-- END: Vendor CSS-->



<!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/themes/semi-dark-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/css/extensions/swiper.min.css">



<!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/pages/app-calendar.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/pages/dashboard-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/plugins/charts/chart-apex.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/plugins/extensions/ext-component-toastr.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/plugins/extensions/ext-component-swiper.css">
<!-- END: Page CSS-->



<!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/assets/css/style.css">
<!-- END: Custom CSS-->



<!-- include summernote css -->
	<link href="<%=request.getContextPath() %>/resources/summernote/summernote.min.css" rel="stylesheet">



<!-- Google Font: Source Sans Pro -->
	<!-- <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet"> -->
	<%-- <link href="<%=request.getContextPath() %>/resources/NewFile.css" rel="stylesheet">  --%>
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400" rel="stylesheet">
    <!-- jquery 지우지마세여-->
    <script src="/lms/resources/vuexy/app-assets/vendors/js/jquery/jquery.min.js"></script>

<!-- 폰트적용이니까 건들지 마셈 -->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/css/pickers/pickadate/pickadate.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/plugins/forms/pickers/form-pickadate.css">

<!-- 폰트적용이니까 건들지 마셈 -->
<style type="text/css">
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body{
	font-family: 'GmarketSansMedium';
}
canvas {
	width: 820px;
	height: 420px;
}
</style>

