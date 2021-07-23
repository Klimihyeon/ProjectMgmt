<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<title>학습 보충 강의 등록</title>

<body>
	<section class="bg-half-170 d-table w-100"></section>
				<div class="col-md-12">
					<div class="card card-outline card-info">
						<div class="card-body">
						  <div class="d-flex align-items-start">
<!-- 						      <div class="avatar me-75"> -->
<!-- 						          <img src="../../../app-assets/images/portrait/small/avatar-s-9.jpg" width="38" height="38" alt="Avatar"> -->
<!-- 						      </div> -->
						      <div class="author-info">
						          <h6 class="mb-25">작성자&nbsp;:&nbsp;${subStdBoard.facId }</h6>
<%-- 						          <p class="card-text"><fmt:formatDate value="${ssb.ssbDate }" pattern="yy-MM-dd" /></p> --%>
						      </div>
						  </div>
						  <!-- Form -->
						  <form enctype="multipart/form-data" role="form" class="mt-2" method="post" action="regist.do" name="registForm">
						      <div class="row">
						          <div class="col-md-6 col-12">
						              <div class="mb-2">
						                  <label class="form-label" for="blog-edit-title">제목</label>
						                  <input type="text" id="writer" readonly hidden="" name="facId" class="form-control" value="${loginUser.usersId }">
						                  <input type="text" id="blog-edit-title" name='ssbName' class="form-control"  placeholder="제목을 작성해주세요." value="${subStdBoard.ssbName }">
						              </div>
						          </div>
						<!--             <div class="col-md-6 col-12"> -->
						<!--                 <div class="mb-2"> -->
						<!--                     <label class="form-label" for="blog-edit-category">Category</label> -->
						<!--                     <div class="position-relative"><select id="blog-edit-category" class="select2 form-select select2-hidden-accessible" multiple="" data-select2-id="blog-edit-category" tabindex="-1" aria-hidden="true"> -->
						<!--                         <option value="Fashion" selected="" data-select2-id="2">Fashion</option> -->
						<!--                         <option value="Food">Food</option> -->
						<!--                         <option value="Gaming" selected="" data-select2-id="3">Gaming</option> -->
						<!--                         <option value="Quote">Quote</option> -->
						<!--                         <option value="Video">Video</option> -->
						<!--                     </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false"><ul class="select2-selection__rendered"><li class="select2-selection__choice" title="Fashion" data-select2-id="4"><span class="select2-selection__choice__remove" role="presentation">×</span>Fashion</li><li class="select2-selection__choice" title="Gaming" data-select2-id="5"><span class="select2-selection__choice__remove" role="presentation">×</span>Gaming</li><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" role="searchbox" aria-autocomplete="list" placeholder="" style="width: 0.75em;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></div> -->
						<!--                 </div> -->
						<!--             </div> -->
						<!--             <div class="col-md-6 col-12"> -->
						<!--                 <div class="mb-2"> -->
						<!--                     <label class="form-label" for="blog-edit-slug">Slug</label> -->
						<!--                     <input type="text" id="blog-edit-slug" class="form-control" value="the-best-features-coming-to-ios-and-web-design"> -->
						<!--                 </div> -->
						<!--             </div> -->
						<!--             <div class="col-md-6 col-12"> -->
						<!--                 <div class="mb-2"> -->
						<!--                     <label class="form-label" for="blog-edit-status">Status</label> -->
						<!--                     <select class="form-select" id="blog-edit-status"> -->
						<!--                         <option value="Published">Published</option> -->
						<!--                         <option value="Pending">Pending</option> -->
						<!--                         <option value="Draft">Draft</option> -->
						<!--                     </select> -->
						<!--                 </div> -->
						<!--             </div> -->
						          <div class="col-12">
						              <div class="mb-2">
						                  <label class="form-label">Content</label>
						                  <div id="blog-editor-wrapper">
						                      <div id="blog-editor-container">
						                      	<textarea class="form-control" name="ssbContents" id="content" rows="5"
														placeholder="1000자 내외로 작성하세요.">
												${subStdBoard.ssbContents }
											</textarea>
						                      </div>
						                  </div>
						              </div>
						          </div>
						          <div class="col-12 mb-2">
						              <div class="border rounded p-2">
						                  <h4 class="mb-1">첨부파일</h4>
						                  <button class="btn btn-xs btn-primary"
										onclick="addFile_go();"	type="button" id="addFileBtn">Add File</button>
									<div class="card-footer fileInput">
										<ul class="mailbox-attachments d-flex align-items-stretch clearfix">
											
											<c:forEach items="${subStdBoard.ssbAttachList }" var="ssbAttach" >
											<li class="attach-item">																			
												<div class="mailbox-attachment-info">
													<a class="mailbox-attachment-name" name="attachedFile" 
														attach-fileName="${ssbAttach.fileName }" attach-no="${ssbAttach.pdsAno }" 
														href="<%=request.getContextPath()%>/pds/getFile.do?ano=${ssbAttach.pdsAno }"  >													
														<i class="fas fa-paperclip"></i>
														${ssbAttach.fileName }&nbsp;&nbsp;
														<button type="button" style="border:0;outline:0;" class="badge bg-red">X</button>																									
													</a>													
												</div>
											</li>	
											</c:forEach>
										</ul>
										<br/>
									</div>
						              </div>
						          </div>
						          <div class="col-12 mt-50">
						              <button type="button" class="btn btn-primary me-1 waves-effect waves-float waves-light" id="registBtn" onclick="modify_submit();">수 정</button>
						              <button type="button" class="btn btn-outline-secondary waves-effect" id="cancelBtn" onclick="CloseWindow();">Cancel</button>
						          </div>
						      </div>
						  </form>
						  <!--/ Form -->
						</div>
					
					</div><!-- end card -->				
				</div><!-- end col-md-12 -->
	    <!-- /.content -->
		
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
	    	
	    	function regist_go(){
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
	    		
	    		if($("input[name='title']").val()==""){ //form.title.value
	    			alert("제목은 필수입니다.");
	    			$("input[name='title']").focus();
	    			return;
	    		}
	    	
	    		document.registForm.submit();	
	    	}
	   
	    </script>

 <script>
    	window.onload=function(){
    		Summernote_start($("#content"));
    	}
    </script>
    
    <%@ include file="/WEB-INF/views/common/summernote.jsp" %>

	<section class="section bg-light"></section>
</body>

	