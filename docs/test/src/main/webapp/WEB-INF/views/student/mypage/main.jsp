<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head></head>
<style type="text/css">
div.card {
	padding: 20px;
}

div#divMargin {
	padding: 0;
	margin: 0;
}

div.card-header {
	padding-right: 0;
	margin-right: 0;
}

#imgDiv {
	padding: 0;
	margin: 0;
}
</style>
<title></title>

<section class="bg-half-170 d-table w-100"></section>

<body class="content-body">
	<!-- 게시판 타이틀 -->
	<h1>마이페이지</h1>
	<br>
	
	<!-- 내정보 + 내 자격증 정보 -->
	<div class="row">
		<!-- information starts -->
		<div class="col-md-7">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">내 정보</h4>
				</div>
				<div class="card-body">
					<div class="row"> 
						<!-- 프로필 사진 -->
						<div class="col-sm-3" id="imgDiv" style="">
							<center>
								<img class="img-fluid rounded"
									src="<%=request.getContextPath() %>/student/manage/mypage/getPicture?picture=${student.stuProfileImg}"
									onerror="this.src='<%=request.getContextPath() %>/resources/img/noimage.jpg'"
									style="height: 160px; width: 120px;" alt="User avatar">
							</center>
						</div>
						
						<!-- 내 정보 텍스트 -->
						<div class="col-sm-9">
							<div class="d-flex flex-wrap">
								<div class="user-info-title">
									<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" class="feather feather-user me-1">
									<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
									<circle cx="12" cy="7" r="4"></circle></svg>
									<span class="card-text user-info-title fw-bold mb-0">이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</div>
								<p class="card-text mb-0">${student.name }</p>
							</div>
							<div class="d-flex flex-wrap my-50">
								<div class="user-info-title">
									<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" class="feather feather-check me-1">
									<polyline points="20 6 9 17 4 12"></polyline></svg>
									<span class="card-text user-info-title fw-bold mb-0">성별&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</div>
								<c:if test="${student.gender eq 'M'}">
									<p class="card-text mb-0">남자</p>
								</c:if>
								<c:if test="${student.gender eq 'F'}">
									<p class="card-text mb-0">여자</p>
								</c:if>
							</div>
							<div class="d-flex flex-wrap my-50">
								<div class="user-info-title">
									<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" class="feather feather-star me-1">
									<polygon
											points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
									<span class="card-text user-info-title fw-bold mb-0">주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</div>
								<p class="card-text mb-0">(${student.addrZip })&nbsp;&nbsp;&nbsp;${student.addr1 }&nbsp;&nbsp;&nbsp;${student.addr2 }</p>
							</div>
							<div class="d-flex flex-wrap">
								<div class="user-info-title">
									<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" class="feather feather-phone me-1">
									<path
											d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
									<span class="card-text user-info-title fw-bold mb-0">연락처&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</div>
								<p class="card-text mb-0">${student.memPhone }</p>
							</div>
							<div class="d-flex flex-wrap my-50">
								<div class="user-info-title">
									<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" class="feather feather-flag me-1">
									<path
											d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z"></path>
									<line x1="4" y1="22" x2="4" y2="15"></line></svg>
									<span class="card-text user-info-title fw-bold mb-0">이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</div>
								<p class="card-text mb-0">${student.memberEmail }</p>
							</div>

							<!-- 개인정보수정 버튼 -->
							<div style="text-align: right;">
								<a
									href="javascript:OpenWindow('checkForm.do?id=${student.usersId }','비밀번호 확인',600,215)"
									class="btn btn-primary waves-effect waves-float waves-light">개인정보
									수정</a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 내 자격증 정보 -->
		<div class="col-md-5">
			<!-- User Permissions -->
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">내 자격증 정보</h4>
				</div>
				<!-- 			<div class="card-body"> -->
				<!--                 <p class="card-text"> -->
				<%--                     Using the most basic table Leanne Grahamup, here’s how <code>.table</code>-based tables look in Bootstrap. You --%>
				<!--                     can use any example of below table for your table and it can be use with any type of bootstrap tables. -->
				<!--                 </p> -->
				<!--             </div> -->
				<div class="card-body">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>번호</th>
									<th>자격증명</th>
									<th>취득일자</th>
								</tr>
							</thead>
							<tbody>
								<%--                     	<c:forEach items="" var=""> --%>
								<tr>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<%--                     	</c:forEach> --%>
							</tbody>
						</table>
					</div>
				</div>
				<!-- /User Permissions -->
			</div>

		</div>
		<!-- information Ends -->

		<!-- User Permissions Ends -->
	</div>

	<!-- 내 교육과정 -->
	<div class="row">
		<div class="col-md-7">
			<div class="card">
				<div class="card-header">
					<h3>내 교육과정</h3>
				</div>

				<div class="card-body">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th style="text-align: center;">과정명</th>
									<td colspan="3" style="text-align: center;"><h4>${ingCourse.courseName }</h4></td>
								</tr>
							</thead>
							<thead>
								<tr>
									<th style="text-align: center;">교육기간</th>
									<td style="text-align: center;">
										<fmt:formatDate value="${ingCourse.ingCourseBeginDate}" pattern="yy-MM-dd" /> &nbsp;~&nbsp;
										<fmt:formatDate value="${ingCourse.ingCourseEndDate }" pattern="yy-MM-dd" />
									</td>
								</tr>
								<tr>
									<th style="text-align: center;">교육결과</th>
									<td style="text-align: center;"><c:if test="${ingCourse.ingCourseYn eq '진행' }">
									진행중
								</c:if> <c:if test="${ingCourse.ingCourseYn eq '완료' }">
									완료
								</c:if> <c:if test="${ingCourse.ingCourseYn eq '모집' }">
									대기
								</c:if> <c:if test="${ingCourse.ingCourseYn eq '종료' }">
									종료
								</c:if></td>
								</tr>
								<tr>
									<th style="text-align: center;">교육만족도</th>
									<td style="text-align: center;">Status</td>
								</tr>
							</thead>
						</table>
						<br>
						<div style="text-align: right;">
							<!-- 출석보기 수강평 등록 교육시간표 -->
							<div class="btn-group" role="group"
								aria-label="Basic checkbox toggle button group">
								<input type="checkbox" class="btn-check" id="btncheck1"
									checked="" autocomplete="off"> <label
									class="btn btn-primary waves-effect waves-float waves-light"
									for="btncheck1">출석보기</label> <input type="checkbox"
									class="btn-check" id="btncheck2" autocomplete="off"> <label
									class="btn btn-primary waves-effect waves-float waves-light"
									for="btncheck2">수강평등록</label> <input type="checkbox"
									class="btn-check" id="btncheck3" autocomplete="off"> <label
									class="btn btn-primary waves-effect waves-float waves-light"
									for="btncheck3">교육시간표</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>



		<script>
		window.onload = function() {
			MemberPictureThumb(document
					.querySelector('[data-id="${student.usersId}"]'),
					'${student.stuProfileImg}');
		}
	</script>
</body>







