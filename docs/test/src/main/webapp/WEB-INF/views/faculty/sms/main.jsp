<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="smsCategoryList" value="${smsCategoryList}" />
<c:set var="smsMacroList" value="${smsMacroList}" />

<title>SMS 관리</title>

<head>
</head>

<body>
	<div class="col-sm-12 row" id="divPadding">
		<h1>SMS(문자메시지) 관리</h1>
		<div>&nbsp;</div><div>&nbsp;</div>
		<h2>매크로관리</h2>
		<div class="card bg-transparent shadow-none">
			<div class="card-header"></div>
			<div class="card-body">
				<div class="swiper-centered-slides swiper-container p-1">
					<div class="swiper-wrapper">
						<c:forEach var="smsMacro" items="${smsMacroList }" varStatus="vs">
							<div class="swiper-slide rounded swiper-shadow">
								<div class="swiper-text pt-md-1 pt-sm-50" style="width:250px">
									<h3>
										<c:set var="ans1" value="${fn:substring(smsMacro.smsMacroCode,'3','8') }" />
										<c:forEach begin="0" end="5">
											<c:set var="ans2" value="${ans1}" />
											<c:if test="${fn:startsWith(ans2,'0')}">
												<c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
											</c:if>
										</c:forEach>
										매크로${ans2 } (${smsMacro.smsMacroName })
									</h3><br>
									<div style="word-break:break-all;word-wrap:break-word;">
										<c:out value="${smsMacro.smsMacroContents }" escapeXml="false" />
									</div>
									<input type="hidden" value="${smsMacro.smsMacroCode }">
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- Add Arrows -->
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
			</div>
		</div>
		<div class="col-md-12" style="text-align: center;">
			<button type="button" class="btn btn-primary" onclick="OpenWindow('macro/registForm.do','입력창',1200,800);">생성</button>
			<button type="button" class="btn btn-primary" onclick="modify_go();">수정</button>
		</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div class="col-sm-6">
			<h2>자동 전송</h2>
			<div class="card">
			<form action="category/modify.do" role="autoSMSForm" method="post">
				<div class="cord-header">
					<div class="heading-elements">
						<ul class="list-inline mb-0" style="text-align: right;">
							<li><a href="#"><button type="button" class="btn autoSMSBtn2" onclick="updateMacro();" style="display: none;"><i data-feather='check'></i></button></a></li>
							<li><a href="#"><button type="button" class="btn autoSMSBtn2" onclick="editMacro();" style="display: none;"><i data-feather='rotate-ccw'></i></button></a></li>
							<li><a href="#"><button type="button" class="btn autoSMSBtn1" onclick="editMacro();"><i data-feather='edit-3'></i></button></a></li>
<!-- 							<li><a data-action="reload"><button type="button" class="btn autoSMSBtn1"><i data-feather='rotate-cw'></i></button></a></li> -->
						</ul>
					</div>
				</div>
				<div class="card-body">
					<div class="row col-md-12">
						<div class="col-md-4">
							<h3>구분</h3>
						</div>
						<div class="col-md-8">
							<h3>매크로명</h3>
						</div>
					</div>
					<div>&nbsp;</div>

					<c:forEach var="smsCategory" items="${smsCategoryList }" varStatus="vs">
						<c:if test="${smsCategory.smsAutoYn eq 'Y' }">
						<div class="row col-md-12">
							<div class="col-md-4">
								<label for="${smsCategory.smsCategoryCode}"> ${smsCategory.smsCategoryName }</label>
								<c:set var="ans1" value="${fn:substring(smsCategory.smsMacroCode,'3','8') }" />
									<c:forEach begin="0" end="5">
												<c:set var="ans2" value="${ans1}" />
												<c:if test="${fn:startsWith(ans2,'0')}">
													<c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
												</c:if>
									</c:forEach>
								<input name="smsCategoryCode" value="${smsCategory.smsCategoryCode }" hidden="">
							</div>
							<div class="col-md-7">

								<input type="text" id="smsMacroCode" id="${smsCategory.smsCategoryCode}" class="form-control" readonly="readonly" value="매크로${ans2 } (${smsCategory.smsMacroName})">

								<select name="smsMacroCode" style="display: none;" class="form-control">
								<c:forEach var="smsMacro" items="${smsMacroList }">
									<c:set var="ans1" value="${fn:substring(smsMacro.smsMacroCode,'3','8') }" />
									<c:forEach begin="0" end="5">
												<c:set var="ans2" value="${ans1}" />
												<c:if test="${fn:startsWith(ans2,'0')}">
													<c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
												</c:if>
									</c:forEach>
									<c:if test="${smsMacro.smsMacroCode eq smsCategory.smsMacroCode}">
									<option selected="selected" id="${smsMacro.smsMacroCode }" value="${smsMacro.smsMacroCode }">매크로${ans2 } (${smsMacro.smsMacroName })</option>
									</c:if>
									<option id="${smsMacro.smsMacroCode }" value="${smsMacro.smsMacroCode }">매크로${ans2 } (${smsMacro.smsMacroName })</option>
								</c:forEach>
								</select>
							</div>
