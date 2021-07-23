<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 폰트적용이니까 건들지 마셈 -->
<style type="text/css">
@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body, nav, ul, span {
	font-family: 'GmarketSansMedium';
}
</style>
<!-- BEGIN: Main Menu-->
<div class="main-menu menu-fixed menu-light menu-accordion menu-shadow expanded"
	data-scroll-to-active="true"
	style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
	<div class="navbar-header expanded">
		<ul class="nav navbar-nav flex-row">
			<li class="nav-item me-auto"><c:if
					test="${loginUser.authority eq '교육생'}">
					<a href="<%=request.getContextPath()%>/student/manage/index.do">
				</c:if> <c:if test="${loginUser.authority eq '교강사'}">
					<a href="<%=request.getContextPath()%>/professor/manage/index.do">
				</c:if> <c:if test="${loginUser.authority eq '교직원'}">
					<a href="<%=request.getContextPath()%>/faculty/manage/index.do">
				</c:if> <c:if test="${loginUser.authority eq '시스템관리자'}">
					<a href="<%=request.getContextPath()%>/admin/manage/index.do">
				</c:if> <img class="navbar-brand"
				src="<%=request.getContextPath()%>/resources/vuexy/images/logo4.png"
				height="30"> <span class="brand-logo"></span> </a></li>

			<li class="nav-item nav-toggle"><a
				class="nav-link modern-nav-toggle pe-0" data-bs-toggle="collapse"><svg
						xmlns="http://www.w3.org/2000/svg" width="14" height="14"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-x d-block d-xl-none text-primary toggle-icon font-medium-4">
						<line x1="18" y1="6" x2="6" y2="18"></line>
						<line x1="6" y1="6" x2="18" y2="18"></line></svg>
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-disc d-none d-xl-block collapse-toggle-icon primary font-medium-4">
						<circle cx="12" cy="12" r="10"></circle>
						<circle cx="12" cy="12" r="3"></circle></svg></a></li>
		</ul>
	</div>
	<div class="shadow-bottom" style="display: none;"></div>
	<!--         <div class="shadow-bottom"></div> -->

	<div class="main-menu-content ps ps--active-y">
		<ul class="navigation navigation-main" id="main-menu-navigation"
			data-menu="menu-navigation">

			<c:set var="UsersAuthority" value="${loginUser.authority }" />

			<c:if test="${UsersAuthority eq '교강사' }">
				<br>
				<div style="margin-left: 15px;">
					<select class="form-select d-flex align-items-center"
						id="selectDefault" style="display: none; width: 80%;">
						<option value="">과정선택</option>
						<c:forEach var="list" items="${classList}">
							<option value="${list.ingCourseCode }">${list.courseName }</option>
						</c:forEach>
					</select>
				</div>
			</c:if>
		</ul>

		<!-- 서브메뉴 타이틀 -->

				<li class=" navigation-header"><span data-i18n="Apps &amp; Pages">${loginUser.authority} &nbspSubMenu</span></li>
				<br>
				
				
		<ul class="submenuList navigation navigation-main"
			id="main-menu-navigation" data-menu="menu-navigation"></ul>
		<script type="text/x-handlebars-template" id="subMenu-list-template">
			 {{#each .}}
				{{#if subMenuList}}
 					<li class="nav-item" >
      				 	<a href="#" class="d-flex align-items-center">
 							<span class="menu-title text-truncate" >
								<img src="<%=request.getContextPath()%>/resources/vuexy/images/check-mark.png" height="15">
								{{menuName}}</span>
      				   </a>
						<ui class="menu-content" >
							{{#each subMenuList}}
								<li class="nav-item">
									<a href="javascript:goPage('{{menuUrl}}','{{menuCode}}');"
								  	  class="d-flex align-items-center">
 										<i data-feather="{{menuIcon}}"></i>
 										<span class="menu-item text-truncate" data-i18n="Third Level">
										{{menuName}}</span>
         							</a>
								</li>
							{{/each}}
						</ui>
 					</li>
				{{else}}
 					<li class="nav-item " >
     				  	<a href="javascript:goPage('{{menuUrl}}','{{menuCode}}');" class="d-flex align-items-center">

 							<span class="menu-item text-truncate" data-i18n="List">
							<img src="<%=request.getContextPath()%>/resources/vuexy/images/check-mark.png" height="15"> {{menuName}}
							</span>
      				    </a>
 					</li>
				{{/if}}
			 {{/each}}
			</script>
		<!-- <i data-feather="{{menuIcon}}"></i> -->
		</ul>
	</div>
</div>
<script>
				//select 쿠키저장
				var _rolling_interval = "";
				$(document).ready(function(){
					function setCookie(cName, cValue, expiredays) {
						var today = new Date();
						today.setDate( today.getDate() + expiredays );
						document.cookie = cName + "=" + escape( cValue ) + "; path=/; expires=" + today.toGMTString() + ";"
					}
					function getCookie() { // userid 쿠키에서 id 값을 가져온다.
						var cook = document.cookie + ";";
						var key = 'hcn_total_dashbd';
						var idx = cook.indexOf(key, 0); var val = "";
						if(idx != -1) {
							cook = cook.substring(idx, cook.length);
							begin = cook.indexOf("=", 0) + 1;
							end = cook.indexOf(";", begin);
							val = unescape( cook.substring(begin, end) );
						} // 가져온 쿠키값이 있으면

						if(val!= "") {
							$("#selectDefault").val( val );
							_rolling_interval = val;
						}else{
							$("#selectDefault").val( _rolling_interval );
						}
					}
					getCookie();
					$("#selectDefault").change(function(e){
						var _rolling_interval = $(this).val();
						setCookie("hcn_total_dashbd", _rolling_interval, 7);
					});
				});


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

<!-- END: Main Menu-->