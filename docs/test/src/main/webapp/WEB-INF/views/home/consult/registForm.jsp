<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOBSTICK - 입학상담</title>
</head>
<body>

 <%@ include file="/WEB-INF/views/include/home/main_header_home2.jsp"%>

	<!-- Hero Start -->
	<section class="bg-half d-table w-100"
		style="background: url('<%=request.getContextPath()%>/resources/landrick/images/company/aboutus.jpg');">
		<div class="bg-overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="page-next-level title-heading">
						<h1 class="text-white title-dark">입학상담 신청</h1>
						<p class="text-white-50 para-desc mb-0 mx-auto">본원의 입학을 위해서는
							최초 상담 1회는 필수입니다.</p>

						<!-- page -->
						<div class="page-next">
							<nav aria-label="breadcrumb" class="d-inline-block">
								<ul class="breadcrumb bg-white rounded shadow mb-0">
									<li class="breadcrumb-item"><a href="index.html">JOBSTICK</a></li>
									<li class="breadcrumb-item active" aria-current="page">CONsult</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<!--end col-->
			</div>
			<!--end row-->
		</div>
		<!--end container-->
	</section>
	<!--end section-->
	<div class="position-relative">
		<div class="shape overflow-hidden text-white">
			<svg viewBox="0 0 2880 48" fill="none"
				xmlns="http://www.w3.org/2000/svg">
                    <path
					d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z"
					fill="currentColor"></path>
                </svg>
		</div>
	</div>
	<!-- Hero End -->

<!-- section -->
<section class="section">
	<div class="container">

		<div class="card shadow rounded border-0">
                            <div class="card-body">
<!--                                 <h5 class="card-title">Overview :</h5> -->
<!--                                 <p class="text-muted">It seems that only fragments of the original text remain in the Lorem Ipsum texts used today. One may speculate that over the course of time certain letters were added or deleted at various positions within the text.</p> -->

                                <h5 class="card-title">입학상담 안내</h5>
                                <ul class="list-unstyled text-muted">
                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
                                  		  본원의 입학을 위해서는 <span class="text-danger">최초 상담 1회</span>는 필수입니다.</li>
                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
                                    	입학상담은 모두 <span class="text-danger">비대면상담</span>으로 진행됩니다.</li>
                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
                                    	입학상담 신청내역은<span class="text-danger">[마이페이지 - 입학상담내역]</span>을 통해 확인 가능합니다.</li>
                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
                                    	입학상담 취소는 상담예정 <span class="text-danger">1시간 전까지만</span> 가능합니다.</li>
                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
                                    	신청이 완료된 후 SMS를 통해 <span class="text-danger">상담신청 확인 문자</span>가 발송됩니다.</li>
                                </ul>
                            </div>
                        </div>


		<div class="row">
			<div class="col-12 mt-4 pt-2">
				<div class="section-title"></div>
			</div>
			<!--end col-->

			<!--상담신청내역 -->
			<div class="col-lg-12">

				<div class="rounded p-4 shadow">
					<div class="row">
						<div class="col-12">
							<form action="regist.do" method="post" role="form">
								<div class="row">
									<!-- 이름 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">이름 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													class="feather feather-user fea icon-sm icons">
														<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
														<circle cx="12" cy="7" r="4"></circle></svg>
												<input id="name" type="text"
													class="form-control ps-5" placeholder="" value="${loginUser.name }"
													name="name" readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 휴대폰 번호 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">휴대폰번호<span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													class="feather feather-mail fea icon-sm icons">
														<path
														d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
														<polyline points="22,6 12,13 2,6"></polyline></svg>
												<input id="memphone" type="text"
													class="form-control ps-5" placeholder="" value="${loginUser.memPhone }"
													name="memPhone" readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 상담날짜 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">상담날짜 <span
												class="text-danger">* 평일만 가능합니다.</span></label>
											<div class="form-icon position-relative">
												<div class="mb-3 mb-lg-0">
													<input name="counsDate" id="counsDate" type="date" class="form-control start"
														placeholder="날짜를 선택하세요" value="${counsDate }" onchange="showTime();">
												</div>
												<!--end col-->
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 상담유형 -->
									<input type="text" id="counsType" name="counsType" value="입학" style="display: none;">

									<!-- 아이디 -->
									<input type="text" id="usersId" name="usersId" value="${loginUser.usersId }" style="display: none;">

									<!-- 신청일 -->
