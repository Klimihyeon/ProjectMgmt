 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<head>
<title>JOBSTICK - 일반회원가입</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://unpkg.com/feather-icons"></script>
<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<style type="text/css">
#bg_color {
	background-color: #2f55d4;
	height: 100vh;
}
#white_Box{
	height: 800px;
	overflow:auto;
}
</style>

</head>

<body>

<!-- Hero Start -->
 	<section id="bg_color">
 	<br><br><br>
<!-- 		<div class="bg-overlay bg-overlay-white"></div> -->
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7 col-md-8">
					<div class="card shadow rounded border-0 mt-4">
						<div class="card-body" id="white_Box">
							<center>
							<a href="<%=request.getContextPath() %>/common/home/index.do">
								<img src="<%=request.getContextPath() %>/resources/landrick/img/logo.png" width="300px">
							</a>
							</center>
							<br>
							<h5 class="card-title text-center">일반회원 회원가입</h5>
							  
							<form class="login-form mt-4" role="form" class="form-horizontal" action="memRegist.do" method="post">
								<div class="row">
									<!-- 아이디 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">아이디 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" 
													stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
													class="feather feather-user fea icon-sm icons">
													<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle>
												</svg>
												<input
													type="text" id="usersId" class="form-control ps-5"
													placeholder="아이디를 입력하세요" 
													name="usersId" onchange="idCheck_go();">
											</div>
										</div>
										<!-- 아이디 유효성 / 중복검사 -->
										<div class="mb-3">
											<span id="spUserIdEmpty" style="color: red; display: none; font-size: 10pt;">
												* ID는 필수 입력입니다.</span>
											<span id="spUserIdCk" style="color: red; display: none; font-size: 10pt;">
												* 중복된 ID 입니다</span>
											<span id="spUserIdReq" style="color: red; display: none; font-size:10pt;">
											* 영문소문자/숫자 4~12 글자만 가능합니다. </span>
											<span id="spUserIdUse" style="color: green; display: none; font-size:10pt;">
											* 사용가능한 아이디입니다.</span>
										</div>
									</div>
									<!--end col-->
				
									<!-- 이름 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">이름 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
											<svg xmlns="http://www.w3.org/2000/svg" 
												width="24" height="24" viewBox="0 0 24 24" fill="none" 
												stroke="currentColor" stroke-width="2" stroke-linecap="round" 
												stroke-linejoin="round" class="feather feather-user-check fea icon-sm icons">
												<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
												<circle cx="8.5" cy="7" r="4"></circle>
												<polyline points="17 11 19 13 23 9">
												</polyline>
											</svg>
												<input type="text" id="name" class="form-control ps-5"
													placeholder="이름을 입력하세요" onchange="name_Check();" name="name">
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

									<!-- 비밀번호 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">비밀번호 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-key fea icon-sm icons"><path d="M21 2l-2 2m-7.61 7.61a5.5 5.5 0 1 1-7.778 7.778 5.5 5.5 0 0 1 7.777-7.777zm0 0L15.5 7.5m0 0l3 3L22 7l-3-3m-3.5 3.5L19 4"></path></svg>
												
												<input
													type="password" id="usersPwd" class="form-control ps-5"
													placeholder="비밀번호를 입력하세요."
													name="usersPwd" onchange="password_Check();">
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
									
									<!-- 권한 -->
									<input id="authority" name="authority" type="text" value="웹회원" style="display: none;">
									
									<!-- 가입일 -->
									<input type="date" id="memberRegdate" name="memberRegdate" style="display: none;">
									
									<!-- 상담여부 -->
									<input type="text" id="counselYn" name="counselYn" value="N" style="display: none;">

									<!-- 성별 -->
									<div class="col-md-12">
										<label class="form-label">성별 <span class="text-danger">*</span></label>
										<div class="mb-3" style="text-align: center;">
											<input class="form-check-input" type="radio" value="M"
												id="male" name="gender"> <label
												class="form-check-label" for="male">남자 <a href="#"
												class="text-primary"></a></label> &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; 
											<input class="form-check-input" type="radio" value="F"
												id="female" name="gender"> <label
												class="form-check-label" for="female">여자<a href="#"
												class="text-primary"></a></label>
										</div>
										<!-- 성별 빈값 -->
										<div class="mb-3">
											<span id="spUserGenderEmpty"
												style="color: red; font-size: 10pt; display: none;">* 성별 체크는 필수입니다.</span>
										</div>
									</div>
									<!--end col-->

									<!-- 이메일 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">이메일 <span
												class="text-danger"></span></label>
											<div class="form-icon position-relative">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" 
													viewBox="0 0 24 24" fill="none" stroke="currentColor" 
													stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
													class="feather feather-mail fea icon-sm icons">
													<path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z">
													</path>
														<polyline points="22,6 12,13 2,6">
														</polyline>
												</svg>
												<input
													type="email" id="memberEmail" class="form-control ps-5"
													placeholder="이메일을 입력하세요" name="memberEmail">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 이메일 수신동의 체크박스 -->
									<div class="col-md-12">
										<div class="mb-3">
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="Y"
													id="flexCheckDefault" name="emailingYn" onchange="email_Check();"> <label
													class="form-check-label" for="flexCheckDefault">이메일 수신동의</label>
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 휴대폰 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">휴대폰 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
											<i data-feather="phone" class="fea icon-sm icons"></i>
												<input
													type="text" id="memPhone" class="form-control ps-5"
													placeholder="휴대폰번호를 입력하세요" name="memPhone" 
													oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="13" />
											</div>
										<!-- 휴대폰 빈값 -->
										<div class="mb-3">
											<span id="spUserPhoneEmpty"
												style="color: red; font-size: 10pt; display: none;">* 휴대폰 인증은 필수입니다.</span>
											<span id="spUserPhoneEmpty2"
												style="color: red; font-size: 10pt; display: none;">* 휴대폰 번호를 입력한 후 진행하세요.</span>
										</div>
										</div>

										<!-- 휴대폰 유효성 검사 -->
										<div class="mb-3">
											<div class="d-grid">
												<button type="button" class="btn btn-primary" onclick="memPhoneCheck();">휴대폰 인증</button>
											</div>
										</div>
									</div>
									
									<!--end col-->
									<!-- 휴대폰 인증번호 -->
									<div class="col-md-12" id="CheckDiv">
										<div class="mb-3">
											<label class="form-label">인증번호 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="phone" class="fea icon-sm icons"></i>
												<input type="text" id="phoneCheck" class="form-control ps-5"
												placeholder="인증번호를 입력하세요." name="phoneCheck" 
												oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
											</div>
											
										<!-- 휴대폰 인증번호 빈값 -->
										<div class="mb-3">
											<span id="spUserphoneCheckEmpty"
												style="color: red; font-size: 10pt; display: none;">* 인증번호를 입력해주세요.</span>
										</div>
										</div>

										<!-- 휴대폰 유효성 검사 -->
										<div class="mb-3">
											<div class="d-grid">
												<button type="button" class="btn btn-primary" id="checkBtn" onclick="check();">인증번호 확인</button>
											</div>
										</div>
									</div>
									<!--end col-->
									
									<!-- 우편번호 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">우편번호 <span
												class="text-danger"></span></label>
											<div class="form-icon position-relative">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" 
													viewBox="0 0 24 24" fill="none" stroke="currentColor" 
													stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
													class="feather feather-u fea icon-sm icons">
													<path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z">
													</path>
														<polyline points="22,6 12,13 2,6">
														</polyline>
												</svg>
												<input
													type="text" id="sample6_postcode" class="form-control ps-5"
													placeholder="우편번호를 검색하세요" name="addrZip"
													readonly="readonly">
											</div>
										</div>
										<div class="mb-3">
											<div class="d-grid">
												<button class="btn btn-primary" type="button"
													onclick="sample6_execDaumPostcode();">우편번호 검색</button>
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 주소1 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">주소 <span
												class="text-danger"></span></label>
											<div class="form-icon position-relative">
											<i data-feather="map" class="fea icon-sm icons"></i>												
												<input
													type="text" id="sample6_address" class="form-control ps-5"
													placeholder="" name="addr1" 
													readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 주소2 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">건물명 <span
												class="text-danger"></span></label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i>
												<input
													type="text" id="sample6_extraAddress"
													class="form-control ps-5" placeholder=""
													name="addr2" readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 주소3 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">상세주소 <span
												class="text-danger"></span></label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="sample6_detailAddress"
													class="form-control ps-5" placeholder=""
													name="addr3">
											</div>
										</div>
									</div>
									<!--end col-->
							
									<!-- 가입하기 버튼 -->
									<div class="col-md-12">
										<div class="d-grid">
											<button type="button" class="btn btn-primary" id="" onclick="regist_go();">가 입</button>
										</div>
									</div>
									<!--end col-->

									<div class="mx-auto" style="text-align: center;">
										<p class="mb-0 mt-3">
											<small class="text-dark me-2">이미 회원이신가요?</small> <a
												href="<%=request.getContextPath() %>/common/home/loginForm.do" class="text-dark fw-bold">로그인하기</a>
										</p>
										<p class="mb-0 mt-3">
											<a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#LoginForm">
												<small class="text-dark me-2">
												가입시 JOBSTICK 이용약관 및 개인정보취급방침에 동의합니다.</small>
											</a>
										</p>
										
									<!-- 모달 -->
                                    <!-- Modal Content Start -->
                                    <div class="modal fade" id="LoginForm" tabindex="-1" aria-labelledby="LoginForm-title" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content rounded shadow border-0">
                                                <div class="modal-header border-bottom">
                                                    <h5 class="modal-title" id="LoginForm-title">JOBSTICK 이용약관</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="bg-white p-3 rounded box-shadow">
                                                        <p class="text-muted mb-0">
                                                        	이용약관 내용입니다.
                                                        </p>                                                        
                                                    </div>
                                                </div>
