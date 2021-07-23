<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head></head>

<title></title>

<section class="bg-half-170 d-table w-100"></section>

<section class="app-user-edit">
    <div class="card">
        <div class="card-body">
            <div class="tab-content">
                <!-- Account Tab starts -->
                <div class="tab-pane active" id="account" aria-labelledby="account-tab" role="tabpanel">
                    <form class="form-validate" novalidate="novalidate" role="form" method="post" action="check.do" name="checkForm">
                        <div class="row">
                        	<div class="col-12">
                                <h4 class="mb-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user font-medium-4 me-25"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                    <span class="align-middle">비밀번호 확인</span>
                                </h4>
                            </div>
                            <div class="col-lg-12 col-md-6">
                                <div class="mb-1">
                                    <label class="form-label" for="name">비밀번호</label>
                                    <input type="text" class="form-control" placeholder="password" value="" name="usersPwd" id="name">
                                    <input type="hidden" class="form-control" placeholder="usersId" value="${student.usersId }" name="usersId" id="usersId">
                                </div>
                            </div>
                            <div class="col-12 d-flex flex-sm-row flex-column mt-2">
                                <button type="submit" class="btn btn-primary mb-1 mb-sm-0 me-0 me-sm-1 waves-effect waves-float waves-light" onclick="check_go();">확인</button>
                                <button type="button" class="btn btn-outline-secondary waves-effect" onclick="CloseWindow();">닫기</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    function check_go(){
	
		document.checkForm.submit();	
	}
    </script>
</section>

