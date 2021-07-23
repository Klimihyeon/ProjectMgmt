<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<head>
<title>JOBSTICK - 기업회원가입</title>
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

	<!-- 메인페이지로 가기 -->
	<div class="back-to-home rounded d-none d-sm-block">
		<a href="<%=request.getContextPath() %>/common/home/index.do" class="btn btn-icon btn-primary">
		<i data-feather="home" class="icons"></i></a>
	</div>

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
							<h5 class="card-title text-center">기업회원 회원가입 </h5>
							<form class="login-form mt-4">
								<div class="row">

									<!-- 기업 회원 프로필 -->
									<div class="col-md-12">

										<div class="mb-6">
										<label class="form-label">프로필 사진 <span class="text-danger"></span></label>
											<div class="mailbox-attachment-icon has-img" id="pictureView"
												style="border: 3px double #DEE2E6; border-radius: 50%; height: 160px; width: 160px; margin: 0 auto;">
											</div> 
											<div class="mailbox-attachment-info" style="padding-bottom: 20px;">
												<br>
												<div class="input-group input-group-sm">
													<label for="inputFile"
														class="btn btn-soft-primary" style="padding-top: 10px;">파일선택</label>
<!-- 													<input name="name" id="name" id="inputFileName" name="tempPicture" -->
<!-- 													type="text" class="form-control" placeholder="파일을 선택하세요." disabled="disabled">	 -->
													<input id="inputFileName" class="form-control" type="text"
														name="tempPicture" disabled />
														<span
														class="input-group-append-sm">
														<button type="button"
															class="btn btn-soft-primary"
															onclick="upload_go();">업로드</button>
													</span>
												</div>
											</div>
										</div>
									</div>
									<br><br><br>
									<!-- 아이디 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">아이디 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user" class="fea icon-sm icons"></i> <input
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

									<!-- 비밀번호 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">비밀번호 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="key" class="fea icon-sm icons"></i> <input
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
									<input id="authority" name="authority" type="text" value="기업회원" style="display: none;">
									
									<!-- 가입일 -->
									<input type="date" id="comRegdate" name="comRegdate" style="display: none;">
									
									<!-- 담당자 성명 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">담당자 성명 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user-check" class="  fea icon-sm icons"></i>
												<input type="text" id="comManagerName" class="form-control ps-5"
													placeholder="담당자 이름을 입력하세요" 
													name="comManagerName" onchange="name_Check();">
											</div>
										</div>
										<!-- 담당자 성명 유효성 검사 -->
										<div class="mb-3">
											<span id="spUserName"
												style="color: red; font-size: 10pt; display: none;">*
												한글 2~5글자만 가능합니다. </span>
										</div>
									</div>
									<!--end col-->

									<!-- 담당자 이메일 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">담당자 이메일 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="mail" class="fea icon-sm icons"></i> <input
													type="email" id="comManagerEmail" class="form-control ps-5"
													placeholder="이메일을 입력하세요" name="comManagerEmail">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 사업자등록번호 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">사업자등록번호 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user-check" class="fea icon-sm icons"></i>
												<input type="text" id="comRegNo" class="form-control ps-5"
													placeholder="사업자등록번호를 검색하세요." name="comRegNo">
											</div>
											<!-- 사업자등록번호 유효성 검사 -->
											<div class="mb-3">
												<span id="spUsercomRegNo"
													style="color: red; font-size: 10pt; display: none;">
													* 사업자증록번호 입력은 필수입니다. </span>
											</div>
										</div>
									</div>

									<div class="col-md-12">
										<div class="d-grid">
											<button class="btn btn-primary">사업자등록번호 진위여부</button>
										</div>
										<br>
									</div>
									<!--end col-->


									<!-- 상호 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">상호명 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user-check" class="fea icon-sm icons"></i>
												<input type="text" id="COM_NAME" class="form-control ps-5"
													placeholder="상호" name="COM_NAME" required=""
													readonly="readonly">
											</div>
										</div>
									</div>

									<!-- 대표자명 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">대표자명 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="user-check" class="fea icon-sm icons"></i>
												<input type="text" id="COM_CHAIRMAN" class="form-control ps-5"
													placeholder="대표자명" name="COM_CHAIRMAN" required=""
													readonly="readonly">
											</div>
										</div>
									</div>