<!-- 							<div class="col-md-1"> -->
<!-- 								<div class="btn-group"> -->
<!-- 									<a class="btn btn-sm dropdown-toggle hide-arrow" data-bs-toggle="dropdown"> <i data-feather='more-vertical'></i></a> -->
<!-- 									<div class="dropdown-menu dropdown-menu-end"> -->
<!-- 										<a href="#" class="dropdown-item">수정</a> <a href="#" class="dropdown-item delete-record">삭제</a> -->
<!-- 									</div> -->
<!-- 									<button type="button" class="btn"></button> -->
<!-- 								</div> -->
<!-- 							</div> -->
						<div class="col-md-1">
							<a href="#"><button type="button" class="btn autoSMSBtn2" onclick="disabledMacro();" style="display: none;"><i data-feather='x'></i></button></a>
						</div>
						</div>
						<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
						</c:if>
					</c:forEach>
				</div>
			</form>
			</div>
		</div>
		<div class="col-sm-6">
			<form action="send.do" role="manualSMSForm" method="post">
				<h2>수동 전송</h2>
				<div class="card manualSMS">
					<div class="cord-header">
						<div class="heading-elements">
							<ul class="list-inline mb-0" style="text-align: right;">
								<li><button class="btn" type="button" onclick="regist_go();"><i data-feather='send'></i></button></li>
								<li><button class="btn" type="button" onclick="eraseForm();"><i data-feather='rotate-ccw'></i></button></li>
<!-- 								<li><a href="#"><button type="button" class="btn"><i data-feather='edit-3'></i></button></a></li> -->
<!-- 								<li><a data-action="reload"><button type="button" class="btn"><i data-feather='rotate-cw'></i></button></a></li> -->
							</ul>
						</div>
					</div>
					<div class="card-body">
						<div class="col-md-12 row">
							<div class="col-md-6">
								<h3>구분</h3>
							</div>
							<div class="col-md-6">
								<h3>입력</h3>
							</div>
						</div>
						<div>&nbsp;</div>
						<div class="row col-md-12">
							<div class="col-md-4">
								<label for="smsCategory">카테고리</label>
							</div>
							<div class="col-md-8">
								<select id="smsCategory" name="smsCategoryCode" class="form-control">
									<option value="">선택</option>
									<c:forEach var="smsCategory" items="${smsCategoryList }" varStatus="vs">
										<c:if test="${smsCategory.smsAutoYn eq 'N' }">
											<option value="${smsCategory.smsCategoryCode }">${smsCategory.smsCategoryName}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
						</div>
						<div>&nbsp;</div>
						<div class="row col-md-12">
							<div class="col-md-4">
								<label for="smsUser">발송대상</label>
							</div>
							<div class="col-md-6">
								<input type="text" id="smsUser" class="form-control" value="" readonly="readonly" style="background-color: silver;">
							</div>
							<div class="col-md-2">
							<button type="button" class="btn" onclick="registUser();"><i data-feather='plus'></i></button>
							</div>

						</div>
						<div>&nbsp;</div>
						<div class="row col-md-12">
							<div class="col-md-4">
								<label for="phone">발신번호</label>
							</div>
							<div class="col-md-8">
								<input type="text" id="phone" class="form-control" name="phone" value="0422228202">
							</div>
						</div>
						<div>&nbsp;</div>
						<div class="row col-md-12">
							<div class="col-md-4">
								<label for="smsMacroCode">매크로</label>
							</div>
							<div class="col-md-8">
								<select id="smsMacroCode" class="form-control" name="smsMacroCode" onchange="macroToSMSContents(this);">
									<option value="">매크로선택</option>
									<c:forEach var="smsMacro" items="${smsMacroList }">
										<option id="${smsMacro.smsMacroCode }" value="${smsMacro.smsMacroCode }">
											<c:set var="ans1" value="${fn:substring(smsMacro.smsMacroCode,'3','8') }" />
											<c:forEach begin="0" end="5">
												<c:set var="ans2" value="${ans1}" />
												<c:if test="${fn:startsWith(ans2,'0')}">
													<c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
												</c:if>
											</c:forEach> 매크로${ans2 } (${smsMacro.smsMacroName })
										</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div>&nbsp;</div>
						<div class="row col-md-12">
							<div class="col-md-4">
								<label for="smsSendContents">내용</label>
							</div>
							<div class="col-md-8">
								<textarea id="smsSendContents" class="form-control" name="smsSendContents"></textarea>
							</div>
						</div>
					</div>
				</div>
				<input type="hidden" name="facId" value="${loginUser.usersId }">
			</form>
		</div>
		<iframe id="ifr1" name="ifr1" src="<%=request.getContextPath()%>/faculty/manage/sms/list.do" frameborder="0" style="width: 100%;" onLoad="resizeHeight('ifr1');"></iframe>
	</div>
	<script>

