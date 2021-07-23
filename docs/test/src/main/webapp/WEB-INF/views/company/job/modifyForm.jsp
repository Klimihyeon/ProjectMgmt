<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<title>채용공고등록</title>
<%@ include file="/WEB-INF/views/include/home/style_home.jsp" %>
<body>
<%@ include file="/WEB-INF/views/include/home/main_header_home.jsp" %>
<!-- Hero Start -->
	<section class="section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-10 col-md-7">
                        <div class="card custom-form border-0">
                        <div class="section-title mb-4 pb-2" style="text-align: center;">
							<h4 class="title mb-4">어떤 인재를 뽑을 계획이신가요?</h4>
                            <p class="text-muted para-desc mx-auto mb-0">모집 내용을 잘 기재 할수록, 더 적합한<span class="text-primary fw-bold"> 인재</span>를 채용 할 수 있습니다.</p>
                        </div>
                            <div class="card-body">
                                <form enctype="multipart/form-data" class="rounded shadow p-4" role="form" action="modify.do" method="post" name="modifyForm">
                                <input type="hidden" name="comId" value="${loginUser.usersId }">
                                <input type="hidden" name="hbCode" value="${comp.hbCode }">
                                    
                                    <div class="row">
                                    <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label" for="hTitle">채용공고명<span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <input name="hTitle" id="hTitle" type="text" class="form-control ps-5" value="${comp.hTitle }">
                                                </div>
                                            </div> 
                                        </div> 
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">모집분야 <span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <select class="form-select form-control" aria-label="Default select example" name="hType">
			                                                <option value="웹개발">웹개발</option>
	                                                        <option value="응용프로그램개발">응용프로그램개발</option>
	                                                        <option value="시스템개발">시스템개발</option>
	                                                        <option value="서버/네트워크/보안">서버/네트워크/보안</option>
	                                                        <option value="ERP/시스템분석설계">ERP/시스템분석설계</option>
	                                                        <option value="데이터베이스DBA">데이터베이스DBA</option>
	                                                        <option value="퍼블리싱.UI개발">퍼블리싱.UI개발</option>
	                                                        <option value="웹디자인">웹디자인</option>
	                                                        <option value="하드웨어/소프트웨어">하드웨어/소프트웨어</option>
	                                                        <option value="통신/모바일">통신/모바일</option>
	                                                        <option value="웹기획.PM">웹기획.PM</option>
	                                                        <option value="웹마스터.QA.테스터">웹마스터.QA.테스터</option>
	                                                        <option value=">컨텐츠사이트운영">컨텐츠사이트운영</option>
	                                                        <option value="게임Game">게임Game</option>
	                                                        <option value="IT디자인컴퓨터교육">IT디자인컴퓨터교육</option>
	                                                        <option value="동영상편집코덱">동영상편집코덱</option>
	                                                        <option value="인공지능(AI)빅데이터">인공지능(AI)빅데이터</option>
			                                            </select>
                                                </div>
                                            </div>
                                        </div><!--end col-->
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">지원자학력 <span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
			                                            <select class="form-select form-control" aria-label="Default select example" name="hEducation">
			                                                <option value="학력무관">학력무관</option>
			                                                <option value="고졸이하">고졸이하</option>
			                                                <option value="2~3년제 이하">2~3년제 이하</option>
			                                                <option value="4년제 이하">4년제 이하</option>
			                                                <option value="석사 이하">석사 이하</option>
			                                                <option value="박사 이하">박사 이하</option>
			                                            </select>
                                                </div>
                                            </div> 
                                        </div><!--end col-->
                                        <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label">고용형태 <span class="text-danger">*</span></label>
                                            <select class="form-select form-control" aria-label="Default select example" name="hJobtype">
                                                <option value="정규직">정규직</option>
                                                <option value="아르바이트">아르바이트</option>
                                                <option value="연수생/교육생">연수생/교육생</option>
                                                <option value="인턴">인턴</option>
                                                <option value="병역특례">병역특례</option>
                                                <option value="프리랜서">프리랜서</option>
                                                <option value="계약직">계약직</option>
                                                <option value="위탁직">위탁직</option>
                                                <option value="기타">기타</option>
                                            </select>
                                        	</div>
                                    	</div>             
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label" id="careerYn">경력여부 <span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                   <input class="form-check-input" type="checkbox" value="신입" id="career1" name="hCareer">
	                                                <label class="form-check-label" for="career1">신입  &nbsp; &nbsp; </label>
	                                                
	                                                <input class="form-check-input" type="checkbox" value="경력" id="career2" name="hCareer">
	                                                <label class="form-check-label" for="career2">경력  &nbsp; &nbsp; </label>
	                                                
	                                                <input class="form-check-input" type="checkbox" value="경력무관" id="career3" name="hCareer">
	                                                <label class="form-check-label" for="career3">경력무관  &nbsp; &nbsp; </label>
                                                </div>
                                            </div> 
                                        </div>
									<div class="col-md-3" id="output">
                                            <label class="form-label">급여조건 <span class="text-danger">*</span></label>
                                            <select class="form-select form-control" aria-label="Default select example" name="hSalary" id="hSalary" onchange="salaryCheck();">
                                                <option value="회사내규에 따름">회사내규에 따름</option>
                                                <option value="면접 후 결정">면접 후 결정</option>
                                                <option id="sal3" value="연봉">연봉</option>
                                            </select>
                                        </div><!--end col-->
                                        <div class="col-md-3">
                                        	<div class="mb-3">
                                        	<label class="form-label" style="color: white;">급여조건</label>
                                        	<input name="hSalary" placeholder="연봉을 입력하세요" id="sal3for" type="text" class="form-control ps-5" value="" style="display: none;">
                                        	</div>
                                        </div>
                                    <div class="col-md-6">
                                       <div class="mb-3">
                                           <label class="form-label">근무시간<span class="text-danger">*</span></label>
                                           <input name="hWorktime" id="hWorktime" type="text" class="form-control ps-5" value="${comp.hWorktime }">
                                       	</div>
                                   	</div> 
                                   <br><br><br><br>
                                   		<h6>
                                   		<mark><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle fea icon-sm icons"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
                                   		모집 부문 및 상세 내용</mark>
                                   		</h6>
                                   		<hr>
                                   		<br>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label" for="hHire">모집인원:<span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <input name="hHire" id="hHire" type="text" class="form-control ps-5" value="${comp.hHire }" onchange="hHireCheck();">
                                                </div>
                                            </div> 
                                        </div>    
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">자격요건 및 우대조건<span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <input name="hQualification" id="hQualification"  type="text" class="form-control ps-5" value="${comp.hQualification }">
                                                </div>
                                            </div> 
                                        </div>    
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label">주요업무<span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <input name="hJobTask" id="hJobTask" type="text" class="form-control ps-5" value="${comp.hJobTask }">
                                                </div>
                                            </div> 
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">직무<span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <input name="hPosition" id="hPosition" type="text" class="form-control ps-5" value="${comp.hPosition }">
                                                </div>
                                            </div> 
                                        </div> 
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">근무지역<span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <input name="hLocation" id="hLocation" type="text" class="form-control ps-5" value="${comp.hLocation }">
                                                </div>
                                            </div> 
                                        </div>     
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label">마감일<span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                	 <label class="form-label" for=hEdate> 
                                                    	<input name="hEdate" id="hEdate" type="date" class="form-control ps-5" value="${comp.hEdate }">
                                                    </label>
                                                </div>
                                            </div> 
                                        </div>
                                        <div class="col-md-12">
                                   		<br>
                                            <div class="mb-3">
                                                <label class="form-label">사용기술<span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
													<textarea class="textarea" name="hSkill" id="content1" rows="20" style="display: none;">
													${comp.hSkill }
													</textarea>
                                                </div>
                                            </div>
                                        </div><!--end col-->  
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label">전형절차 및 제출서류<span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                   <textarea class="textarea" name="hHireProsedure" id="content2" rows="20" style="display: none;">
                                                   ${comp.hHireProsedure }
													</textarea>
                                                </div>
                                            </div> 
                                        </div>    
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label">비고</label>
                                                <div class="form-icon position-relative">
                                                    <textarea class="textarea" name="hEtc" id="content3" rows="20" style="display: none;">
                                                    ${comp.hEtc }
													</textarea>
                                                </div>
                                            </div> 
                                        </div>    
                                                                       
                                        <div class="col-md-12">
										<div class="mb-3">
											<label for="addFileBtn" class="form-label">첨부파일</label>
											<button class="btn btn-xs btn-primary"
												onclick="addFile_go();" type="button" id="addFileBtn">Add
												File</button><br><br>
											<div class="card-footer fileInput">
										<ul class="mailbox-attachments d-flex align-items-stretch clearfix">
											
											<c:forEach items="${comp.attachList }" var="attach" >
											<li class="attach-item">																			
												<div class="mailbox-attachment-info">
													<a class="mailbox-attachment-name" name="attachedFile" 
														attach-fileName="${attach.filename }" attach-no="${attach.haCode }" 
														href="<%=request.getContextPath()%>/company/home/mypage/getFile.do?haCode=${attach.haCode }"  >													
														<i class="fas fa-paperclip"></i>
														${attach.filename }&nbsp;&nbsp;
														<button type="button" style="border:0;outline:0;" class="badge bg-red">X</button>																									
													</a>													
												</div>
											</li>	
											</c:forEach>
										</ul>
										<br/>														
									</div>
										</div>
									</div><!--end col-->
                                        <div class="col-md-12">
                                            <div class="mb-3" style="text-align: center;">
                                            <b>관리자가 확인 후 해당 공고가 등록됩니다.</b>
										</div>
                                        </div><!--end col-->
                                    </div><!--end row-->
                                    <div class="row">
                                        <div class="col-sm-12" style="text-align: center;">
                                        	<button type="button" class="btn btn-primary" id="registBtn" onclick="modify_go();">수정완료</button>
                                        </div><!--end col-->
                                    </div><!--end row-->
                                </form><!--end form-->
                            </div> 
                        </div><!--end custom-form-->
                    </div>  
                </div>
            </div><!--end container-->
        </section><!--end section-->
        <!-- Job apply form End -->
        <%@ include file="/WEB-INF/views/include/home/main_footer_home.jsp" %>