<!-- 									<input type="date" id="counsRegDate" name="counsRegDate" style="display: none;"> -->


									<!-- 상담 시간 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">시간<span class="text-danger">*
													상담시간은 최대 1시간입니다.</span></label>
											<div class="form-icon position-relative">
												<select class="form-select form-control select2 form-select"
													aria-label="Default select example" id="counsHourSelect" name="counsCalHour">
														<option value="00">시간선택</option>
														<c:forEach var="counsCal" items="${counsCalList }" varStatus="vs">
															<c:choose>
																<c:when test="${counsCal.counsCalHour eq '12'}">
																	<option class='counsHourOption' disabled value='${counsCal.counsCalHour}'>${counsCal.counsCalHour}:00  [점심시간]</option>
																</c:when>
																<c:when test="${empty counsCal.counsCode}">
																<option class='counsHourOption text-primary' value='${counsCal.counsCalHour}'>${counsCal.counsCalHour}:00  [예약가능]</option>"
																</c:when>
																<c:otherwise>
																<option class='counsHourOption' disabled value='${counsCal.counsCalHour}'>${counsCal.counsCalHour}:00  [예약완료]</option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
												</select>
											</div>
										</div>
									</div>
									<!--end col-->

									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">상담내용</label>
											<div class="form-icon position-relative">
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													class="feather feather-message-circle fea icon-sm icons">
														<path
														d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
												<textarea name="counsContents" id="counsContents" rows="4"
													class="form-control ps-5" placeholder="상담하고 싶은 내용을 적어주세요."></textarea>
											</div>
										</div>
										<label class="form-label"><span class="text-danger">*
												휴대폰 번호로 상담 신청 확인 SMS가 발송되니 휴대폰 번호가 올바르지 않을 경우 마이페이지의 회원정보수정을
												통해 수정하세요.</span></label>
									</div>
								</div>
								<!--end row-->

								<!-- 개인정보 동의 -->
								<br>
								<div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="flexCheckDefault1">
                                                    <label class="form-check-label" for="flexCheckDefault1">개인정보 수집 동의 <span class="text-danger">* </span></label>
                                                </div>
								<textarea name="PrivacyRule" id="PrivacyRule" rows="4"
								class="form-control">[개인정보처리방침]

JOBSTICK'(이하 '회사')은 이용자의 개인정보를 중요시하며 '개인정보보호법' 등 관련 법률을 준수하고 있습니다. '회사'는 개인정보처리방침을 통하여 이용자께서 제공하는 개인정보가 어떠한 목적으로 이용되고 있으며, 개인정보의 보호를 위하여 어떠한 조치를 취하고 있는지 알려드립니다.

1. 수집하는 개인정보 항목 및 수집방법
2. 개인정보의 처리목적
3. 수집한 개인정보의 공유 및 제공
4. 개인정보처리 위탁
5. 수집한 개인정보의 보유 및 이용기간
6. 개인정보의 파기절차 및 방법
7. 개인정보의 안전성 확보 조치
8. 회원 및 법정대리인의 권리와 그 행사방법
9. 개인정보 자동수집 장치(쿠키 등)의 설치, 운영 및 그 거부에 관한 사항
10. 개인정보 관리책임자 및 담당자의 소속 - 성명 및 연락처
11. 고지의 의무

단, 본 개인정보처리방침은 정부의 법령 및 지침의 변경, 또는 보다 나은 서비스의 제공을 위하여 그 내용이 변경될 수 있으니, 회원님들께서는 사이트 방문 시 수시로 그 내용을 확인하여 주시기 바라며, 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

본 방침은 내용을 2019년 06월 14일 홈페이지에 공지하고,
2019년 6월 21일부터 시행됩니다.

1. 수집하는 개인정보 항목 및 수집방법

회사는 회원가입, 상담, 서비스 신청 및 제공 등을 위해 다음과 같은 개인정보를 수집하고 있습니다.

