<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>JOBSTICK - IT교육에 모든 것!</title>
</head>

<style>
#topnav .navigation-menu > li > a {
font-size:15px;
font-weight: 500;
}
#topnav .navigation-menu > li .submenu li a {
font-size:15px;
font-weight: 500;
}
#spanSize{
	font-size: 14px;
	color: #2443ac;
}
</style>
<!-- Navbar STart -->
        <header id="topnav" class="defaultscroll sticky">
            <div class="container">
                <!-- Logo container-->
                <a class="logo" href="<%=request.getContextPath() %>/common/home/index.do">
                    <img src="<%=request.getContextPath()%>/resources/landrick/img/logo.png" height="24" class="logo-light-mode" alt="">
					<img src="<%=request.getContextPath()%>/resources/landrick/images/logo-light.png" height="24" class="logo-dark-mode" alt="">
                </a>
		
		<!-- 로그인 섹션 -->
		<ul class="buy-button list-inline mb-0"> 
		
		<!-- 로그인 안했을 때 -->
		<c:if test="${empty loginUser.authority}">
			<div class="buy-button">
				<a href="<%=request.getContextPath() %>/common/home/loginForm.do"
					class="btn btn-primary">login</a>
			</div>
		</c:if>
							
		<!-- 로그인 했을 때 -->
		<c:if test="${not empty loginUser.usersId}"> 
					
			<!-- 웹회원일 때 -->
			<c:if test="${loginUser.authority eq '웹회원'}">		
				<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>			
				<span id="spanSize"><b> ${loginUser.name } 님 &nbsp; </b></span>
				
				<!-- 마이페이지 -->
                <li class="list-inline-item mb-0">
                     <a href="<%=request.getContextPath() %>/webmember/home/mypage.do?id=${loginUser.usersId}">
                        <div class="btn btn-icon btn-pills btn-soft-primary">
                        	<i class="fa fa-cog" aria-hidden="true"></i>
						</div>
                    </a>
                </li>
			                
               <!-- 로그아웃 -->
               <li class="list-inline-item ps-1 mb-0">                    	
                   <a href="<%=request.getContextPath() %>/common/home/logout.do">
                       <div class="btn btn-icon btn-pills btn-primary">
                       	<i class="fa fa-sign-out" aria-hidden="true"></i>
                       </div>
                   </a>
               </li>
			</c:if>
				
			<!-- 기업회원일 때 -->
			<c:if test="${loginUser.authority eq '기업회원'}">	
			<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>					
				<span id="spanSize"><b>${loginUser.comName }님</b></span>
				
				<!-- 마이페이지 -->
                <li class="list-inline-item mb-0">
                    <a href="<%=request.getContextPath() %>/company/home/mypage.do?comId=${loginUser.usersId}">
                        <div class="btn btn-icon btn-pills btn-soft-primary">
                        	<i class="fa fa-cog" aria-hidden="true"></i>
						</div>
                    </a>
                </li>
                
                <!-- 로그아웃 -->
                <li class="list-inline-item ps-1 mb-0">                    	
                    <a href="<%=request.getContextPath() %>/common/home/logout.do">
                        <div class="btn btn-icon btn-pills btn-primary">
                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                        </div>
                    </a>
                </li>
			</c:if>     
			               
			<!-- 기업회원일 때 -->
			<c:if test="${loginUser.authority eq '교육생'}">		
			<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>					
				<span id="spanSize"><b>${loginUser.name }님</b></span>
				
				<!-- 마이페이지 -->
                <li class="list-inline-item mb-0">
                    <a href="<%=request.getContextPath() %>/student/manage/index.do">
                        <div class="btn btn-icon btn-pills btn-soft-primary">
                        	<i class="fa fa-cog" aria-hidden="true"></i>
						</div>
                    </a>
                </li>
                
                <!-- 로그아웃 -->
                <li class="list-inline-item ps-1 mb-0">                    	
                    <a href="<%=request.getContextPath() %>/common/home/logout.do">
                        <div class="btn btn-icon btn-pills btn-primary">
                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                        </div>
                    </a>
                </li>
			</c:if>                    
				
			<!-- 교강사일 때 -->
			<c:if test="${loginUser.authority eq '교강사'}">		
			<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>					
				<span id="spanSize"><b>${loginUser.profName }님</b></span>
				
				<!-- 마이페이지 -->
                <li class="list-inline-item mb-0">
                    <a href="<%=request.getContextPath() %>/professor/manage/index.do">
                        <div class="btn btn-icon btn-pills btn-soft-primary">
                        	<i class="fa fa-cog" aria-hidden="true"></i>
						</div>
                    </a>
                </li>
                
                <!-- 로그아웃 -->
                <li class="list-inline-item ps-1 mb-0">                    	
                    <a href="<%=request.getContextPath() %>/common/home/logout.do">
                        <div class="btn btn-icon btn-pills btn-primary">
                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                        </div>
                    </a>
                </li>
			</c:if>                    
				
			<!-- 교직원일 때 -->
			<c:if test="${loginUser.authority eq '교직원'}">	
			<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>							
				<span id="spanSize"><b>${loginUser.facName }님</b></span>
				
				<!-- 마이페이지 -->
                <li class="list-inline-item mb-0">
                    <a href="<%=request.getContextPath() %>/factly/manage/index.do">
                    	<div class="btn btn-icon btn-pills btn-soft-primary">
                        	<i class="fa fa-cog" aria-hidden="true"></i>
						</div>
                    </a>
                </li>
                
                <!-- 로그아웃 -->
                <li class="list-inline-item ps-1 mb-0">                    	
                    <a href="<%=request.getContextPath() %>/common/home/logout.do">
                        <div class="btn btn-icon btn-pills btn-primary">
                       	 <i class="fa fa-sign-out" aria-hidden="true"></i>
                        </div>
                    </a>
                </li>
			</c:if>                    
				
			<!-- 관리자일 때 -->
			<c:if test="${loginUser.authority eq '관리자'}">		
			<span class="badge rounded-pill bg-soft-primary me-2 mt-2">${loginUser.authority}</span>				
				<span id="spanSize"><b>${loginUser.adminName } 님</b></span>
				
				<!-- 마이페이지 -->
                <li class="list-inline-item mb-0">
                    <a href="<%=request.getContextPath() %>/admin/manage/index.do">
                    	<div class="btn btn-icon btn-pills btn-soft-primary">
                        	<i class="fa fa-cog" aria-hidden="true"></i>
						</div>
                    </a>
                </li>
                
                <!-- 로그아웃 -->
                <li class="list-inline-item ps-1 mb-0">                    	
                    <a href="<%=request.getContextPath() %>/common/home/logout.do">
                        <div class="btn btn-icon btn-pills btn-primary">
                        	<i class="fa fa-sign-out" aria-hidden="true"></i>
                        </div>
                    </a>
                </li>
			</c:if>                    
                    
       </c:if> <!-- 로그인 했을 때 끝 --> 
       </ul> <!-- 로그인 부분 끝 -->

                </div><!--end login button-->
                <!-- End Logo container-->
                <div class="menu-extras">
                    <div class="menu-item">
                        <!-- Mobile menu toggle-->
                        <a class="navbar-toggle" id="isToggle" onclick="toggleMenu()">
                            <div class="lines">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </a>
                        <!-- End mobile menu toggle-->
                    </div>
                </div>

                <div id="navigation">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu">

  				<c:forEach var="menu" items="${menuList }" varStatus="vs">
  				<c:if test="${menu.menuCode ne 'M000000'}">
				<li class="has-submenu parent-menu-item">
					<a href="<%=request.getContextPath() %>${menu.menuUrl}"
					class="sub-menu-item"> <i class="${menu.menuIcon} "></i>${menu.menuName }
					</a>
