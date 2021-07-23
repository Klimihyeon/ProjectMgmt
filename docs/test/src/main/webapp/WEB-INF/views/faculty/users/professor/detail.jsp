<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<title>교강사 상세 조회</title>

<body>
	<section class="bg-half-170 d-table w-100"></section>
	<br>
	<!-- sms전송 -->
	<div class="col-sm-12" style="text-align: right; padding-top: 0px; padding-right: 20px; padding-bottom: 0px; padding-left: 20px;">
		<button type="button"
			class="btn btn-primary waves-effect waves-float waves-light"
			id="cancelBtn" onclick="javascript:window.close();"><i data-feather='mail'></i> SMS 발송
		</button>
	</div>

		<!-- 카드 -->
	<div class="col-sm-12">
	<div class="card" style="margin: 20px;">
        <div class="card-header">
          <h4 class="card-title">교강사 상세 정보</h4>
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
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${professor.profId }" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>

              <!-- 이름 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">이름</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${professor.profName}" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>

              <!-- 성별 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">성별</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${webmember.gender}" disabled="disabled">
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
                      <input type="email" id="email-icon" class="form-control" name="email-id-icon" value="${professor.profEmail}" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>

              <!-- 휴대폰번호 -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="contact-icon">휴대폰 번호</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-smartphone"><rect x="5" y="2" width="14" height="20" rx="2" ry="2"></rect><line x1="12" y1="18" x2="12.01" y2="18"></line></svg></span>
                      <input type="number" id="contact-icon" class="form-control" name="contact-icon" value="${professor.profPhone}" disabled="disabled">
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
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${professor.profDate }" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>

              <!-- 주소  -->
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="fname-icon">주소</label>
                  </div>
                  <div class="col-sm-9">
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="fname-icon" class="form-control" name="fname-icon" value="${professor.profAddr1} ${professor.profAddr2}(${professor.profZipcode})" disabled="disabled">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>


		<!-- 강의이력 -->
		<div class="col-sm-12">
			<div class="card" style="margin: 20px;">
				<div class="card-header">
					<h4 class="card-title">강의이력</h4>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table">

							<thead>
								<tr>
									<th>과정명</th>
									<th>과목명</th>
									<th>기간</th>
									<th>과목시간(?)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- 회원정지 닫기 버튼 -->
	<div class="col-sm-12" style="text-align: right; padding-top: 0px; padding-right: 20px; padding-bottom: 20px; padding-left: 20px; ">
   		<button type="button" class="btn btn-danger waves-effect waves-float waves-light">회원정지</button>
   		<button type="button" class="btn btn-primary waves-effect waves-float waves-light" onclick="javascript:window.close();">닫기</button>
	</div>

<!-- 	<div class="row match-height"> -->
<!-- 		<div class="col-md-12 col-lg-12"> -->
<!-- 			<div class="card"> -->
<!-- 				<div class="card-body"> -->
<!-- 					<h4 class="card-title">교강사 상세 정보</h4> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-12 col-12" style="text-align: right;"> -->
<!-- 							<button type="button" -->
<!-- 								class="btn btn-primary waves-effect waves-float waves-light" -->
<!-- 								id="cancelBtn" onclick="javascript:window.close();"> -->
<!-- 								<i data-feather='mail'></i> -->
<!-- 							</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-6 col-12"><h3>아이디</h3></div> -->
<%-- 						<div class="col-md-6 col-12">${professor.profId }</div> --%>
<!-- 					</div> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-6 col-12"><h3>이름</h3></div> -->
<%-- 						<div class="col-md-6 col-12">${professor.profName}</div> --%>
<!-- 					</div> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-6 col-12"><h3>이메일</h3></div> -->
<%-- 						<div class="col-md-6 col-12">${professor.profEmail}</div> --%>
<!-- 					</div> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-6 col-12"><h3>연락처</h3></div> -->
<%-- 						<div class="col-md-6 col-12">${professor.profPhone}</div> --%>
<!-- 					</div> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-6 col-12"><h3>입사일</h3></div> -->
<%-- 						<div class="col-md-6 col-12"><fmt:formatDate value="${professor.profDate }" pattern="yy-MM-dd" /></div> --%>
<!-- 					</div> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-6 col-12"><h3>주소</h3></div> -->
<!-- 						<div class="col-md-6 col-12"> -->
<%-- 							<div class="col-md-12 col-12">${professor.profAddr1}</div> --%>
<%-- 							<div class="col-md-12 col-12">${professor.profAddr1} ${professor.profAddr2}(${professor.profZipcode})</div> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-6 col-12"><h3>강의이력</h3></div> -->
<!-- 						<div class="table-responsive"> -->
<!-- 						<table class="table"> -->

<!-- 							<thead> -->
<!-- 								<tr> -->
<!-- 									<th>과정명</th> -->
<!-- 									<th>과목명</th> -->
<!-- 									<th>기간</th> -->
<!-- 									<th>과목시간(?)</th> -->
<!-- 								</tr> -->
<!-- 							</thead> -->
<!-- 							<tbody> -->
<!-- 								<tr> -->
<!-- 									<td></td> -->
<!-- 									<td></td> -->
<!-- 									<td></td> -->
<!-- 									<td></td> -->
<!-- 								</tr> -->
<!-- 							</tbody> -->
<!-- 						</table> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div class="row"> -->
<!-- 		<div class="col-md-12" style="text-align: center;"> -->
<!-- 			<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="cancelBtn" onclick="javascript:window.close();">회원정지</button> -->
<!-- 			<button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="cancelBtn" onclick="javascript:window.close();">닫기</button> -->
<!-- 		</div> -->
<!-- 	</div> -->

	<section class="section bg-light"></section>

	<script>
	window.onload=function(){
		MemberPictureThumb(document.querySelector('[data-id="${company.comId}"]'),'${company.comRegFile}');
	}
 	</script>
</body>