<%-- <script src="<%=request.getContextPath() %>/resources/js/company/regist.js" ></script> --%>
        
<script>
window.onload=function(){ 
 		Summernote_start($("#content1"));
 		Summernote_start($("#content2"));
 		Summernote_start($("#content3"));
 		
 		$('.fileInput').on('change','input[type="file"]',function(event){
	 		if(this.files[0].size>1024*1024*40){
	 			alert("파일 용량이 40MB를 초과하였습니다.");
	 			this.value="";
	 			$(this).click();		 			
	 			return false;
	 		} 
    	});
	 	
	 	$('div.fileInput').on('click','div.inputRow > button',function(event){
	 		$(this).parent('div.inputRow').remove();
	 	});
}
</script>

<script>
    	function addFile_go(){
    		//alert("click addFile btn");
    		if($('input[name="uploadFile"]').length >=5){
    			alert("파일추가는 5개까지만 가능합니다.");
    			return;
    		}
    		
    		var input=$('<input>').attr({"type":"file","name":"uploadFile"}).css("display","inline"); 
    		var div=$('<div>').addClass("inputRow");
    		div.append(input).append("<button style='border:0;outline:0;' class='badge bg-red' type='button'>X</button");    		   		
    		$('.fileInput').append(div);
    	}
   
    </script>