가. 개인정보 항목
- 필수항목 : 성명, ID, 성별, 생년월일, 이메일, 연락처(일반전화 또는 휴대전화), 사는 지역, 만 14세 미만인 경우 위 항목에 대한 법정대리인의 정보. 다만, 서비스 이용과정에서 서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보, 결제기록 등이 생성되어 수집될 수 있습니다.
나. 수집방법 : 홈페이지(회원가입, 고객센터게시판) 및 고객센터를 통한 전화 및 온라인 상담
다. 이용하는 서비스에 따른 추가 필수 정보 (해당 서비스 이용시 별도 수집)
- 주민등록번호, 외국인등록번호 : 고용보험가입여부 확인, 내일배움카드 발급에 관한 연수생 지문 등록 시

2. 개인정보의 처리목적

제1조(개인정보의 처리목적) (재)대덕인재개발원'(이하 '회사')은 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.

가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
콘텐츠 및 회원 맞춤형 서비스 제공, 서비스 구매 및 요금 결제, 금융거래 본인 인증 및 금융 서비스

나. 회원 관리
회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 가입 및 가입회수 제한, 만 14세 미만 아동 개인정보 수집 시 법정대리인 동의여부 확인, 추후 법정대리인 동의여부 확인, 분쟁 조정을 위한 기록 보존, 불만처리 등 민원처리, 고지사항 전달

다. 교육운영/지원, 교육이력 관리, 교육관련 정보서비스 제공

라. 신규서비스 개발 · 마케팅 및 광고에 활용
신규 서비스(컨텐츠) 개발 및 특화, 이벤트 등 광고성 정보 전달, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악, 회원의 서비스 이용에 대한 통계

다. 교육운영/지원, 교육이력 관리, 교육관련 정보서비스 제공

3. 수집한 개인정보의 공유 및 제공(제3자제공)

회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.
- 이용자들이 사전에 동의한 경우
- 직업능력개발훈련 모니터링
- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우

다만, 보다 나은 서비스의 제공을 위하여 회원님의 개인정보를 협력업체 등과 공유할 필요가 있는 경우에는 제공받는 자,
주된 사업, 제공 목적 및 제공할 정보의 내용 등을 상세히 회원에게 개별 고지하여 동의를 구하도록 하겠습니다.



4. 개인정보의 취급 위탁

현재 회사는 개인정보의 취급을 외부 업체에 위탁하지 아니하고 있습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와
위탁 업무 내용에 대해 회원님에게 상세히 알리고 동의를 얻도록 하겠습니다.

5. 수집한 개인정보의 보유 및 이용기간

회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 개인정보를 지체 없이 파기합니다.
단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.

가. 상법 등 법령에 따라 보존할 필요성이 있는 경우

보존항목/내용
보존기간
보존근거
광고에 관한 기록
6개월
전자상거래 등에서의 소비자 보호에 관한 법률
계약 또는 청약철회 등에 관한 기록
5년
대금결제 및 재화 등의 공급에 관한 기록
5년
소비자의 불만 또는 분쟁처리에 관한 기록
3년
정보의 수집, 처리 및 이용 등에 과한 기록
3년
신용정보의 이용 및 보호에 관한 법률


나. 기타, 회원님의 개별적인 동의가 있는 경우에는 개별 동의에 따른 기간까지 보관합니다.

6. 개인정보의 파기절차 및 방법

가. 파기절차
 '회사'는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 단, 관련 법령의 규정에 의하여 보관하여야 하는 경우, 법령에 따른 보관기간 동안 일시 저장한 후 파기합니다. 이때에도 회사는 보관하는 개인정보를 다른 목적으로 이용하지 않습니다.

나. 파기방법
- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.



7. 개인정보의 안전성 확보 조치

‘회사’는 회원님들의 개인정보를 보호하기 위하여 다음과 같은 보호 대책을 시행하고 있습니다.

가. 비밀번호의 암호화
회원님의 비밀번호는 암호화되어 저장 및 관리되고 있습니다. 비밀번호는 오직 회원 본인만이 알 수 있으며 개인정보를 확인 및 변경할 경우에도 비밀번호를 알고 있는 본인에 의해서만 가능합니다. 따라서 회원님의 비밀번호가 타인에게 알려지지 않도록 각별히 주의하시기 바랍니다.