function updateMacro(){
	$("form[role='autoSMSForm']").submit();
}
function disabledMacro(){
	alert("disabledMacro 실행");
}
function editMacro(){
	if($("form[role='autoSMSForm']").find($("input[id='smsMacroCode']")).css("display")=="none"){
		$("form[role='autoSMSForm']").find($("input[id='smsMacroCode']")).show();
		$("form[role='autoSMSForm']").find($("select[name='smsMacroCode']")).hide();
		$(".autoSMSBtn1").show();
		$(".autoSMSBtn2").hide();

	}else{
		$("form[role='autoSMSForm']").find($("input[id='smsMacroCode']")).hide();
		$("form[role='autoSMSForm']").find($("select[name='smsMacroCode']")).show();
		$(".autoSMSBtn1").hide();
		$(".autoSMSBtn2").show();
	}
}

function eraseForm(){
	$("form[role='manualSMSForm']").find("#smsUser").val("");
	$("form[role='manualSMSForm']").find("#phone").val("0422228202");
	$("form[role='manualSMSForm']").find("#smsCategory").children().eq(0).attr("selected",true);
	$("form[role='manualSMSForm']").find("#smsMacroCode").children().eq(0).attr("selected",true);
	$("form[role='manualSMSForm']").find("#smsSendContents").text("");
	$("form[role='manualSMSForm']").find("#smsSendContents").val("");
	$("form[role='manualSMSForm']").find("input[name='usersId']").remove();
}
function regist_go(){
	$("form[role='form']").submit();
	}

	/**
	 * 수동작성에서 매크로 선택시 내용란에 해당 매크로 내용 출력
	 */
		function macroToSMSContents(obj){
			if($(obj).val()==''){
				$(obj).parents(".manualSMS").find("#smsSendContents").html("");
			}else{
				<c:forEach items="${smsMacroList}" var="item">
					if("${item.smsMacroCode}" == $(obj).val()){
						$(obj).parents(".manualSMS").find("#smsSendContents").text("${item.smsMacroContents}");
						$(obj).parents(".manualSMS").find("#smsSendContents").val("${item.smsMacroContents}");
					}
				</c:forEach>
				}
		}

	function modify_go(){
		OpenWindow('macro/modifyForm.do?smsMacroCode='+$('.swiper-wrapper').find('.swiper-slide-active').find('input').val(),'입력창',1200,800);
	}
	function registUser(){
		OpenWindow('user/registForm.do)','입력창',1530,800);
	}


	</script>
</body>