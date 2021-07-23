<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="list_url" value="faculty/manage/student/registFormMini2.do"></c:set>
<c:set var="functionName" value="searchUser"></c:set>
<title>수신자 선택</title>

<body>

	<head>
<title>수신자 선택</title>
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
div.Ldiv, div.Rdiv {
    overflow: auto;
    height: 500px;
    width: 530px;
}
</style>
</head>
<body>
	<section class="bg-half-170 d-table w-100"></section>


	<!-- 전체 -->
	<div class="col-sm-12 row" id="divPadding">
		<h1>수신자 선택</h1>
		<!-- 일반회원 목록 -->
		<div class="col-sm-12" style="padding-bottom: 10px; text-align: right;">
		<button class="btn btn-primary" type="button" data-card-widget="search" id="registBtn" onclick="saveUser();">저장</button>
		</div>
		<div class="col-sm-5">
			<div class="card">
				<div class="cord-header">
					<h1>교육생 목록</h1>
				</div>

				<div class="card-body Ldiv">
					<div class="input-group">
						<div class="col-md-2">
<!-- 							<input type="text" name="param1" value="1"> -->
<!-- 							<input type="text" name="param2" value="2"> -->
<!-- 							<input type="text" name="param3" value="3"> -->
							<select class="form-control" name="searchType" id="searchType">
								<option value="t" ${cri.searchType eq 't' ? 'selected' : ''}>통합검색</option>
								<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>id</option>
								<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>이름</option>
							</select>
						</div>
						<input type="text" class="form-control" aria-label="Amount" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />
						<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="searchUser(1,'${list_url}');">Search</button>
						&nbsp;&nbsp;
						<button class="btn btn-primary me-1" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">상세</button>
					</div>

					<div class="collapse" id="collapseExample">
						<div class="d-flex p-1 row">
							<div class="col-md-6">
								<h5>수료여부</h5>
								<br>
								<label for="a1">전체</label>
								<input id="a1" type="radio" name="stuStatus" checked="checked" value="">
								<label for="a2">교육생</label>
								<input id="a2" type="radio" name="stuStatus" value="교육생">
								<label for="a3">중퇴생</label>
								<input id="a3" type="radio" name="stuStatus" value="중퇴생">
								<label for="a4">수료생</label>
								<input id="a4" type="radio" name="stuStatus" value="수료생">
							</div>
							<div class="col-md-6">
								<h5>교육과정</h5>
								<select class="form-control" name="param3" id="param3">
									<option value="" ${cri.param3 eq '' ? 'selected' : ''}>전체</option>
									<c:forEach var="ingCourse" items="${ingCourseList}" varStatus="vs">
										<option value="${ingCourse.ingCourseCode }" ${cri.param3 eq ingCourse.ingCourseCode  ? 'selected' : ''}>${ingCourse.ingCourseName }</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md-12">&nbsp;</div>
							<div class="col-md-12">
								<button class="btn btn-primary float-end" type="button" id="searchBtn" data-card-widget="search" onclick="searchUser(1,'${list_url}');">Advanced Search</button>
							</div>
						</div>
					</div>
					<table class="user-list-table table" id="Ltable">
						<thead class="table-light">
							<tr>
								<th>ID</th>
								<th>이름</th>
								<th>과정</th>
								<th>강의실</th>
								<th>구분</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="student" items="${studentList}" varStatus="vs">
							<tr onclick="toggleColor(this);">
								<td>${student.usersId }</td>
								<td>${student.name}</td>
								<td>${student.ingCourseName }</td>
								<td>${student.roomNumber }호</td>
								<td>${student.stuStatus }</td>
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
			<div class="row" id="divPadiing2">
				<div class="col-md-12" style="text-align: center;">
					<button type="button" class="btn btn-primary col-md-6"
						onclick="moveselect($('#Ltable > tbody'),$('#Rtable > tbody'))">
						<i data-feather='chevron-right'></i>
					</button>
				</div><div>&nbsp;</div><div>&nbsp;</div>
				<div class="col-md-12" style="text-align: center;">
					<button type="button"
						class="btn btn-primary col-md-6"
						onclick="moveall($('#Ltable > tbody'),$('#Rtable > tbody'))">
						<i data-feather='chevrons-right'></i>
					</button>
					<br>
				</div><div>&nbsp;</div><div>&nbsp;</div>
				<div class="col-md-12" style="text-align: center;">
					<button type="button"
						class="btn btn-primary col-md-6"
						onclick="moveselect($('#Rtable > tbody'),$('#Ltable > tbody'))">
						<i data-feather='chevron-left'></i>
					</button>
					<br>
				</div><div>&nbsp;</div><div>&nbsp;</div>
				<div class="col-md-12" style="text-align: center;">
					<button type="button"
						class="btn btn-primary col-md-6"
						onclick="moveall($('#Rtable > tbody'),$('#Ltable > tbody'))">
						<i data-feather='chevrons-left'></i>
					</button>
					<br>
				</div>
			</div>
		</div>

		<!-- 옮긴 회원 -->
		<div class="col-sm-5 Rdiv">
			<div class="card">
				<div class="cord-header">
					<h1>수신인 목록</h1>
				</div>
				<div class="card-datatable table-responsive pt-0 col-md-12 col-12">
					<table class="user-list-table table" id="Rtable">
						<thead class="table-light">
							<tr>
								<th>ID</th>
								<th>이름</th>
								<th>과정</th>
								<th>강의실</th>
								<th>수료여부</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
			</div>

			<!-- 등록버튼 -->