<!--                                                 <div class="modal-footer"> -->
<!--                                                 	<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button> -->
<!--                                                     <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
<!--                                                     <button type="button" class="btn btn-primary">Save changes</button> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal Content End -->                                    
									</div>
								</div>
								<!--end row-->
							</form>
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
	<!-- Hero End -->
	
	<!-- javascript -->
	<script src="<%=request.getContextPath() %>/resources/landrick/js/bootstrap.bundle.min.js"></script>
	<!-- Icons -->
	<script src="<%=request.getContextPath() %>/resources/landrick/js/feather.min.js"></script>
	<!-- Main Js -->
	<script src="<%=request.getContextPath() %>/resources/landrick/js/plugins.init.js"></script>
	<!--Note: All init js like tiny slider, counter, countdown, maintenance, lightbox, gallery, swiper slider, aos animation etc.-->
	<script src="<%=request.getContextPath() %>/resources/landrick/js/app.js"></script>
	<!--Note: All important javascript like page loader, menu, sticky menu, menu-toggler, one page menu etc. -->
	<script src="https://code.jquery.com/jquery-latest.min.js"></script> 
   
<script type="text/javascript">
function check() {
	
}
function memPhoneCheck(){
	 
	var input_Phone= $('input[name="memPhone"]');
// 	console.log(memPhoneForm);
	
	//인증번호 빈값체크
	if(input_Phone.val() ==""){
 		$("#spUserPhoneEmpty2").show();
    	$("#spUserIdEmpty").hide();
		$("#spUserIdCk").hide();
		$("#spUserIdUse").hide();
		$("#spUserIdReq").hide();
 		input_Phone.focus();
       return;
    }
	
	var param ={
			param : input_Phone.val()
	}


	
		$.ajax({
		url : "PhoneCheck.do?memPhone="+input_Phone.val()
		, method : "get"
		, data : param
		, success : function(result,status,xhr){
			alert("인증번호가 전송되었습니다.");
			$('#checkBtn').click(function(){
		if($('#phoneCheck').val() == ""){
			alert("인증번호를 입력하지 않았습니다.");
		}else
				if($.trim(result.numStr) ==$('#phoneCheck').val()){
	               	alert("인증되었습니다.");
	            
	            }else{
	                alert("인증번호가 일치하지 않습니다. ");
	                var input_phoneCheck=$('input[name="phoneCheck"]');
	                
	                
	                $('input[name="phoneCheck"]').val("");
	                console.log(input_phoneCheck);
	            }
			});
		}
		, error : function(xhr) {
			alert("입력이 올바르지 않습니다. : " + xhr.status);
		}
	
	})	

}