<script>
	function salaryCheck(){
		 var salaryCheck=$("#hSalary option:selected").val();
		 if(salaryCheck == "연봉"){
			 $("#sal3for").show();
			 return;
		 }
		 if(salaryCheck == "회사내규에 따름"){
			 $("#sal3for").hide();
			 return;
		 }
		 if(salaryCheck == "면접 후 결정"){
			 $("#sal3for").hide();
			 return;
		 }
	}

	function hHireCheck(){
		var hHire=$('input[name="hHire"]').val();
		if(hHire < 0){
			alert("모집인원은 0명보다 작을 수 없습니다.");
		}
		return;
	}
</script>

<!-- 빈값 확인 -->
<script>
	function modify_go() {
		if($('input[name="hWorktime"]').val() == ""){
			alert("근무시간 입력은 필수 입니다");
			$('form-control ps-5').focus();
			return;
		}
		if($('input[name="hTitle"]').val() == ""){
		      alert("채용공고명 입력은 필수입니다.");
		       return;
		}
		if($('input[name="hHire"]').val() == ""){
		      alert("모집인원 입력은 필수입니다.");
		       return;
		}
		if($('input[name="hQualification"]').val() == ""){
		      alert("자격요건 및 우대조건 입력은 필수입니다.");
		       return;
		}
		if($('input[name="hJobTask"]').val() == ""){
		      alert("주요업무 입력은 필수입니다.");
		       return;
		}
		if($('input[name="hEdate"]').val() == ""){
		      alert("마감일 입력은 필수입니다.");
		       return;
		}
		if($('input[name="hlocation"]').val() == ""){
		      alert("근무지역 입력은 필수입니다.");
		       return;
		}
		if($('input[name="hPosition"]').val() == ""){
		      alert("직무 입력은 필수입니다.");
		       return;
		}
		 var salaryCheck=$("#hSalary option:selected").val();
		 if(salaryCheck == "연봉"){
			 if($('input[name="sal3for"]').val() == ""){
			      alert("연봉을 입력해주세요.");
			       return;
			}
		 }

	
		if (document.getElementById("content1").value.length == 0) {
			alert("사용기술 입력은 필수입니다.");
			return;
		}

		if (document.getElementById("content2").value.length == 0) {
			alert("전형절차 및 제출서류는 필수입니다.");
			return;
		}

		var hHire = $('input[name="hHire"]').val();
		if (hHire < 0) {
			alert("모집인원은 0명보다 작을 수 없습니다.");
			$('input[name="hHire"]').focus();
			return;
		}

		if ($('input:checkbox[name=hCareer]').is(":checked") == false){
			alert("경력여부 체크는 필수입니다.");
			return;
		}
		
		
		var files = $('input[name="uploadFile"]');
		for(var file of files){
			console.log(file.name+" : "+file.value);
			if(file.value==""){
				alert("파일을 선택하세요.");
				file.focus();
				file.click();
				return;
			}
		}	
		var form = $('form[role="form"]');
		form.submit();
		
	}
</script>

<%@ include file="/WEB-INF/views/common/summernote.jsp" %>

<script>
	
</script>	
</body>
