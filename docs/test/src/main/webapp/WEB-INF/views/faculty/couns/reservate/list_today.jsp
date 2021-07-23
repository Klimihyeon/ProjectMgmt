<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>

</head>
<title>상담 예약 내역</title>

<body>
	<section class="bg-half-170 d-table w-100"></section>
	<h1>상담 예약</h1>
	<div class="card">
		<h3 class="card-header">오늘의 상담</h3>
		<div
			class="d-flex justify-content-between align-items-center mx-50 row pt-0 pb-2">
			<div class="row">
				<div class="table-responsive">
					<table class="table" id="todayCouns">
						<thead>
							<tr>
								<th>시간</th>
								<th>유형</th>
								<th>신청자 이름</th>
								<th>신청자 아이디</th>
								<th colspan="2">상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="couns" items="${counsList}"
								varStatus="vs">
								<tr>
										<td class="counsCalHour">${couns.counsCalHour}:00</td>
										<c:if test="${not empty couns.counsCode}">
											<td class="counsType">${couns.counsType}</td>
											<td>${couns.name}</td>
											<td>${couns.usersId}</td>
											<td>
												<div class="btn-group">
													<a class="btn btn-sm dropdown-toggle hide-arrow counsStatus" data-bs-toggle="dropdown">${couns.counsStatus }</a>
												</div>
											</td>
											<input type="hidden" name="counsCode" value="${couns.counsCode }">
										</c:if>
										<c:if test="${empty couns.counsCode}">
										<td colspan="5" style="text-align: center;">.</td>
										</c:if>
									</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
<script>

window.onload=function(){

	/**
	 * dropdownmenu 만들기(목록 : 상담취소,상담완료) : 현재시간 이전
	 */
	function makeDropdownMenu_before(counsCode){
		return '<div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" return false; href="cancle.do?counsCode='+counsCode+'">취소하기</a><a class="dropdown-item" return false; href="complete.do?counsCode='+counsCode+'">완료하기</a></div>';
	}
	/**
	 * dropdownmenu 만들기(목록 : 일지작성) : 현재시간 이후
	 */
	function makeDropdownMenu_after(counsCode){
		return '<div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" return false; href="#" onclick="OpenWindow(\'write.do?counsCode='+counsCode+'\',\'입력창\',1200,800)">일지작성</a></div>';
	}


	$.each($("#todayCouns > tbody").children(), function(i, item){

		/**
		 * 12:00 목록에서 제거
		 */
		if($(item).find(".counsCalHour").text() == '12:00'){
			$(item).remove();
		}


		/**
		 * status에 따라 dropdownMenu 다르게 설정
		 */
		 if($(item).find(".counsStatus").text() == '예정'){
			 $(item).find(".btn-group").append(makeDropdownMenu_before($(item).find("input[name='counsCode']").val()));
		 }else if($(item).find(".counsStatus").text() == '완료'){
			 $(item).find(".btn-group").append(makeDropdownMenu_after($(item).find("input[name='counsCode']").val()));
		 }

		/**
		 * 현재시간 기준 이전내역 회색처리
		 */
		if(parseInt($(item).find(".counsCalHour").text()) < parseInt(new Date().getHours())){

			$(item).css("color","silver");
			var counsStatus = $(item).find(".counsStatus").text();
			if(counsStatus != '' && counsStatus != null){
			$(item).find("a.counsStatus").text("");
			$(item).find("a.counsStatus").append('<span class="badge badge-light-secondary">'+counsStatus+'</span>');
			}
		}else if(parseInt($(item).find(".counsCalHour").text()) == parseInt(new Date().getHours())){
			$(item).attr("bgcolor","#c8c3ff");
		}else{
			var counsStatus = $(item).find("a.counsStatus").text();
			$(item).find("a.counsStatus").text("");
			$(item).find("a.counsStatus").append('<span class="badge badge-light-primary">'+counsStatus+'</span>');

		}




		/**
		 * 10분전 상담하기 버튼 생성
		 */
		if(parseInt($(item).children(".counsCalHour").text()) == (parseInt(new Date().getHours())+1) && (new Date().getMinutes() > 49)){
			$(item).children(".counsStatus").text("");
			$(item).children(".counsStatus").append(
					'<span class="badge badge-glow bg-success"><a href="javascript:doCouns()">상담하기</a></span>'
					);
		}

	});




}

function doCouns(){
	alert("상담기능 새창으로");
}
</script>
</body>








