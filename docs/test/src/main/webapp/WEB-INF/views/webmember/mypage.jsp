<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<%@ include file="/WEB-INF/views/include/home/main_header_home2.jsp"%>
<head>
<title>JOBSTICK - 마이페이지</title>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
	<!-- Hero Start -->
	<section class="bg-half d-table w-100"
		style="background: url('<%=request.getContextPath()%>/resources/landrick/images/company/aboutus.jpg');">
		<div class="bg-overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="page-next-level title-heading">
						<h1 class="text-white title-dark">마이페이지</h1>
						<p class="text-white-50 para-desc mb-0 mx-auto">회원님의 정보수정을 비롯하여 상담내역을 확인/취소할수 있습니다.</p>

						<!-- page -->
						<div class="page-next">
							<nav aria-label="breadcrumb" class="d-inline-block">
								<ul class="breadcrumb bg-white rounded shadow mb-0">
									<li class="breadcrumb-item"><a href="index.html">JOBSTICK</a></li>
									<li class="breadcrumb-item active" aria-current="page">mypage</li>
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

<!-- Start -->
	<section class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-4 mt-4 pt-2">
					<div class="d-flex align-items-center">
						<img src="<%=request.getContextPath() %>/resources/landrick/images/client/00.jpg"
							class="avatar avatar-md-md rounded-circle" alt="">
						<div class="ms-3">
							<h6 class="text-muted mb-0">${loginUser.authority}</h6>
							<h5 class="mb-0">${webmember.name} 님</h5>
						</div>
					</div>

					<ul
						class="nav nav-pills nav-justified flex-column bg-white rounded mt-4 shadow p-3 mb-0"
						id="pills-tab" role="tablist">
						<li class="nav-item"><a class="nav-link rounded active"
							id="dashboard" data-bs-toggle="pill" href="#dash" role="tab"
							aria-controls="dash" aria-selected="false">
								<div class="text-start py-1 px-3">
									<h6 class="mb-0">
										<i class="uil uil-user h5 align-middle me-2 mb-0"></i> 회원정보수정
									</h6>
								</div>
						</a> <!--end nav link--></li>
						<!--end nav item-->

						<li class="nav-item mt-2"><a class="nav-link rounded"
							id="order-history" data-bs-toggle="pill" href="#orders"
							role="tab" aria-controls="orders" aria-selected="false">
								<div class="text-start py-1 px-3">
									<h6 class="mb-0">
										<i class="uil uil-list-ul h5 align-middle me-2 mb-0"></i>
										입학상담내역
									</h6>
								</div>
						</a> <!--end nav link--></li>
						<!--end nav item-->
					</ul>
					<!--end nav pills-->
				</div>
				<!--end col-->

				<div class="col-md-8 col-12 mt-4 pt-2">
					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade bg-white show active shadow rounded p-4"
							id="dash" role="tabpanel" aria-labelledby="dashboard">

							<!-- 회원정보수정 -->
							<form role="form" action="mypage/modify.do" method="post">
								<div class="row">
									<!-- 아이디 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">아이디<span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													class="feather feather-user-check fea icon-sm icons">
													<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
													<circle cx="8.5" cy="7" r="4"></circle>
													<polyline points="17 11 19 13 23 9"></polyline></svg>
												<input name="usersId" id="usersId" type="text"
													class="form-control ps-5" value="${webmember.memberId}" readonly="readonly">
											</div>
										</div>
									</div>
									
									<!-- 성별 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">성별<span class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<input class="form-check-input" type="radio" value=""
													id="male" name="gender"> <label
													class="form-check-label" for="male">남자 <a href="#"
													class="text-primary"></a></label> &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; 
													<input class="form-check-input"
													type="radio" value="" id="female" name="gender"> <label
													class="form-check-label" for="female">여자<a href="#"
													class="text-primary"></a></label>
											</div>
											
											<!-- 성별값 가져오기 -->
											<input type="text" id="genderDate" value="${webmember.gender}" style="display: none;'">

											
										</div>
										<!-- 성별 빈값 -->
										<div class="mb-3">
											<span id="spUserGenderEmpty"
												style="color: red; font-size: 10pt; display: none;">* 성별 체크는 필수입니다.</span>
										</div>										
									</div>

									<!-- 비밀번호 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">비밀번호<span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="key" class="fea icon-sm icons"></i> <input
													name="usersPwd" id="usersPwd" type="password"
													class="form-control ps-5" value="" onchange="password_Check();">
											</div>
										</div>
										
										<!-- 비밀번호 유효성 검사 -->
										<div class="mb-3">
											<span id="spUserPwEmpty" style="color: red; display: none; font-size: 10pt;">
												* 비밀번호는 필수 입력입니다.</span>
											<span id="spUserPwReq" style="color: red; display: none; font-size: 10pt;">
												*영문 소문자/영문 대문자/숫자/특수문자가 각각 1개 이상씩 포함된 8~12 글자만 가능합니다.</span>
											<span id="spUserPwUse" style="color: green; display: none; font-size:10pt;">
												* 사용가능한 비밀번호입니다.</span>
										</div>
									</div>
									<!--end col-->

									<!-- 이름 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">이름<span class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user" class="fea icon-sm icons"></i> <input
													name="name" id="name" type="text"
													class="form-control ps-5" value="${webmember.name}" onchange="name_Check();">
											</div>
										</div>
										<!-- 이름 유효성 검사 -->
										<div class="mb-3">
											<span id="spUserNameEmpty" style="color: red; display: none; font-size: 10pt;">
												* 이름은 필수 입력입니다.</span>
											<span id="spUserNameReq"
												style="color: red; font-size: 10pt; display: none;">*
												이름은 한글 2~5글자만 가능합니다. </span>
										</div>
									</div>
									<!--end col-->

									<!-- 이메일 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">이메일<span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="mail" class="fea icon-sm icons"></i> <input
													name="memberEmail" id="memberEmail" id="display-name"
													type="email" class="form-control ps-5" value="${webmember.memberEmail}">
											</div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="Y"
													id="flexCheckDefault" name="emailingYn" onchange="email_Check();"> <label
													class="form-check-label" for="flexCheckDefault">이메일 수신동의</label>
											</div>
										</div>
									</div>
									<!--end col-->
											
									<!-- 이메일체크여부 가져오기 -->
									<input type="text" id="emailingYnDate" value="${webmember.emailingYn}" style="display: none;'">
									
									<!-- 휴대폰 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">휴대폰번호<span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="phone" class="fea icon-sm icons"></i> <input
													name="memPhone" id="memPhone" type="text"
													class="form-control ps-5" value="${webmember.memPhone}"
													oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
											</div>
										<!-- 휴대폰 빈값 -->
										<div class="mb-3">
											<span id="spUserPhoneEmpty"
												style="color: red; font-size: 10pt; display: none;">* 휴대폰 인증은 필수입니다.</span>
										</div>	
										</div>
									</div>
									<!--end col-->

									<!-- 휴대폰인증 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label"></label>
											<div class="col-lg-12 mt-2 mb-0"
												style="text-align: left; margin-top: 0;">
												<button type="button" class="btn btn-primary">휴대폰 인증</button>
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 우편번호 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">우편번호</label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="sample6_postcode" class="form-control ps-5"
													placeholder="" name="addrZip" value="${webmember.addrZip }"
													readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 우편번호 검색 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label"><span class="text-danger">*</span></label>
											<div class="col-lg-12 mt-2 mb-0" style="text-align: left;">
												<button type="button" class="btn btn-primary" 
													onclick="sample6_execDaumPostcode();">우편번호 검색</button>
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 주소1 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">주소</label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="sample6_address" class="form-control ps-5"
													placeholder="" name="addr1" 
													value="${webmember.addr1 }"
													readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 주소2 -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">건물명</label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="sample6_extraAddress"
													class="form-control ps-5" placeholder="" name="addr2"
													value="${webmember.addr2 }" readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->
									<div class="col-lg-12">
										<div class="mb-3">
											<label class="form-label">상세주소</label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="sample6_detailAddress"
													class="form-control ps-5" placeholder="" name="addr3"
													value="${webmember.addr3 }">
											</div>
										</div>
									</div>
									
									<!-- 권한 -->
									<input id="authority" name="authority" type="text" value="웹회원" style="display: none;">
																		
									<!--end col-->
									<div class="col-lg-12 mt-2 mb-0" style="text-align: right;">
										<button class="btn btn-primary">회원정보수정</button>
									</div>
									<!--end col-->
								</div>
								<!--end row-->
							</form>

						</div>
						<!--end teb pane-->

						<div class="tab-pane fade bg-white shadow rounded p-4" id="orders"
							role="tabpanel" aria-labelledby="order-history">
							                            <div class="card-body">