나. 해킹 및 컴퓨터 바이러스 등에 대비
회사는 해킹이나 컴퓨터 바이러스에 의하여 회원님들의 개인정보가 유출되거나 훼손되는 것을 막기 위하여 필요한 보안조치를 이용하고 있으며, 더욱 향상된 보안조치를 확보할 수 있도록 가능한 모든 기술적 방법을 구비하기 위하여 노력하고 있습니다.

다. 개인정보 취급자의 제한 및 교육
회사는 개인정보를 취급하는 직원을 최소한으로 제한하고 있으며, 관련 직원들에 대한 교육을 수시로 실시하여 본 방침의 이행 및 준수여부를 확인하고 있습니다.

8. 회원 및 법정대리인의 권리와 그 행사방법

회원 및 법정대리인은  언제든지 등록되어 있는 본인의 개인정보를 조회하거나 수정할 수 있으며 회원 탈퇴 절차를 통하여 개인정보 이용에 대한 동의 등을 철회할 수 있습니다. 개인정보의 조회/수정을 위해서는 회사 홈페이지의 ‘개인정보변경’(또는 ‘회원정보수정’ 등)을, 가입 해지(동의철회)를 위해서는 “회원탈퇴”를 클릭한 후 본인 확인 절차를 거쳐 열람/수정/탈퇴하실 수 있습니다.

이 외에도 회사의 개인정보 관리책임자에게 서면, 전화 또는 이메일로 연락하여 열람/수정/탈퇴를 요청하실 수 있습니다.

회원님이 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다.
회사는 회원님의 요청에 의해 해지 또는 삭제된 개인정보는 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.

9. 개인정보 자동수집 장치(쿠키 등)의 설치, 운영 및 그 거부에 관한 사항

회사는 회원님들에게 보다 적절하고 유용한 서비스를 제공하기 위하여 회원님의 정보를 수시로 저장하고 불러오는 ‘쿠키(cookie)’를 사용합니다.
쿠키란 회사의 웹사이트를 운영하는데 이용되는 서버가 회원님의 컴퓨터로 전송하는 아주 작은 텍스트 파일로서 회원님의 컴퓨터 하드디스크에 저장됩니다. 회원님께서는 쿠키의 사용여부에 대하여 선택하실 수 있습니다.

- 쿠키 설정 거부 방법(예 : 인터넷 익스플로어의 경우)
  웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보

회원님들께서는 사용하시는 웹 브라우저의 옵션을 설정함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. 단, 쿠키의 저장을 거부할 경우 로그인이 필요한 일부 서비스의 이용에 제한이 생길 수 있음을 양지하시기 바랍니다.

10. 개인정보 관리책임자 및 담당자의 소속 - 성명 및 연락처

회원님들의 개인정보를 보호하고 개인정보와 관련된 불만 등을 처리하기 위하여 회사는 고객서비스담당 부서 및 개인정보관리책임자를 두고 있습니다. 회원님의 개인정보와 관련한 문의사항은 아래의 고객서비스담당 부서 또는 개인정보관리책임자에게 연락하여 주시기 바랍니다.

고객서비스담당 부서 :  (재)대덕인재개발원 경영기획실
전화번호 : 042-222-8202
이메일 : daedeok@ddit.or.kr

개인정보관리책임자 성명 : 이규방 과장
전화번호 : 042-222-8202
이메일 : daedeok02@ddit.or.kr

기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.

- 개인정보침해신고센터 (privacy.kisa.or.kr)
- 정보보호마크인증위원회 (www.eprivacy.or.kr)
- 개인정보분쟁조정위원회 (www.kopico.go.kr)
- 대검찰청 첨단범죄수사과 (www.spo.go.kr)
- 경찰청 사이버안전국 (cyberbureau.police.go.kr)

11. 고지의 의무
현 개인정보처리방침 내용의 변경이 필요한 경우, '회사'는 개인정보처리방침 개정 최소 7일전부터 홈페이지의 '공지사항'을 통하여 내용을 고지합니다.
본 방침은 2019 년 06 월 21 일 부터 시행됩니다.</textarea>

								<br>
								<div class="row">
									<div class="col-sm-12" style="text-align: right;">
