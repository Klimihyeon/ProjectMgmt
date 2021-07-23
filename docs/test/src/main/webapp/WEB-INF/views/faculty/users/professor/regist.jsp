<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>교강사 등록</title>
<style type="text/css">
div.card{
padding: 20px;
}
col-sm-12{
	padding: 20px;
}
body {
  overflow-x:hidden;
  oeveflow-y:hidden;
}
</style>
</head>
<body>

	<section id="multiple-column-form">
	
	<!-- 카드 -->
	<div class="col-sm-12">
	<div class="card" style="margin: 20px;">
        <div class="card-header">
          <h4 class="card-title">교강사 등록</h4>
        </div>
        
        <div class="card-body">
          <form class="form form-horizontal">
            <div class="row">
            
              <!-- 아이디 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">아이디</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="usersId" value="">
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- 비밀번호 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">비밀번호</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="usersPwd" value="">
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- 구분 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">구분</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="authority" value="교강사" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>
 
              
              <!-- 입사일  -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">입사일</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="date" id="fname-icon" class="form-control" name="fname-icon" value="">
                    </div>
                  </div>
                </div>
              </div>
                          
              <!-- 이름  -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">이름</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="profName" value="">
                    </div>
                  </div>
                </div>
              </div>
                           
              <!-- 이메일 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="email-icon">이메일 (선택)</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg></span>
                      <input type="email" id="email-icon" class="form-control" name="profEmail" value="">
                    </div>
                  </div>
                </div>
              </div>


            </div>
          </form>
        </div>
      </div>

	</div>
	
	<div class="col-sm-12" style="text-align: right; padding: 20px;">
		<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="registBtn" onclick="regist_go();">완료</button>
		<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="cancelBtn" onclick="javascript:window.close();">취소</button>
	</div>
							
	</section>
							
	
<!-- 		<div class="col-12"> -->
<!-- 			<div class="card"> -->
<!-- 				<div class="card-header"> -->
<!-- 					<h4 class="card-title">교강사 등록</h4> -->
<!-- 				</div> -->
<!-- 				<div class="card-body"> -->
<!-- 					<form action="regist.do" method="post" role="form"> -->
<!-- 						<div class="row"> -->
<!-- 							<div class="col-md-6 col-12"> -->
<!-- 								<div class="mb-1"> -->
<!-- 									<label class="form-label" for="usersId">아이디</label> <input id="usersId" class="form-control" name="usersId" type="text"><br> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<div class="col-md-6 col-12"> -->
<!-- 								<div class="mb-1"> -->
<!-- 									<label class="form-label" for="usersPwd">비밀번호</label> <input id="usersPwd" class="form-control" name="usersPwd" type="text"><br> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<div class="col-md-6 col-12"> -->
<!-- 								<div class="mb-1"> -->
<!-- 									<label class="form-label" for="authority">구분</label> <input id="authority" class="form-control" name="authority" type="text" value="교강사" readonly="readonly"><br> -->

<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<div class="col-md-6 col-12"> -->
<!-- 								<div class="mb-1"> -->
<!-- 									<label class="form-label" for="profDate">입사일</label> -->
<!-- 									<input id="profDate" class="form-control" name="profDate" type="date"><br> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="col-md-6 col-12"> -->
<!-- 								<div class="mb-1"> -->
<!-- 									<label class="form-label" for="profName">이름(선택)</label> <input id="profName" class="form-control" name="profName" type="text"><br> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="col-md-6 col-12"> -->
<!-- 								<div class="mb-1"> -->
<!-- 									<label class="form-label" for="profEmail">이메일(선택)</label> <input id="profEmail" class="form-control" name="profEmail" type="text"><br> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="col-12"> -->
<!-- 								<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="registBtn" onclick="regist_go();">완료</button> -->
<!-- 								<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="cancelBtn" onclick="javascript:window.close();">취소</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</form> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

	<script src="<%=request.getContextPath()%>/resources/js/professor/regist.js"></script>
	<script>

	</script>
</body>
