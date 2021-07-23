<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title>회원상세보기</title>
<!-- Bootstrap -->
<link href="<%=request.getContextPath() %>/resources/landrick/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<body>
<section class="bg-half-170 d-table w-100"></section>
<div class="card">
	<div class="card-header">
		<h2 class="card-title">개인정보 수정</h2>
	</div>
	<div class="card user-card">
		<div class="tab-content">
        <!-- Account Tab starts -->
        <div class="tab-pane active" id="account" aria-labelledby="account-tab" role="tabpanel">
          <!-- users edit start -->
          <div class="d-flex mb-2">
            <img src="" alt="users avatar" class="user-avatar users-avatar-shadow rounded me-2 my-25 cursor-pointer" height="90" width="90">
            <div class="mt-50">
              <h4>${prof.profId }</h4>
<!--               <div class="col-12 d-flex mt-1 px-0"> -->
<!--                 <label class="btn btn-primary me-75 mb-0 waves-effect waves-float waves-light" for="change-picture"> -->
<!--                   <span class="d-none d-sm-block">Change</span> -->
<!--                   <input class="form-control" type="file" id="change-picture" hidden="" accept="image/png, image/jpeg, image/jpg"> -->
<!--                   <span class="d-block d-sm-none"> -->
<!--                     <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit me-0"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg> -->
<!--                   </span> -->
<!--                 </label> -->
<!--                 <button class="btn btn-outline-secondary d-none d-sm-block waves-effect">Remove</button> -->
<!--                 <button class="btn btn-outline-secondary d-block d-sm-none waves-effect"> -->
<!--                   <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 me-0"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg> -->
<!--                 </button> -->
<!--               </div> -->
            </div>
          </div>
          <!-- users edit ends -->
          <!-- users edit account form start -->
          <form role="form" class="form" method="post" action="modify.do" name="modifyForm">
            <div class="row">
            <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="usersPwd">비밀번호</label>
                  <input type="password" class="form-control" placeholder="비밀번호를 입력해주세요" value="${loginUser.usersPwd }" name="usersPwd" id="usersPwd">
                </div>
              </div>
              <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="usersRePwd">비밀번호확인</label>
                  <input type="password" class="form-control" placeholder="비밀번호를 재확인합니다." value="" name="usersRePwd" id="userRePwd" onkeyup="checkPwd()">
                </div>
              </div>
              <div class="col-md-4">
              </br>
              <p id="checkPwd" style="color: red;" value="">입력한 두 비밀번호가 다릅니다.</p>
              </div>
              <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="profName">이름</label>
                  <input type="text" class="form-control" placeholder="이름을 입력해주세요" value="${prof.profName }" name="profName" id="profName" >
                </div>
              </div>
              <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="profDate">등록일</label>
                  <input type="text" class="form-control" placeholder="" value="<fmt:formatDate value='${prof.profDate }' pattern="yyyy-MM-dd" />" name="profDate" id="profDate" readonly="readonly">
                </div>
              </div>
              <div class="col-md-4"></div>
              <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="profBir">생년월일</label>
                  <input type="text" class="form-control" placeholder="생년월일을 입력해주세요" value="${prof.profBir }" name="profBir" id="profBir">
                </div>
              </div>
              <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="profEmail">E-mail</label>
                  <input type="text" class="form-control" placeholder="이메일을 입력해주세요" value="${prof.profEmail }" name="profEmail" id="profEmail">
                </div>
              </div>
              <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="profPhone">연락처</label>
                  <input type="text" class="form-control" placeholder="연락처를 입력해주세요." value="${prof.profPhone }" name="profPhone" id="profPhone">
                </div>
              </div>
              <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="profZipcode">우편번호</label>
                   <input type="text" class="form-control" placeholder="우편번호를 입력해주세요" value="${prof.profZipcode }" name="profZipcode" id="profZipcode">
                </div>
              </div>
              <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="profAddr1">주소</label>
                   <input type="text" class="form-control" placeholder="주소를 입력해주세요." value="${prof.profAddr1 }" name="profAddr1" id="profAddr1">
                </div>
              </div>
              <div class="col-md-4">
                <div class="mb-1">
                  <label class="form-label" for="profAddr2">상세주소</label>
                   <input type="text" class="form-control" placeholder="상세주소를 입력해주세요." value="${prof.profAddr2 }" name="profAddr2" id="profAddr2">
                </div>
              </div>
              <div class="col-12 d-flex flex-sm-row flex-column mt-2">
                <button type="button" class="btn btn-primary mb-1 mb-sm-0 me-0 me-sm-1 waves-effect waves-float waves-light" onclick="modify_go();">Save Changes</button>
                <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
              </div>
            </div>
          </form>
          <!-- users edit account form ends -->
        </div>
        <!-- Account Tab ends -->
      </div>
      </div>
</div>
<section class="section bg-light"></section>
      
<script type="text/javascript">
	function checkPwd(){
		if($("#usersPwd").val()!=$("#userRePwd").val()){
			$("#checkPwd").text("입력한 두 비밀번호가 다릅니다.");
			$("#checkPwd").css("color","red");
		}else{
			$("#checkPwd").text("일치합니다!");
			$("#checkPwd").css("color","green");
		}
	}
	
	function modify_go(){
		console.log("시작");
		var form=$('form[role="form"]');	
		form.submit();
	}
	
</script>
</body>










