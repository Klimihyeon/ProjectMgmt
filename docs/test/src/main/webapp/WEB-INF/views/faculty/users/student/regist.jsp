<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="webmemberList" value="${dataMap.webmemberList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="functionName" value="searchWebmember"></c:set>
<c:set var="list_url" value="faculty/manage/student/registFormMini.do"></c:set>
<title>교육생 등록</title>

<body>

	<head>
<title>교육생 등록</title>
<style type="text/css">
div.card{
	padding: 20px;
}
#divPadding{
	padding: 20px;
}
tr, td, th {
 text-align: center;
}
#divPadiing2{
	padding-top: 110px;
	padding-bottom: 110px;
}
div.Ldiv, div.Rdiv{
    overflow: auto;
    height: 500px;
/*     width: 530px; */
}
</style>
</head>
<body>
	<section class="bg-half-170 d-table w-100"></section>


	<!-- 전체 -->
	<div class="col-sm-12 row" id="divPadding">
		<h1>교육생 등록</h1>
		
		<!-- 일반회원 목록 -->
		<div class="col-sm-5">
			<div class="card">
				<div class="cord-header">
					<h1>${pageNum}일반회원 목록${pageMaker.cri.page}</h1>
				</div>

				<div class="card-body Ldiv">
					<div class="input-group">
						<div class="col-md-2">
							<select class="form-control" name="searchType" id="searchType">
								<option value="t" ${cri.searchType eq 't' ? 'selected' : ''}>통합검색</option>
								<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>id</option>
								<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>이름</option>
							</select>
						</div>
						<input type="text" class="form-control" aria-label="Amount" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />
						<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="searchWebmember(1,'${list_url}');">Search</button>
					</div>
					<br>
					<table class="user-list-table table" id="Ltable">
						<thead class="table-light">
							<tr>
								<th>ID</th>
								<th>이름</th>
								<th>상담</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="webmember" items="${webmemberList }"
								varStatus="vs">
								<tr onclick="toggleColor(this);">
									<td>${webmember.memberId }<input type="hidden"
										name="memberId" value="${webmember.memberId }"></td>
									<td>${webmember.name }</td>
									<td>
                                        <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" title="${webmember.counsel }">툴팁</button>
                                        <button class="btn-icon"><i data-feather='book'></i></button>
                                    </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
					<!-- 페이징 처리 -->
<!-- 					<div> -->
<%-- 						<%@ include file="/WEB-INF/views/common/pagination_tmp.jsp"%> --%>
<!-- 					</div> -->
		</div>

		<!-- 옮기기 -->
		<div class="col-sm-2">
			<div class="card" id="divPadiing2" style="height: 580px;">
				<select class="form-select form-select-lg" id="ingCourseCode" name="ingCourseCode">
					<option value="0">과정선택</option>
					<c:forEach var="ingCourse" items="${ingCourseList}" varStatus="vs">
						<option value="${ingCourse.ingCourseCode }">${ingCourse.courseName }(${ingCourse.ingCourseCount }회차)</option>
					</c:forEach>
				</select>
				<br>
				<button type="button" class="btn btn-primary float-end"
					onclick="moveselect($('#Ltable > tbody'),$('#Rtable > tbody'))">
					<i data-feather='chevron-right'></i>
				</button>
				<br>
				<button type="button"
					class="btn btn-primary float-end"
					onclick="moveall($('#Ltable > tbody'),$('#Rtable > tbody'))">
					<i data-feather='chevrons-right'></i>
				</button>
				<br>
				<button type="button"
					class="btn btn-primary float-end"
					onclick="moveselect($('#Rtable > tbody'),$('#Ltable > tbody'))">
					<i data-feather='chevron-left'></i>
				</button>
				<br>
				<button type="button"
					class="btn btn-primary float-end"
					onclick="moveall($('#Rtable > tbody'),$('#Ltable > tbody'))">
					<i data-feather='chevrons-left'></i>
				</button>
			</div>
		</div>

		<!-- 옮긴 회원 -->
		<div class="col-sm-5">
			<div class="card">
				<div class="cord-header">
					<h1>${pageNum}일반회원 목록${pageMaker.cri.page}</h1>
				</div>

				<div class="card-body Rdiv">
					<div class="card-datatable table-responsive pt-0 col-md-12 col-12">
						<table class="user-list-table table" id="Rtable">
							<thead class="table-light">
								<tr>
									<th>ID</th>
									<th>이름</th>
									<th>상담</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
		</div>
		
			<!-- 등록버튼 -->
			<div style="padding-bottom: 10px; text-align: right;">
				<button class="btn btn-primary float-center" type="button"
					data-card-widget="search" id="registBtn" onclick="registStudent();">교육생 등록</button>
			</div>

	</div>
	<form action="regist.do" method="post" role="form" hidden=""></form>

