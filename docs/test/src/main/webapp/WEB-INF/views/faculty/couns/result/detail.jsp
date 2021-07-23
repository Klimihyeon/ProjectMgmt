<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<title></title>
<body>
	<section id="multiple-column-form">
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
								<h4>이름(아이디)</h4>
								<div id="usersId">
									<c:if test="${users.authority eq '교육생'}">
										${myCard.name }(${myCard.studentId })
										</c:if>
									<c:if test="${users.authority ne '교육생'}">
									${member.name } (${member.memberId })
									</c:if>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-12">
							<div class="mb-1">
								<h4>구분</h4>
								<%-- 									<input id="authority" class="form-control" name="authority" type="text" readonly="readonly" value="${users.authorty }"><br> --%>
								<div id="authority">${users.authority }</div>
							</div>
						</div>
						<div class="col-md-4 col-12">
							<div class="mb-1">
								<h4>이메일</h4>
								<div id="memberEmail">${member.memberEmail }</div>
							</div>
						</div>
						<div class="col-md-4 col-12">
							<div class="mb-1">
								<h4>전화번호</h4>
								<div id="memPhone">${member.memPhone }</div>
							</div>
						</div>
						<c:if test="${users.authority eq '교육생'}">
							<div class="col-md-4 col-12">
								<div class="mb-1">
									<h4>교육과정</h4>
									<div id="ingCourseName">${myCard.courseName }(${myCard.ingCourseCount }회차)</div>
								</div>
							</div>
							<div class="col-md-4 col-12">
								<div class="mb-1">
									<h4>기간</h4>
									<div id="ingCourseDate">
									<fmt:formatDate value="${myCard.ingCourseBeginDate }" pattern="yyyy-MM-dd" />
									~
									<fmt:formatDate value="${myCard.ingCourseEndDate }" pattern="yyyy-MM-dd" />
								</div>
							</div>
							<div class="col-md-4 col-12">
								<div class="mb-1">
									<h4>강의실</h4>
									<div id="roomName">${myCard.roomNumber }</div>
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
								<h4>상담번호</h4>
								<div id="counsCode">${counsRV.counsCode }</div>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<h4>상담구분</h4>
								<div id="counsType">${counsRV.counsType }</div>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<h4>상담상태</h4>
								<div id="counsStatus">${counsRV.counsStatus }</div>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<h4>상담일자</h4>
								<div id="counsDate">20${counsRV.counsCalYear}-${counsRV.counsCalMonth}-${counsRV.counsCalDay}</div>
							</div>
						</div>
						<div class="col-md-12 col-12">
							<div class="mb-1">
								<h4>상담내용</h4>
								<div id="counsContents">${counsRV.counsContents }</div>
							</div>
						</div>

						<div class="col-md-12 col-12">
							<div class="mb-1">
								<h4>피드백(공)</h4>
								<div id="counsRtTextOpen" class="form-control">
									<c:if test="${not empty counsRT.counsRtTextOpen }">
									${counsRT.counsRtTextOpen }
								</c:if>
									<c:if test="${empty counsRT.counsRtTextOpen }">
									공개용 피드백이 존재하지 않습니다.
								</c:if>

								</div>
							</div>
						</div>
						<div class="col-md-12 col-12">
							<div class="mb-1">
								<h4>피드백(비)</h4>
								<div id="counsRtTextHide" class="form-control">
									<c:if test="${not empty counsRT.counsRtTextHide }">
									${counsRT.counsRtTextHide }
									</c:if>
									<c:if test="${empty counsRT.counsRtTextHide }">
									비공개용 피드백이 존재하지 않습니다.
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12">
				<c:if test="${empty counsRT.counsRtTextOpen }">
					<button type="button"
						class="btn btn-primary waves-effect waves-float waves-light"
						id="modifyBtn"
						onclick="location.href='writeForm.do?counsCode=${counsRV.counsCode}';">작성</button>
				</c:if>
				<c:if test="${not empty counsRT.counsRtTextOpen }">
					<button type="button"
						class="btn btn-primary waves-effect waves-float waves-light"
						id="modifyBtn"
						onclick="location.href='writeForm.do?counsCode=${counsRV.counsCode}';">수정</button>
				</c:if>
				<button type="button"
					class="btn btn-primary waves-effect waves-float waves-light"
					id="cancelBtn" onclick="javascript:window.close();">닫기</button>
			</div>
		</div>
	</section>
</body>
</html>