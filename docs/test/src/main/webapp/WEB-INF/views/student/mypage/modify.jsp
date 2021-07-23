<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<style type="text/css">

.app-user-edit{
	padding-top: 20px;
	padding-left: 20px;
	padding-right: 20px;
	padding-bottom: 0px;s
}
body {
  overflow:hidden;
}
</style>
</head>

<title></title>

<section class="bg-half-170 d-table w-100"></section>
<section class="app-user-edit">
    <div class="card">
        <div class="card-body">
            <div class="tab-content">
                <!-- Account Tab starts -->
                <div class="tab-pane active" id="account" aria-labelledby="account-tab" role="tabpanel">
                    <!-- users edit start -->
                    <!-- users edit ends -->
                    <!-- users edit account form start -->
                    <form class="form-validate" novalidate="novalidate" role="form" method="post" action="modify.do" name="modifyForm" enctype="multipart/form-data">
                    <div class="d-flex mb-2">
                    	<!-- 이미지 관련  -->
                    	<div class="users-avatar-shadow rounded me-2 my-25 cursor-pointer" id="pictureView2" style="height: 160px; width: 120px; ">
                        	<img id="pictureView1" src="<%=request.getContextPath() %>/student/manage/mypage/getPicture?picture=${student.stuProfileImg}"
                        	onerror="this.src='<%=request.getContextPath() %>/resources/img/noimage.jpg'" alt='' class="users-avatar-shadow rounded me-2 my-25 cursor-pointer" style="height: 160px; width: 120px; ">
                        </div>
                        <div class="mt-50">
                            <h4>${student.name }</h4>
							<input hidden="" id="inputFileName" class="form-control" type="text" name="tempPicture" disabled
								value="${student.stuProfileImg.split('\\$\\$')[1] }"/>
                            <div class="col-12 d-flex mt-1 px-0">
                                    <input  type="hidden" name="oldPicture" value="${student.stuProfileImg }" />
									<input id="picture" class="form-control" type="hidden" name="uploadPicture" />
	                                <label for="inputFile" class="btn btn-primary me-75 mb-0 waves-effect waves-float waves-light">
	                                    <span class="d-none d-sm-block">프로필 사진 변경</span>
	                                    <input  type="file" id="inputFile" onchange="changePicture_go();" name="stuProfileImg" style="display:none" />
	                                </label>
                            </div>
                        </div>
                    </div>
                        <div class="row">
                        	<div class="col-12">
                                <h4 class="mb-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user font-medium-4 me-25"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                    <span class="align-middle">개인정보</span>
                                    <input class="form-control" name="" type="file" id="change-picture" hidden=""  accept="image/png, image/jpeg, image/jpg">
                                </h4>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="mb-1">
                                    <label class="form-label" for="name">비밀번호</label>
                                    <input type="text" class="form-control" placeholder="Name" value="${student.usersPwd }" name="usersPwd" id="name">
                                    <input type="hidden" class="form-control" placeholder="usersId" value="${student.usersId }" name="usersId" id="usersId">
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="mb-1">
                                    <label class="d-block form-label mb-1">성별</label>
                                    <c:if test="${student.gender eq 'F'}">
	                                    <div class="form-check form-check-inline">
	                                        <input type="radio" id="male" name="gender" class="form-check-input" disabled="disabled">
	                                        <label class="form-check-label" for="male">남자</label>
	                                    </div>
	                                    <div class="form-check form-check-inline">
	                                        <input type="radio" id="female" name="gender" class="form-check-input" checked="" disabled="disabled">
	                                        <label class="form-check-label" for="female">여자</label>
	                                    </div>
                                    </c:if>
                                    <c:if test="${student.gender eq 'M' }">
	                                    <div class="form-check form-check-inline">
	                                        <input type="radio" id="male" name="gender" class="form-check-input" checked="" disabled="disabled">
	                                        <label class="form-check-label" for="male">남자</label>
	                                    </div>
	                                    <div class="form-check form-check-inline">
	                                        <input type="radio" id="female" name="gender" class="form-check-input" disabled="disabled">
	                                        <label class="form-check-label" for="female">여자</label>
	                                    </div>
                                    </c:if>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="mb-1">
                                    <label class="form-label" for="memPhone">전화번호</label>
                                    <input id="mobile" type="text" class="form-control" value="${student.memPhone }" name="memPhone">
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="mb-1">
                                    <label class="form-label" for="memEmail">이메일</label>
                                    <input type="email" class="form-control" placeholder="Email" value="${student.memberEmail }" name="memberEmail" id="email">
                                </div>
                            </div>
                            <div class="col-12">
                                <h4 class="mb-1 mt-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin font-medium-4 me-25"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>
                                    <span class="align-middle">주소</span>
                                </h4>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="mb-1">
                                    <label class="form-label" for="addrZip">우편번호</label>
                                    <input id="address-1" type="text" class="form-control" value="${student.addrZip }" name="addrZip" aria-invalid="false">
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="mb-1">
                                    <label class="d-block form-label mb-1">이메일 수신여부</label>
                                    <c:if test="${student.emailingYn eq 'Y' }">
	                                    <div class="form-check form-check-inline">
	                                        <input type="radio" id="emailingY" name=emailingYn value="Y" class="form-check-input" checked="" >
	                                        <label class="form-check-label" for="emailingY">동의</label>
	                                    </div>
	                                    <div class="form-check form-check-inline">
	                                        <input type="radio" id="emailingN" name="emailingYn" value="N" class="form-check-input" >
	                                        <label class="form-check-label" for="emailingN">거부</label>
	                                    </div>
                                    </c:if>
                                    <c:if test="${student.emailingYn eq 'N' }">
	                                    <div class="form-check form-check-inline">
	                                        <input type="radio" id="emailingY" name=emailingYn value="Y" class="form-check-input" >
	                                        <label class="form-check-label" for="emailingY">동의</label>
	                                    </div>
	                                    <div class="form-check form-check-inline">
	                                        <input type="radio" id="emailingN" name="emailingYn" value="N" class="form-check-input" checked="" >
	                                        <label class="form-check-label" for="emailingN">거부</label>
	                                    </div>
                                    </c:if>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="mb-1">
                                    <label class="form-label" for="address-2">주소</label>
                                    <input id="address-2" type="text" name="addr1" class="form-control" placeholder="T-78, Groove Street" value="${student.addr1 }">
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="mb-1">
                                    <label class="form-label" for="postcode">상세주소</label>
                                    <input id="postcode" type="text" name="addr2" class="form-control" placeholder="597626" name="zip" value="${student.addr2 }">
                                </div>
                            </div>
                            <div style="text-align: right;">
                                <button type="submit" class="btn btn-primary waves-effect waves-float waves-light" onclick="modify_go();">수정</button>
