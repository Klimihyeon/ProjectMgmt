<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<title>SMS 내역 상세보기</title>

<section class="bg-half-170 d-table w-100"></section>

<body>
	<h1>SMS 내역 상세조회</h1>
	<div class="">&nbsp;</div><div class="">&nbsp;</div>
	<h2>발송내용</h2>
	<div class="row card">
		<div class="card-header">
			<div class="card-title"></div>
		</div>
		<div class="card-body">
			<form>
				<div class="row">
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<h3>카테고리</h3>
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1 form-control">${smsSend.smsCategoryName}
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<h3>일자</h3>
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1 form-control">
							<fmt:formatDate value="${smsSend.smsSendDate }" pattern="yyyy-MM-dd hh:mm" />
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<h3>발송건수</h3>
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1 form-control">${smsSend.smsCount }</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<h3>발송인</h3>
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1 form-control">${smsSend.facName}</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<h3>내용</h3>
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1 form-control">
							${smsSend.smsSendContents}
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>


	<h2>발송목록</h2>
	<div class="row card">
		<div class="card-header">
			<div class="card-title"></div>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table" id="smsSendListTable">
					<thead>
						<tr>
							<th>구분</th>
							<th>ID</th>
							<th>이름</th>
							<th>번호</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="smsUser" items="${smsUserList }" varStatus="vs">
							<tr>
								<td>${fn:length(smsUserList) - vs.index }</td>
								<td title="usersId">${smsUser.usersId }</td>
								<td title="name">${smsUser.name }</td>
								<td title="memPhone">${smsUser.memPhone }</td>
								<td title="smsSendStatus">
								${smsUser.smsSendStatus }
								<c:if test="${smsUser.smsSendStatus eq '실패'}">
									<br><button type="button" class="btn btn-primary" onclick="resendSMS(this);">재전송</button>
								</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12" style="text-align: center;">
			<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="cancelBtn" onclick="CloseWindow();">닫기</button>
		</div>
	</div>

	<script>
	function reSendSMS(obj){
		alert("재전송이 완료되었습니다.....모르겠음..");
	}

	</script>
</body>