<!--                                 <h5 class="card-title">Overview :</h5> -->
<!--                                 <p class="text-muted">It seems that only fragments of the original text remain in the Lorem Ipsum texts used today. One may speculate that over the course of time certain letters were added or deleted at various positions within the text.</p> -->

                                <h5 class="card-title">입학상담내역</h5>
                                <ul class="list-unstyled text-muted">
                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
                                    	입학상담은 모두 <span class="text-danger">비대면상담</span>으로 진행됩니다.</li>
                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
                                    	입학상담 취소는 상담예정 <span class="text-danger">1시간 전까지만</span> 가능합니다.</li>
                                    <li><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm me-2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
                                    	상담 진행은 <span class="text-danger">상담예정시간 10분 전</span>에 활성화 됩니다. </li>
                                </ul>
                            </div>
							<div class="table-responsive bg-white shadow rounded">
								<table class="table mb-0 table-center table-nowrap">
									<thead>
										<tr>
											<th scope="col" class="border-bottom" style="text-align: center;">상담번호</th>
											<th scope="col" class="border-bottom" style="text-align: center;">상담신청일</th>
											<th scope="col" class="border-bottom" style="text-align: center;">상담예정일</th>
											<th scope="col" class="border-bottom" style="text-align: center;">상담상태</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="counsRV" items="${counsRVList}">
										<tr>
											<th scope="row" style="text-align: center;">${counsRV.counsCode}</th>
											<td style="text-align: center;">
												<fmt:formatDate value="${counsRV.counsRegDate}" pattern="yy-MM-dd" />
											</td>
											<td style="text-align: center;">${counsRV.counsCalYear}-${counsRV.counsCalMonth}-${counsRV.counsCalDay}&nbsp;${counsRV.counsCalHour}:00</td>
											<td style="text-align: center;">
												<c:if test="${counsRV.counsStatus eq '예정'}">	
														<a href="#" class="badge bg-soft-primary"
															onclick="OpenWindow('consult/detail.do?counsCode=${counsRV.counsCode}','상담신청 상세조회',800,380);">
															${counsRV.counsStatus}
														</a><br>
															<a href="#" class="btn btn-primary" style="margin-top: 10px;"
															onclick="OpenWindow('https://192.168.0.134','비대면 입학상담',1500,740);">