</script>

<script type="text/javascript">

//가입일 현재로
document.getElementById('memberRegdate').valueAsDate = new Date();

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
 * 아이디 빈값, 정규식, 중복검사 체크
 */
function idCheck_go(){
	
    var input_ID=$('input[name="usersId"]');
    // 빈값확인
    if(input_ID.val()==""){
    	$("#spUserIdEmpty").show();
		$("#spUserIdCk").hide();
		$("#spUserIdUse").hide();
		$("#spUserIdReq").hide();
    	input_ID.focus();
       return;
    }else{
      //유효성검사 : 아이디는 4~12자의 영문자와 숫자로만 입력
      var reqID=/^[a-z]{1}[a-zA-Z0-9]{3,12}$/;
      if(!reqID.test($('input[name="usersId"]').val())){
      	$("#spUserIdEmpty").hide();
		$("#spUserIdCk").hide();
		$("#spUserIdUse").hide();
  		$("#spUserIdReq").show();
  		input_ID.focus();
         return;  	  
      }
    }
	
    $.ajax({
         url : "idCheck.do?id="+input_ID.val(),
         method : "get",
         success : function(result,status,xhr){
        	   //alert(xhr.status);
               console.log(result);
               if(result == "duplicated"){
                 	$("#spUserIdEmpty").hide();
            		$("#spUserIdCk").show();
            		$("#spUserIdUse").hide();
              		$("#spUserIdReq").hide();
                  $('input[name="usersId"]').focus();
               }else{
                 	$("#spUserIdEmpty").hide();
            		$("#spUserIdCk").hide();
            		$("#spUserIdUse").show();
              		$("#spUserIdReq").hide();
                  checkedID=input_ID.val().trim();
                  $('input[name="usersId"]').val(input_ID.val().trim());
               }
            },
            error:function(error){            	
            	AjaxErrorSecurityRedirectHandler(error.status);
            }
      });
	
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
 * 회원가입
 */
function regist_go(){

    // 아이디 빈값 확인
    var input_ID=$('input[name="usersId"]');
    if(input_ID.val()==""){
    	$("#spUserIdEmpty").show();
		$("#spUserIdCk").hide();
		$("#spUserIdUse").hide();
		$("#spUserIdReq").hide();
    	input_ID.focus();
       return;
    }
    
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
    
    //인증번호 빈값확인
    var input_phoneCheck=$('input[name="phoneCheck"]');
    if(input_phoneCheck.val()==""){
    	$("#spUserphoneCheckEmpty").show();
       return;
    }	
//     debugger;
//     if(input_phoneCheck.val()=="noCheck"){
//     	alert('ff');
//        return;
//     }	
    
	var form = $('form[role="form"]');
	form.submit();
}


</script>
</body>
</html>