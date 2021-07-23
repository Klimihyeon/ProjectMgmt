<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title></title>
<body>
	<form action="modify.do" method="post" role="form" class="form">
		<div class="row"></div>
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">내담자 정보</h4>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-md-4 col-12">
							<div class="mb-1">
								<label class="form-label" for="usersId">이름(아이디)</label>
								<c:if test="${users.authority eq '교육생'}">
									<input id="usersId" class="form-control" name="usersId" type="text" readonly="readonly" value="${myCard.name }(${myCard.studentId })">
								</c:if>
								<input id="usersId" class="form-control" name="usersId" type="text" readonly="readonly" value="${member.name } (${member.memberId })">
							</div>
						</div>
						<div class="col-md-4 col-12">
							<div class="mb-1">
								<label class="form-label" for="authority">구분</label> <input id="authority" class="form-control" name="authority" type="text" readonly="readonly" value="${users.authority }">
							</div>
						</div>
						<c:if test="${users.authority eq '교육생'}">
							<div class="col-md-4 col-12">
								<div class="mb-1">
									<label class="form-label" for="ingCourseName">교육과정</label> <input id="ingCourseName" class="form-control" name="ingCourseName" type="text" readonly="readonly" value="${myCard.courseName } (${myCard.ingCourseCount }회차)"><br>
								</div>
							</div>
							<div class="col-md-4 col-12">
								<div class="mb-1">
									<label class="form-label" for="ingCourseDate">기간</label> <input id="ingCourseDate" class="form-control" name="ingCourseDate" type="text" readonly="readonly" value="${myCard.ingCourseBeginDate } ~ ${myCard.ingCourseEndDate }"><br>
								</div>
							</div>
							<div class="col-md-4 col-12">
								<div class="mb-1">
									<label class="form-label" for="roomNumber">강의실</label> <input id="roomNumber" class="form-control" name="roomNumber" type="text" readonly="readonly" value="${myCard.roomNumber }"><br>
								</div>
							</div>
						</c:if>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">상담 내역</h4>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<label class="form-label" for="counsCode">상담번호</label> <input id="counsCode" class="form-control" name="counsCode" type="text" readonly="readonly" value="${counsRV.counsCode }"><br>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<label class="form-label" for="counsType">상담구분</label> <input id="counsType" class="form-control" name="counsType" type="text" readonly="readonly" value="${counsRV.counsType }"><br>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<label class="form-label" for="counsStatus">상담상태</label> <input id="counsStatus" class="form-control" name="counsStatus" type="text" readonly="readonly" value="${counsRV.counsStatus }"><br>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<label class="form-label" for="counsDate">상담일자</label> <input id="counsDate" class="form-control" name="counsDate" type="text" readonly="readonly" value="20${counsRV.counsCalYear}-${counsRV.counsCalMonth}-${counsRV.counsCalDay}"><br>
							</div>
						</div>
						<div class="col-md-12 col-12">
							<div class="mb-1">
								<label class="form-label" for="counsContents">상담내용</label> <input id="counsContents" class="form-control" name="counsContents" type="text" readonly="readonly" value="${counsRV.counsContents }"><br>
							</div>
						</div>
						<div class="col-md-12 col-12">
							<div class="mb-1">
								<label class="form-label" for="counsRtTextOpen">피드백(공)</label> <input id="counsRtTextOpen" class="form-control" name="counsRtTextOpen" type="text" value="${counsRT.counsRtTextOpen }"><br>
							</div>
						</div>
						<div class="col-md-12 col-12">
							<div class="mb-1">
								<label class="form-label" for="counsRtTextHide">피드백(비)</label> <input id="counsRtTextHide" class="form-control" name="counsRtTextHide" type="text" value="${counsRT.counsRtTextHide }"><br>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-12">
				<c:if test="${empty counsRT.counsRtTextHide }">
					<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="modifyBtn" onclick="regist_go();">완료</button>
				</c:if>
				<c:if test="${not empty counsRT.counsRtTextHide }">
					<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="modifyBtn" onclick="modfiy_go();">완료</button>
				</c:if>
				<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="cancelBtn" onclick="javascript:window.close();">취소</button>
			</div>
		</div>
	</form>

	<script>
		function regist_go() {
			$("form[role='form']").attr("action","'regist.do'");
			$("form[role='form']").submit();
		}
		function modify_go() {
			$("form[role='form']").submit();

		}
	</script>

</body>