<%-- 															onclick="OpenWindow('consult/videoCunsulting.do?counsCode=${counsRV.counsCode}','비대면 입학상담',1500,740);"> --%>
															 상담하기 </a>
															
												</c:if> 
												<c:if test="${counsRV.counsStatus eq '취소'}">	
														<a href="#" class="badge bg-danger"
															onclick="OpenWindow('consult/detail.do?counsCode=${counsRV.counsCode}','상담신청 상세조회',800,380);">
															${counsRV.counsStatus}
														</a>												
												</c:if> 
												<c:if test="${counsRV.counsStatus eq '완료'}">	
														<a href="#" class="badge bg-success"
															onclick="OpenWindow('consult/detail.do?counsCode=${counsRV.counsCode}','상담신청 상세조회',800,500);">
															${counsRV.counsStatus}
														</a>
												</c:if> 
											</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!--end teb pane-->

					</div>
				</div>
				<!--end col-->
			</div>
			<!--end row-->
		</div>
		<!--end container-->
	</section>
	<!--end section-->
	<!-- End -->
	
	<!-- Back to top -->
	<a href="#" onclick="topFunction()" id="back-to-top"
		class="btn btn-icon btn-primary back-to-top"><i
		data-feather="arrow-up" class="icons"></i></a>
	<!-- Back to top -->