<!-- 	<section class="app-user-list"> -->
<!-- 		<div class="card"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-md-4 col-12"> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="input-group"> -->
<!-- 						<select class="form-control col-md-3" name="perPageNum" id="searchType" style="display: none"> -->
<!-- 							<option value="10" selected></option> -->
<!-- 						</select> -->
<!-- 						<div class="col-md-2"> -->
<!-- 							<select class="form-control col-md-3" name="searchType" id="searchType"> -->
<!-- 								<option value="">구분</option> -->
<%-- 								<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>아이디</option> --%>
<%-- 								<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>이름</option> --%>
<%-- 								<option value="t" ${cri.searchType eq 't' ? 'selected' : ''}>통합</option> --%>
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 						<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요" value="" /> -->
<!-- 						<button class="btn btn-icon btn-outline-primary waves-effect" type="button" id="searchBtn" data-card-widget="search" onclick="searchWebmember();"> -->
<!-- 							<i data-feather='search'></i> -->
<!-- 						</button> -->
<!-- 					</div> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="card-datatable table-responsive pt-0 col-md-12 col-12"> -->
<!-- 							<table class="user-list-table table" id="Ltable"> -->
<!-- 								<thead class="table-light"> -->
<!-- 									<tr> -->
<!-- 										<th>ID</th> -->
<!-- 										<th>이름</th> -->
<!-- 									</tr> -->
<!-- 								</thead> -->
<!-- 								<tbody> -->
<%-- 									<c:forEach var="webmember" items="${webmemberList }" varStatus="vs"> --%>
<!-- 										<tr onclick="toggleColor(this);"> -->
<%-- 											<td>${webmember.memberId }<input type="hidden" name="memberId" value="${webmember.memberId }"> --%>
<!-- 											</td> -->
<%-- 											<td>${webmember.name }</td> --%>
<!-- 										</tr> -->
<%-- 									</c:forEach> --%>
<!-- 								</tbody> -->
<!-- 							</table> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class=""> -->
<%-- 						<c:set var="list_url" value="list.do"></c:set> --%>
<%-- 						<%@ include file="/WEB-INF/views/common/pagination.jsp"%> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-4 col-12" style="text-align: center;"> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<select id="ingCourseCode" name="ingCourseCode"> -->
<!-- 						<option value="0">과정선택</option> -->
<%-- 						<c:forEach var="ingCourse" items="${ingCourseList}" varStatus="vs"> --%>
<%-- 							<option value="${ingCourse.ingCourseCode }">${ingCourse.courseName }(${ingCourse.ingCourseCount }회차)</option> --%>
<%-- 						</c:forEach> --%>
<!-- 					</select> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<button type="button" class="btn btn-icon btn-outline-primary waves-effect" onclick="moveselect($('#Ltable > tbody'),$('#Rtable > tbody'))"> -->
<!-- 						<i data-feather='chevron-right'></i> -->
<!-- 					</button> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<button type="button" class="btn btn-icon btn-outline-primary waves-effect" onclick="moveall($('#Ltable > tbody'),$('#Rtable > tbody'))"> -->
<!-- 						<i data-feather='chevrons-right'></i> -->
<!-- 					</button> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<button type="button" class="btn btn-icon btn-outline-primary waves-effect" onclick="moveselect($('#Rtable > tbody'),$('#Ltable > tbody'))"> -->
<!-- 						<i data-feather='chevron-left'></i> -->
<!-- 					</button> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<button type="button" class="btn btn-icon btn-outline-primary waves-effect" onclick="moveall($('#Rtable > tbody'),$('#Ltable > tbody'))"> -->
<!-- 						<i data-feather='chevrons-left'></i> -->
<!-- 					</button> -->
<!-- 				</div> -->