<!-- 									사업장소재지 -->
<!--                                         <div class="col-md-6"> -->
<!--                                             <div class="mb-3"> -->
<!--                                                 <label class="form-label">사업장소재지 <span class="text-danger">*</span></label> -->
<!--                                                 <div class="form-icon position-relative"> -->
<!--                                                     <i data-feather="user" class="fea icon-sm icons"></i> -->
<!--                                                     <input type="text" id="COM_CHAIRMAN_PLACE" class="form-control ps-5" placeholder="사업장소재지" name="COM_CHAIRMAN_PLACE" required="" readonly="readonly"> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                         </div>end col -->

									<!-- 개업일자 -->
                                        <div class="col-md-6">
                                            <div class="mb-3"> 
                                                <label class="form-label">개업일자 <span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <i data-feather="user-check" class="fea icon-sm icons"></i>
                                                    <input type="text" id="COM_OPEN_DATE" class="form-control ps-5" placeholder="개업일자" name="COM_OPEN_DATE" required="" readonly="readonly">
                                                </div>
                                            </div>
                                        </div><!--end col-->

									<!-- 업태 -->
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">업태 <span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <i data-feather="user" class="fea icon-sm icons"></i>
                                                    <input type="text" id="COM_TYPE" class="form-control ps-5" placeholder="업태" name="COM_TYPE" required="" readonly="readonly">
                                                </div>
                                            </div>
                                        </div><!--end col-->

									<!-- 종목 -->
                                        <div class="col-md-6">
                                            <div class="mb-3"> 
                                                <label class="form-label">종목 <span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <i data-feather="user-check" class="fea icon-sm icons"></i>
                                                    <input type="text" id="COM_ITEM" class="form-control ps-5" placeholder="종목" name="COM_ITEM" required="" readonly="readonly">
                                                </div>
                                            </div>
                                        </div><!--end col-->


									<!-- 회사 우편번호 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">우편번호 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="COM_ZIPCODE" class="form-control ps-5"
													placeholder="우편번호" name="COM_ZIPCODE" required="" readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 주소1 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">주소 <span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="COM_ADDR1" class="form-control ps-5"
													placeholder="주소" name="COM_ADDR1" required="" readonly="readonly">
											</div>
										</div>
									</div>
									<!--end col-->

									<!-- 주소2 -->
									<div class="col-md-12">
										<div class="mb-3">
											<label class="form-label">상세주소<span
												class="text-danger">*</span></label>
											<div class="form-icon position-relative">
												<i data-feather="map" class="fea icon-sm icons"></i> <input
													type="text" id="COM_ADDR2"
													class="form-control ps-5" placeholder="상세주소" name="COM_ADDR2"
													required="" readonly="readonly">
											</div> 
										</div>
									</div>
									<!--end col-->
									
									<!--  사업자등록증 사본 첨부 -->
									<div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="formFile" class="form-label">사업자등록증 사본<span
												class="text-danger">*</span></label>
                                                <input class="form-control" type="file" id="formFile">
                                            </div>  
                                           <!-- 사업자 등록증 사본 첨부 확인 -->
											<div class="mb-3">
												<span id="spUserName"
													style="color: red; font-size: 10pt; display: none;">*
													사업자등록증 사본은 필수입니다.</span>
											</div>                                                                             
                                        </div>

									<!-- 가입하기 버튼 -->
									<div class="col-md-12">
										<div class="d-grid">
											<button class="btn btn-primary">가 입</button>
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
		<form role="imageForm" action="upload/picture.do" method="post"
			enctype="multipart/form-data">
			<input id="inputFile" name="pictureFile" type="file"
				class="form-control" onchange="picture_go();" style="display: none;">
			<input id="oldFile" type="hidden" name="oldPicture" value="" /> 
			<input type="hidden" name="checkUpload" value="0" />
		</form>
		
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
// 아이디 - 한글입력 방지
	$("#COM_ID").keyup(function(event) {
		if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
			var inputVal = $(this).val();
			var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			if (check.test(inputVal)) {
				$(this).val("");
			}
		}
	});
	
// 이메일 - 한글입력 방지
	$("#COM_EMAIL").keyup(function(event) {
		if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
			var inputVal = $(this).val();
			var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			if (check.test(inputVal)) {
				$(this).val("");
			}
		}
	});

var formData ="";


function picture_go(){
	//폼 객체를 잡는다.
   formData = new FormData($('form[role="imageForm"]')[0]);
   //alert("file choice");
   
   var form = $('form[role="imageForm"]');
   var picture = form.find('[name=pictureFile]')[0];
   
   //업로드 확인변수 초기화
  	//find
   //checkUpload의 값을 0으로 초기화 한다
   form.find('[name="checkUpload"]').val(0);
   var fileFormat=
      picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
      
   //유효성 체크 :이미지 확장자 jpg 확인
   if(!(fileFormat=="JPG" || fileFormat=="JPEG")){
      alert("이미지는 jpg/jpeg 형식만 가능합니다.");
      picture.value="";      
      return;
   } 
   
   //이미지 파일 용량 체크
   if(picture.files[0].size>1024*1024*1){
      alert("사진 용량은 1MB 이하만 가능합니다.");
      return;
   };
   
   document.getElementById('inputFileName').value=picture.files[0].name;
   

   if (picture.files && picture.files[0]) {//(1) 파일이 선택되어 있는지 확인
	   //일단 picture.files가 있는지, 그리고 그 pictur.files[0]가 있는지 
      var reader = new FileReader();//(2) 있으면 FileReader 생성
       reader.onload = function (e) {
           $('div#pictureView')
              .css({'background-image':'url('+e.target.result+')',
                 'background-position':'center',
                 'background-size':'cover',//cover : 작은 변에 맞추기, 빈틈이 없음, 썸네일 적절
                 'background-repeat':'no-repeat'
                 });
        }
      reader.readAsDataURL(picture.files[0]);//(3) 파일이 있으면 니가 읽어!
      
   }
}

function upload_go(){
	   //alert("upload btn click");
	   if($('input[name="pictureFile"]').val()==""){
	      alert("사진을 선택하세요.");
	      $('input[name="pictureFile"]').click();
	      return;
	   };   
	   
	   
	   if($('input[name="checkUpload"]').val()==1){
	      alert("이미업로드 된 사진입니다.");
	      return;
	      
	   }
	   
	   
	   $.ajax({
	      url:"picture.do",
	      data:formData,
	      type:'post',
	      processData:false,
	      contentType:false,
	      success:function(data){
	         //업로드 확인변수 세팅
	         $('input[name="checkUpload"]').val(1);
	         
	         //저장된 파일명 저장.
	         $('input#oldFile').val(data); // 변경시 삭제될 파일명
	         $('form[role="form"]  input[name="picture"]').val(data);
	         
	         alert("사진이 업로드 되었습니다.");
	         
	         
	      },
	      error:function(error){
	         alert("현재 사진 업로드가 불가합니다.\n 관리자에게 연락바랍니다.");
	      }
	 });
}

</script>
</body>
</html>