<script type="text/javascript">

	// 성별체크하기
	$(document).ready(function(){
		var gender = $("#genderDate").val();
		
		if (gender == "F"){
			$("input:radio[id='female']").attr('checked', true);
		} else {
			$("input:radio[id='male']").attr('checked', true);
			
		}

		// 이메일 수신동의 체크하기
		var emailingYnDate = $("#emailingYnDate").val();
		
		if (emailingYnDate == "Y"){
			$("input:checkbox[name='emailingYn']").prop('checked', true);
			
		} else {
			$("input:checkbox[name='emailingYn']").prop('checked', false);
			
		}
		
	});

	// enter 시 submit 방지
	$('input[type="text"]').keydown(function() {
		  if (event.keyCode === 13) {
		    event.preventDefault();
		  };
		});

	$('input[type="email"]').keydown(function() {
		  if (event.keyCode === 13) {
		    event.preventDefault();
		  };
		});

	$('input[type="password"]').keydown(function() {
		  if (event.keyCode === 13) {
		    event.preventDefault();
		  };
		});
		
		
	// 아이디 - 한글입력 방지
		$("#usersId").keyup(function(event) {
			if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
				var inputVal = $(this).val();
				var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
				if (check.test(inputVal)) {
					$(this).val("");
				}
			}
		});
		
	// 이메일 - 한글입력 방지
		$("#memberEmail").keyup(function(event) {
			if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
				var inputVal = $(this).val();
				var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
				if (check.test(inputVal)) {
					$(this).val("");
				}
			}
		});
		
	
// 주소 API
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}	

/**
 * 이름 빈값, 정규식 체크
 */
function name_Check(){
    var input_Name=$('input[name="name"]');
       
    // 빈값확인
    if(input_Name.val()==""){
    	$("#spUserNameEmpty").show();
		$("#spUserNameReq").hide();
		input_Name.focus();
       return;
       
    }else{
      //유효성검사 : 이름은 한글 2-5자 
      var reqName=/^[가-힣]{2,5}$/;
      if(!reqName.test($('input[name="name"]').val())){
      	$("#spUserNameEmpty").hide();
  		$("#spUserNameReq").show();
  		input_ID.focus();	
  		 return; 
  		 }
    	$("#spUserNameEmpty").hide();
  		$("#spUserNameReq").hide();
  		 return;      
    }
}

/**
 * 패스워드 빈값, 정규식 체크
 */
function password_Check(){
    var input_Password=$('input[name="usersPwd"]');
    
    // 빈값확인
    if(input_Password.val()==""){
    	$("#spUserPwEmpty").show();
		$("#spUserPwReq").hide();
		$("#spUserPwUse").hide();
		input_Password.focus();
       return;
       
    }else{
      //유효성검사 : 특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식
    	var reqPassword=/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
        if(!reqPassword.test($('input[name="usersPwd"]').val())){
        	$("#spUserPwEmpty").hide();
    		$("#spUserPwReq").show();
    		$("#spUserPwUse").hide();
    		input_Password.focus();	
    		 return; 
    		 } else { // 정규식 통과했을 경우
        	// 사용가능한 비밀번호 입니다
      		$("#spUserPwEmpty").hide();
    		$("#spUserPwReq").hide();
    		$("#spUserPwUse").show();
    		 return;      
    		 }
      }
}


/**
 * 이메일 체크박스 유효성 
 */
function email_Check(){
	if($('input[name="memberEmail"]').val() == ""){
		alert("이메일을 입력한 후 체크해주세요.");
		$('input[name="emailingYn"]').prop("checked", false);
		$("#memberEmail").focus();
		return;
	}
}

/**
 * 회원정보수정
 */
function regist_go(){

    
    //이름 빈값 확인
    var input_Name=$('input[name="name"]');
    if(input_Name.val()==""){
    	$("#spUserNameEmpty").show();
		$("#spUserNameReq").hide();
		input_Name.focus();
       return;
    }
    
    //비밀번호 빈값 확인
	var input_Password=$('input[name="usersPwd"]');
    if(input_Password.val()==""){
    	$("#spUserPwEmpty").show();
		$("#spUserPwReq").hide();
		$("#spUserPwUse").hide();
		input_Password.focus();
       return;
    }
    
    //성별 빈값 확인
    if($("input:radio[name='gender']").is(":checked") == false){
    	$("#spUserGenderEmpty").show();
       return;
    } 
    
 	//휴대폰 빈값확인
    var input_Phone=$('input[name="memPhone"]');
    if(input_Phone.val()==""){
    	$("#spUserPhoneEmpty").show();
       return;
    }
	
	var form = $('form[role="form"]');
	form.submit();

}
</script>


<%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp"%>