<%-- 					<a href="javascript:goPage('/home${menu.menuUrl}','${menu.menuCode}');"  --%>
<%-- 					class="sub-menu-item"> <i class="${menu.menuIcon} "></i>${menu.menuName } --%>
<!-- 					</a> -->
				<c:set var="code" value="${menu.menuCode}" />
				<c:set var="subMenuSize" value="${fn:length(subMenuList[vs.index])}" />
					<c:if test="${subMenuSize ne 0}">
					<span class="menu-arrow"></span>
					 <ul class="submenu">
		  				<c:forEach var="subMenu" items="${subMenuList[vs.index]}">
		  						<li>
									<a href="<%=request.getContextPath() %>${subMenu.menuUrl}">${subMenu.menuName }</a>
		  						</li>
						</c:forEach>
                     </ul>
                     </c:if>
				</li>
				</c:if>
				</c:forEach>
                    </ul><!--end navigation menu-->
                    <div class="buy-menu-btn d-none">
                        <a href="https://1.envato.market/4n73n" target="_blank" class="btn btn-primary">??</a>
                    </div><!--end login button-->
                </div><!--end navigation-->
            </div><!--end container-->
        </header><!--end header-->
        <!-- Navbar End -->

		<!-- Back to top -->
	<a href="#" onclick="topFunction()" id="back-to-top"
		class="btn btn-icon btn-primary back-to-top" style="display: none;">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up icons">
			<line x1="12" y1="19" x2="12" y2="5"></line>
			<polyline points="5 12 12 5 19 12"></polyline>
		</svg></a>
	<!-- Back to top -->

	<%@ include file="/WEB-INF/views/include/home/js_home.jsp" %>   