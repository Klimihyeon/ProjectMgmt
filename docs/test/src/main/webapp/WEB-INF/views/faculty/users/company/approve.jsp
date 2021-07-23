<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="company" value="${company }" />
<head>
<title>신청기업회원 상세 조회</title>
<style type="text/css">
.col-sm-6{
	padding-top: 20px;
	padding-bottom: 0px;
	padding-right: 20px;
	padding-left: 20px; 
}
body {
  overflow-x:hidden;
  oeveflow-y: auto;
}
</style>
</head>
<body>
	<section class="bg-half-170 d-table w-100"></section>
	
	<br>
	<div class="row match-height">
		
		<!-- 기업회원 정보 -->
	<div class="col-sm-6">
	<div class="card">
        <div class="card-header">
          <h4 class="card-title">기업회원 상세 정보</h4>
        </div>
        <div class="card-body">
        
               <!-- 아이디 -->
              <div class="col-sm-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">아이디</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${company.comId }" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div> 
 
               <!-- 상호명 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">상호명</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${company.comName}" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>
 
               <!-- 담당자 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">담당자</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${company.comManagerName}" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- 이메일 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="email-icon">이메일</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg></span>
                      <input type="email" id="email-icon" class="form-control" name="email-id-icon" value="${company.comManagerEmail}" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>              
                                 
              <!-- 주소  -->
              <div class="col-sm-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">주소</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${company.comAddr} ${company.comAddr2} ${company.comAddr3} ()" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- 업종 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="email-icon">업종</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${company.comType}" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div> 

              
              <!-- 업태 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="email-icon">업태</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${company.comItem}" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div> 
                                               
        	</div>
        </div>	
	</div>
                    
			
		<!-- 사업자 등록증 미리보기 -->
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">사업등록증 사본 미리보기</h4>
						<div style="text-align: center;">
							<!-- 하단의 이미지 주소는 예시입니다 수정이 필요합니다  -->
							<img src="<%=request.getContextPath() %>/student/manage/mypage/getPicture?picture=${student.stuProfileImg}"
							onerror="this.src='<%=request.getContextPath() %>/resources/img/noimage.png'"
							style="height: 400px; width: 350px;">
<%-- 						<div id="pictureView" data-id="${company.comId }" style="border: 1px solid green; height: 600px; width: 500px; margin: 0 auto;"> --%>
						</div>
				</div>
			</div>
		</div>
</div>
		<div class="col-md-12" style="text-align: right; padding-right: 10px; padding-top: 0px;">
			<button type="button" class="btn btn-success waves-effect waves-float waves-light"  id="ApprovalBtn" onclick="location.href='approve.do?comId=${company.comId}';">승인</button>
			<button type="button" class="btn btn-danger waves-effect waves-float waves-light" id="DisapprovalBtn" onclick="location.href='disapprove.do?comId=${company.comId}';">반려</button>
			<button type="button" class="btn btn-primary waves-effect waves-float waves-light float-center" id="cancelBtn" onclick="CloseWindow();">닫기</button>
<%-- 			<button type="button" class="btn btn-primary waves-effect waves-float waves-light float-center" id="ApprovalBtn" onclick="location.href='approve.do?comId=${company.comId}';">승인</button> --%>
<%-- 			<button type="button" class="btn btn-primary waves-effect waves-float waves-light float-center" id="DisapprovalBtn" onclick="location.href='disapprove.do?comId=${company.comId}';">반려</button> --%>
		</div>
		
	<section class="section bg-light"></section>

	<script>
	window.onload=function(){
		MemberPictureThumb(document.querySelector('[data-id="${company.comId}"]'),'${company.comRegFile}');
	}
 	</script>
</body>









