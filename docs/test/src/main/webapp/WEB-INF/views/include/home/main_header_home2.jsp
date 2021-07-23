<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
<!-- tobii css -->
<link
	href="<%=request.getContextPath()%>/resources/landrick/css/tobii.min.css"
	rel="stylesheet" type="text/css" />
<!-- Icons -->
<link
	href="<%=request.getContextPath()%>/resources/landrick/css/materialdesignicons.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v3.0.6/css/line.css">
<!-- Slider -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/landrick/css/tiny-slider.css" />
<!-- Date picker -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/landrick/css/datepicker.min.css">
<!-- Main Css -->
<link
	href="<%=request.getContextPath()%>/resources/landrick/css/style.css"
	rel="stylesheet" type="text/css" id="theme-opt" />
<link
	href="<%=request.getContextPath()%>/resources/landrick/css/colors/default.css"
	rel="stylesheet" id="color-opt">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>
#topnav .navigation-menu>li>a {
	font-size: 15px;
	font-weight: 500;
}

#topnav .navigation-menu>li .submenu li a {
	font-size: 15px;
	font-weight: 500;
}
#spanSize{
	font-size: 14px;
	color: #b1b1b1;
}
</style>
<header id="topnav" class="defaultscroll sticky">
	<div class="container">
		<!-- Logo container-->
		<a class="logo" href="<%=request.getContextPath()%>/common/home/index.do">
			<span class="logo-light-mode"> <img
				src="<%=request.getContextPath()%>/resources/landrick/img/logo.png"
				class="l-dark" height="24" alt=""> <img
				src="<%=request.getContextPath()%>/resources/landrick/img/logo-light.png"
				class="l-light" height="24" alt="">
		</span> <img
			src="<%=request.getContextPath()%>/resources/landrick/img/logo-light.png"
			height="24" class="logo-dark-mode" alt="">
		</a>

		<!-- End Logo container-->
		<div class="menu-extras">
			<div class="menu-item">
				<!-- Mobile menu toggle-->
				<a class="navbar-toggle" id="isToggle" onclick="toggleMenu()">
					<div class="lines">
						<span></span> <span></span> <span></span>
					</div>
				</a>
				<!-- End mobile menu toggle-->
			</div>
		</div>
		
		<!-- 로그인 안했을 때 -->
		<c:if test="${empty loginUser.authority}">
			<div class="buy-button">
				<a href="<%=request.getContextPath()%>/common/home/loginForm.do"
					target="_blank" class="btn btn-primary">login</a>
			</div>
		</c:if>

		<!-- 로그인 했을 때 -->
		<c:if test="${not empty loginUser.usersId}"> 
		
			<!-- 웹회원일 때 -->
			<c:if test="${loginUser.authority eq '웹회원'}">					
				
				<ul class="buy-button list-inline mb-0">
					<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>				
					<span id="spanSize"><b> ${loginUser.name } 님 &nbsp; </b></span>
					<!-- 마이페이지 -->
                    <li class="list-inline-item mb-0">
                        <a href="<%=request.getContextPath() %>/webmember/home/mypage.do?id=${loginUser.usersId}">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-soft-primary">
									<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                    <!-- 로그아웃 -->
                    <li class="list-inline-item ps-1 mb-0">
                        <a href="<%=request.getContextPath() %>/common/home/logout.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-primary">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                </ul>
            </c:if> <!-- 웹회원 끝 --> 
            
			<!-- 기업회원일 때 -->
			<c:if test="${loginUser.authority eq '기업회원'}">					
				
				<ul class="buy-button list-inline mb-0">
					<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>	
					<span id="spanSize"><b>${loginUser.comName } 님 &nbsp; </b></span>
					<!-- 마이페이지 -->
                    <li class="list-inline-item mb-0">
                        <a href="<%=request.getContextPath() %>/company/home/mypage.do?comId=${loginUser.usersId}">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-soft-primary">
									<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                    <!-- 로그아웃 -->
                    <li class="list-inline-item ps-1 mb-0">
                        <a href="<%=request.getContextPath() %>/common/home/logout.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-primary">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                </ul>
            </c:if> <!-- 기업회원 끝 --> 
            
			<!-- 교육생일 때 -->
			<c:if test="${loginUser.authority eq '교육생'}">					
				
				<ul class="buy-button list-inline mb-0">
					<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>	
					<span id="spanSize"><b>${loginUser.name } 님 &nbsp; </b></span>
					<!-- 마이페이지 -->
                    <li class="list-inline-item mb-0">
                        <a href="<%=request.getContextPath() %>/student/manage/index.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-soft-primary">
									<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                    <!-- 로그아웃 -->
                    <li class="list-inline-item ps-1 mb-0">
                        <a href="<%=request.getContextPath() %>/common/home/logout.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-primary">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                </ul>
            </c:if> <!-- 기업회원 끝 --> 
            
			<!-- 교강사 일 때 -->
			<c:if test="${loginUser.authority eq '교강사'}">					
				
				<ul class="buy-button list-inline mb-0">
					<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>	
					<span id="spanSize"><b>${loginUser.profName } 님 &nbsp; </b></span>
					<!-- 마이페이지 -->
                    <li class="list-inline-item mb-0">
                        <a href="<%=request.getContextPath() %>/professor/manage/index.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-soft-primary">
									<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                    <!-- 로그아웃 -->
                    <li class="list-inline-item ps-1 mb-0">
                        <a href="<%=request.getContextPath() %>/common/home/logout.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-primary">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                </ul>
            </c:if> <!-- 교강사 끝 --> 
            
			<!-- 교직원 일 때 -->
			<c:if test="${loginUser.authority eq '교직원'}">					
				
				<ul class="buy-button list-inline mb-0">
					<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>	
					<span id="spanSize"><b>${loginUser.facName } 님 &nbsp; </b></span>
					<!-- 마이페이지 -->
                    <li class="list-inline-item mb-0">
                        <a href="<%=request.getContextPath() %>/factly/manage/index.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-soft-primary">
									<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                    <!-- 로그아웃 -->
                    <li class="list-inline-item ps-1 mb-0">
                        <a href="<%=request.getContextPath() %>/common/home/logout.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-primary">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                </ul>
            </c:if> <!-- 교직원 끝 --> 
            
			<!-- 관리자 일 때 -->
			<c:if test="${loginUser.authority eq '관리자'}">					
				
				<ul class="buy-button list-inline mb-0">
					<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>	
					<span id="spanSize"><b> ${loginUser.adminName } 님 &nbsp; </b></span>
					<!-- 마이페이지 -->
                    <li class="list-inline-item mb-0">
                        <a href="<%=request.getContextPath() %>/admin/manage/index.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-soft-primary">
									<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-cog" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                    <!-- 로그아웃 -->
                    <li class="list-inline-item ps-1 mb-0">
                        <a href="<%=request.getContextPath() %>/common/home/logout.do">
                            <div class="login-btn-primary">
	                            <span class="btn btn-icon btn-pills btn-primary">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                            <div class="login-btn-light">
	                            <span class="btn btn-icon btn-pills btn-light">
	                            	<i class="fa fa-sign-out" aria-hidden="true"></i>
								</span>
							</div>
                        </a>
                    </li>
                </ul>
            </c:if> <!-- 관리자 끝 --> 
				
		</c:if><!-- 로그인 했을 때 끝 -->

		<div id="navigation">
			<!-- Navigation Menu-->
			<ul class="navigation-menu nav-light">

				<c:forEach var="menu" items="${menuList }" varStatus="vs">
					<c:if test="${menu.menuCode ne 'M000000'}">
						<li class="has-submenu parent-menu-item">
						<a href="<%=request.getContextPath() %>${menu.menuUrl}" class="sub-menu-item">
							<i class="${menu.menuIcon} "></i>${menu.menuName }
						</a>
						<c:set var="code" value="${menu.menuCode}" /> <c:set
								var="subMenuSize" value="${fn:length(subMenuList[vs.index])}" />
							<c:if test="${subMenuSize ne 0}">
								<span class="menu-arrow"></span>
								<ul class="submenu">
									<c:forEach var="subMenu" items="${subMenuList[vs.index]}">
										<li><a
											href="<%=request.getContextPath() %>${subMenu.menuUrl}">${subMenu.menuName }</a>
										</li>
									</c:forEach>
								</ul>
							</c:if></li>
					</c:if>
				</c:forEach>
			</ul>
			<!--end navigation menu-->
		</div>
		<!--end navigation-->
	</div>
	<!--end container-->
</header>

		<!-- Back to top -->
	<a href="#" onclick="topFunction()" id="back-to-top"
		class="btn btn-icon btn-primary back-to-top" style="display: none;">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up icons">
			<line x1="12" y1="19" x2="12" y2="5"></line>
			<polyline points="5 12 12 5 19 12"></polyline>
		</svg></a>
	<!-- Back to top -->

	<%@ include file="/WEB-INF/views/include/home/js_home.jsp" %>   