<!--                                 <button type="reset" class="btn btn-outline-secondary mb-1 mb-sm-0 me-0 me-sm-1 waves-effect">Reset</button> -->
                                <button type="button" class="btn btn-outline-secondary waves-effect" onclick="CloseWindow();">닫기</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script>
	window.onload=function(){
	  	MemberPictureThumb($('#pictureView')[0],'${student.stuProfileImg}');
	}
	
	function changePicture_go(){
		var picture = $('input#inputFile')[0];
		
		var fileFormat = picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
		
		//이미지 확장자 jpg 확인
		if(!(fileFormat=="JPG" || fileFormat=="JPEG" || fileFormat=="PNG")){
			alert("이미지는 jpg 형식만 가능합니다.");
			return;
		} 
		//이미지 파일 용량 체크
		if(picture.files[0].size>1024*1024*1){
			alert("사진 용량은 1MB 이하만 가능합니다.");
			return;
		};
	
		document.getElementById('inputFileName').value=picture.files[0].name;
		
		if (picture.files && picture.files[0]) {
			 var reader = new FileReader();
			 
			 reader.onload = function (e) {
		        	//이미지 미리보기	        	
		        	$('div#pictureView2')
		        	.css({'background-image':'url('+e.target.result+')',
		        		  'background':'url('+e.target.result+')',
						  'background-position':'center',
						  'background-size':'cover',
						  'background-repeat':'no-repeat'
		        		});
		        	$('img#pictureView1').attr('hidden',"");
		        }
		        
		        reader.readAsDataURL(picture.files[0]);
		}
		
		// 이미지 변경 확인
		$('input[name="uploadPicture"]').val(picture.files[0].name);
	}
	
	function modify_go(){
		
		document.modifyForm.submit();	
	}
	</script>
</section>