<!-- 				<div class="col-md-4 col-12"> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="row">&nbsp;</div> -->
<!-- 					<div class="card-datatable table-responsive pt-0 col-md-12 col-12"> -->
<!-- 						<table class="user-list-table table" id="Rtable"> -->
<!-- 							<thead class="table-light"> -->
<!-- 								<tr> -->
<!-- 									<th>ID</th> -->
<!-- 									<th>이름</th> -->
<!-- 								</tr> -->
<!-- 							</thead> -->
<!-- 							<tbody> -->
<!-- 							</tbody> -->
<!-- 						</table> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-12" style="text-align: center;"> -->
<!-- 				<button type="button" class="btn btn-primary" id="registBtn" onclick="registStudent();">등록</button> -->
<!-- 				<button type="button" class="btn btn-primary" id="cancelBtn" onclick="CloseWindow();">취소</button> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<form action="regist.do" method="post" role="form" hidden=""></form> -->
<!-- 	</section> -->


	<script>
	/**
	 * 선택한 인원 배경색 변경
	 */
		function toggleColor(obj){
// 			alert($(obj).attr("class"));
			if(obj.bgColor==""){
				obj.bgColor="#c8c3ff";
//					obj.setAttribute("bgColor", "yellow");  //setAttribute 사용시 bgColor속성값이 yellow가 아닌 "" null값으로 들어가며 속성정보에는 rgb값이 저장되어있음.
			} else {
				obj.setAttribute("bgColor", "");
			}

	}
		/**
		 * from -> to 데이터(selected) 이동
		 */
	function moveselect(from, to){
		for(var i=from.children().length-1; i>-1; i--){
			if(from.children().eq(i).attr("bgcolor")=="#c8c3ff"){
				from.children().eq(i).attr("bgcolor","");
				from.children().eq(i).appendTo(to);
			}
		}
	}
 /**
  * from -> to 데이터(ALL) 이동
  */
	function moveall(from, to){
		for(var i=from.children().length-1; i>-1; i--){
			from.children().eq(i).attr("bgcolor","");
			to.append(from.children().eq(i));
		}
	}

	/**
	* 교육생 등록
	*/
	function registStudent(){
	for(var i=$("#Rtable input[name='memberId']").length-1; i>-1; i--){
		$("#Rtable input[name='memberId']").eq(i).appendTo($('form[role="form"]'));
	}

	$("select[name='ingCourseCode']").appendTo($('form[role="form"]'));


		$('form[role="form"]').submit();
	// $("#Rtable input[name='memberId']").val()
	}
	/**
	 * 왼쪽테이블 검색에 따른 테이블 재구성
	 */


	function searchWebmember(page,url){

		var searchType=$("select[name='searchType']").val();
		var keyword=$("input[name='keyword']").val();
		var param1=$("[name='param1']").val();
		var param2=$("[name='param2']").val();
		var param3=$("[name='param3']").val();


		$.getJSON("<%=request.getContextPath()%>/"+url+"?searchType="+searchType+"&keyword="+keyword+"&page="+page+"&param1="+param1+"&param2="+param2+"&param3="+param3,function(data){

			$("#Ltable > tbody").children().remove();
			for(var newItem of data.webmemberList){

				var flag = 'f';
				for(var oldRItem of $("#Rtable > tbody").children()){

					if($.trim(newItem.memberId) == $(oldRItem).children().eq(0).text().trim()){
							flag='t';
					}
				}
				if(flag=='f'){
					var $obj = $('<tr onclick="toggleColor(this);"><td>'+newItem.memberId+'<input type="hidden" name="memberId" value="'+newItem.memberId+'"></td><td>'+newItem.name+'</td></tr>');
					$("#Ltable > tbody").append($obj);
				}

			}


// 		$(".test").append(
// 				'<nav aria-label="member list Navigation">'
// 				+'<ul class="pagination justify-content-center m-0">'
// 					+'<li class="page-item">'
// 					'<a class="page-link" href="javascript:${functionName}(1,\'${list_url }\');">'
// 						+'&lt;&lt;'
// 						+'</a>'
// 						+'</li>'
// 						+'<li class="page-item">'
// 						+'<a class="page-link" href="javascript:${functionName}('+data.pageMaker.prev+' ? '+(data.pageMaker.startPage-1)+' : 1,\'${list_url }\');">'
// 						+'&lt;'
// 						+'</a>'
// 						+'</li>'
// 						+'<li class="page-item">'
// 						+'<a class="page-link" href="javascript:${functionName}('+data.pageMaker.next+' ? '+(data.pageMaker.endPage+1)+' : '+data.pageMaker.cri.page+',\'${list_url }\');">'
// 						+'&gt;'
// 						+'</a>'
// 						+'</li>'
// 						+'<li class="page-item">'
// 						+'<a class="page-link" href="javascript:${functionName}('+data.pageMaker.realEndPage+',\'${list_url }\');">'
// 						+'&gt;&gt;'
// 						+'</a>'
// 						+'</li>'
// 						+'</ul>'
// 						+'</nav>'
// 		);

		});
	}






</script>

</body>