<!-- 										<input type="submit" id="submit" name="send" -->
<!-- 											class="btn btn-primary" value="입학상담신청"> -->
											
									<a href="#" return false; class="btn btn-primary" 
									id="submit" name="send" onclick="regist_go();">입학상담신청</a>
									</div>
									<!--end col-->
								</div>
								<!--end row-->
								<input type="hidden" name="parseDate" id="parseDate">
							</form>
							<!--end form-->
						</div>
						<!--end col-->
					</div>
					<!--end row-->
				</div>
			</div>
		</div>
		<!--end col-->


		<div class="card-body content position-relative"></div>
	</div>
	</div>
	<!--end col-->

	</div>
	<!--end row-->
	</div>
	<!--end container-->
</section>

<!-- Back to top -->
	<a href="#" onclick="topFunction()" id="back-to-top"
		class="btn btn-icon btn-primary back-to-top" style="display: none;"><svg
			xmlns="http://www.w3.org/2000/svg" width="24" height="24"
			viewBox="0 0 24 24" fill="none" stroke="currentColor"
			stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
			class="feather feather-arrow-up icons">
			<line x1="12" y1="19" x2="12" y2="5"></line>
			<polyline points="5 12 12 5 19 12"></polyline></svg></a>
	<!-- Back to top -->

<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp"%>
<script type="text/javascript">

window.onload=function(){
	showTime();
}


/**
 * str형식 -> date형식으로 변환
 */
function convertStrToDate(strdate) {
    var year = strdate.substr(0, strdate.indexOf("-"));
    var strdate1 = strdate.substr(strdate.indexOf("-") + 1);
    var month = strdate1.substr(0, strdate1.indexOf("-"));
    var day = strdate1.substr(strdate1.indexOf("-") + 1);
    var date = new Date(year, month - 1, day);

    return date;
}


/**
 * 달력 일자 선택시 해당 일자의 예약일정 출력(select)
 */
function showTime(){
	/**
	 *  현재 시간 기준+2부터 예약 기능
	 */
	if((new Date)>convertStrToDate($("#counsDate").val())){
		$.each($(".counsHourOption"),function(i, item){
			if(parseInt($(item).val()) < parseInt(new Date().getHours())+2){
				$(item).attr("disabled","");
				$(item).attr("class","counsHourOption");
				$(item).text($(item).val()+":00 [예약 불가능]");
			}
		});

		var inputDate = $("#counsDate").val();
		var parseDate = inputDate.split("-")
		$("#parseDate").val(parseDate);
	}else{


	$("#counsHourSelect > option").first().prop("selected", true);
	$(".counsHourOption").remove();

	var inputDate = $("#counsDate").val();
	var parseDate = inputDate.split("-")
	$("#parseDate").val(parseDate);

	//alert(inputDate);
	//alert($("#parseDate").val());


 	$.getJSON("showTime.do?parseDate="+parseDate,function(data){

 		$.each(data,function(i, item){

 		if(item.counsCalHour=='12'){
 			$("#counsHourSelect").append(
 		 			"<option class='counsHourOption' disabled value='"+item.counsCalHour+"'>"+item.counsCalHour+":00  [점심시간]</option>");
 		}else if(!item.counsCode){
 			$("#counsHourSelect").append(
 			"<option class='counsHourOption text-primary' value='"+item.counsCalHour+"'>"+item.counsCalHour+":00  [예약가능]</option>");
 		} else {
 			$("#counsHourSelect").append(
 		 			"<option class='counsHourOption' disabled value='"+item.counsCalHour+"'>"+item.counsCalHour+":00  [예약완료]</option>");
 		}
		});
	});
	}
}

/**
 * 입학상담신청 버튼 클릭 시  유효성검사 후 신청하기
 */

 function regist_go(){

		// 개인정보 수집동의 빈값 확인
	    var input_ID=$('input:checkbox[id="flexCheckDefault1"]').is(":checked");
	    
		if(input_ID == false){
	    	alert("개인정보 수집 동의는 필수입니다.");
	    	return;
		}
		
		// 시간선택 빈값확인
		var selectVal = $("#counsHourSelect option:selected").val();
		
		if(selectVal == "00"){
			alert("상담시간 선택은 필수 입니다.");
		}
		
		
		var form = $('form[role="form"]');
		form.submit();
	    
}



</script>
</body>
</html>