<!-- 			<div style="padding-bottom: 10px; text-align: right;"> -->
<!-- 					<button class="btn btn-primary" type="button" data-card-widget="search" id="registBtn" onclick="saveUser();">저장</button> -->
<!-- 			</div> -->
		</div>
	</div>
	<form action="regist.do" method="post" role="form" hidden=""></form>


	<script>
	/**
	* 내맘속에 저장
	*/
	function saveUser(){
		$(opener.document).find("form[role='manualSMSForm']").find("input[name='usersId']").remove();

		var obj = new Array();
		$.each($("#Rtable").children().eq(1).children(),function(i, item){
			obj.push($(item).children().eq(0).text());
			$(opener.document).find("form[role='manualSMSForm']").append('<input type="hidden" name="usersId" value="'+$(item).children().eq(0).text()+'"  />');
		})
		$(opener.document).find("form[role='manualSMSForm']").find("#smsUser").val($("#Rtable").children().eq(1).children().eq(0).children().eq(1).text()+"외 "+($("#Rtable").children().eq(1).children().length-1)+"명");
		self.close();
	}
/**
 * 선택한 인원 배경색 변경
 */
		function toggleColor(obj){
			if(obj.bgColor==""){
				obj.bgColor="#c8c3ff";
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
 * 왼쪽테이블 검색에 따른 테이블 재구성
 */
	function searchUser(page,url){

		if(page.length==0 ){
			page = 1;
		}
		var searchType=$("select[name='searchType']").val();
		var keyword=$("input[name='keyword']").val();
		var param1=$("[name='param1']").val();
		var param2=$("[name='param2']").val();
		var param3=$("[name='param3']").val();

		$.getJSON("<%=request.getContextPath()%>/"+url+"?searchType="+searchType+"&keyword="+keyword+"&page="+page+"&param1="+param1+"&param2="+param2+"&param3="+param3,function(data){

			$("#Ltable > tbody").children().remove()
			for(var newItem of data){

				var flag = 'f';
				for(var oldRItem of $("#Rtable > tbody").children()){

					if($.trim(newItem.usersId) == $(oldRItem).children().eq(0).text().trim()){
							flag='t';
					}
				}
				if(flag=='f'){
					var $obj = $(
							'<tr onclick="toggleColor(this);">'
							+ '<td>'+ newItem.usersId
							+ '<input type="hidden" name="usersId" value="' + newItem.usersId +'"/>'
							+ '</td>'
							+ '<td>' + newItem.name + '</td>'
							+ '<td>' + newItem.ingCourseName + '</td>'
							+ '<td>' + newItem.roomNumber + '호</td>'
							+ '<td>' + newItem.stuStatus + '</td>'
							+ '</tr>');
					$("#Ltable > tbody").append($obj);
				}
			}
		});



	}






</script>

</body>