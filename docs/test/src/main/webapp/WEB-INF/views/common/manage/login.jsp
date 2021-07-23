<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>JOBSTICK ADMIN LOGIN</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/images/ico/favicon.ico">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/themes/semi-dark-layout.min.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/core/menu/menu-types/vertical-menu.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/app-assets/css/pages/page-auth.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/assets/css/style.css">
    <!-- END: Custom CSS-->
<style type="text/css">
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body, nav, ul, span {
	font-family: 'GmarketSansMedium';
}
</style>
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="vertical-layout vertical-menu-modern blank-page navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="blank-page">
    <!-- BEGIN: Content-->
      <div class="content-overlay"></div>
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
          <div class="auth-wrapper auth-v2">
            <div class="auth-inner row m-0">
              <!-- Brand logo--><a class="brand-logo" href="#">
        			<img src="<%=request.getContextPath()%>/resources/vuexy/images/logo4.png" height="40">
                </a>
              <!-- /Brand logo-->
              <!-- Left Text-->
              <div class="d-none d-lg-flex col-lg-8 align-items-center p-5">
                <div class="w-100 d-lg-flex align-items-center justify-content-center px-5"><img class="img-fluid" src="<%=request.getContextPath() %>/resources/vuexy/app-assets/images/pages/login-v2.svg" alt="Login V2"/></div>
              </div>
              <!-- /Left Text-->
              <!-- Login-->
              <div class="d-flex col-lg-4 align-items-center auth-bg px-2 p-lg-5">
                <div class="col-12 col-sm-8 col-md-6 col-lg-12 px-xl-2 mx-auto">

                 	<center>
                 		<img src="<%=request.getContextPath()%>/resources/vuexy/images/logo4.png" height="40">
                 	</center>


               	<!-- 임시 로그인 관련 : value(ID값), role(PWD값)      start -->
                 	<div>&nbsp;</div><div>&nbsp;</div>
                 	<label for="mimi">교육생(mimi)</label><input type="radio" id="mimi" name="tmpUserId" value="mimi" role="mimi">
                 	<label for="teacher">교강사(teacher)</label><input type="radio" id="teacher" name="tmpUserId" value="teacher" role="1"><br><br>
                 	<label for="testfa">교직원(testfa)</label><input type="radio" id="testfa" name="tmpUserId" value="testfa" role="fa">
                 	<label for="testad">관리자(testad)</label><input type="radio" id="testad" name="tmpUserId" value="testad" role="ad"><br>
              	<!-- 임시 로그인 관련 : value(ID값), role(PWD값)      end -->


                  <form role="form" class="auth-login-form mt-2" action="<%=request.getContextPath() %>/common/manage/login.do" method="POST">
                    <div class="form-group">
                      <label class="form-label" for="login-id">ID</label>
                      <input class="form-control" id="login-id" type="text" name="id" placeholder="id를 입력해주세요" aria-describedby="login-id" autofocus="" tabindex="1" value=""/>
                    </div>
                    <br>
                   <div class="form-group">
                      <div class="d-flex justify-content-between">
                        <label class="form-label" for="login-password">Password</label><a href="page-auth-forgot-password-v2.html"><small>Forgot Password?</small></a>
                      </div>
                      <div class="input-group input-group-merge form-password-toggle">
                        <input class="form-control form-control-merge" id="login-password" type="password" name="pwd" value="" placeholder="············" aria-describedby="login-password" tabindex="2"/><span class="input-group-text cursor-pointer"><i data-feather="eye"></i></span>
                      </div>
                    </div>
                    <br>
                  <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" id="remember-me" type="checkbox" tabindex="3"/>
                        <label class="form-check-label" for="remember-me"> Remember Me</label>
                      </div>
                    </div>
                    <br>
                    <button type="submit" class="btn btn-primary w-100" tabindex="4">Sign in</button>
                  </form>
                <p class="text-center mt-2">
                                    <a href="/lms/common/home/index.do">
                                    	<img src="<%=request.getContextPath()%>/resources/vuexy/images/Logo.jpg" height="100">
                                  	  <span>로 이동하기</span>
                                    </a>
                                </p>
                                </div>
              </div>
              <!-- /Login-->
            </div>
          </div>
        </div>
      </div>
    <!-- END: Content-->


    <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/core/app-menu.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/core/app.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/scripts/pages/page-auth-login.js"></script>
    <!-- END: Page JS-->

    <script>
      $(window).on('load',  function(){

        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }

    	$("#login-password").keyup(function(e){
    		if(e.keyCode ==13){
				$("form[role='form']").submit();
    		}
    	});

    	$("input[name='tmpUserId']").change(function(){
    		$("#login-id").val(this.value);
    		$("#login-password").val($(this).attr("role"));
    	})
      })




    </script>
  </body>
  <!-- END: Body-->
</html>