<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<section class="bg-half-170 d-table w-100"></section>
<body  data-open="click" data-menu="vertical-menu-modern" data-col="content-detached-right-sidebar">
    <div class="app-content  ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
<!--         <div class="content-wrapper container-xxl p-0"> -->
                    <!-- Blog Detail -->
                    <div class="blog-detail-wrapper">
                        <div class="row">
                            <!-- Blog -->
                            <div class="col-md-12">
                                <div class="card">
                                	<div class="card-header">
				                        <div class="col-10">
				                            <h2 class="content-header-title float-start mb-0">질문 Detail</h2>
				                            <div class="breadcrumb-wrapper">
				                            </div>
				                        </div>
                                	</div>
			                        <div style="text-align: right;" class="col-md-12">
								    <button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">닫 기</button>
                               		</div>
                                    <div class="card-body">
                                        <h4 class="card-title">${cqbBoard.cqbTitle }</h4>
                                        <div class="d-flex">
                                            <div class="avatar me-50">
                                                <img src="<%=request.getContextPath() %>/professor/manage/img/getStuPicture?picture=${cqbBoard.stuProfileImg}"
                                                onerror="this.src='<%=request.getContextPath() %>/resources/img/noimage.png'" alt="Avatar" width="24" height="24" />
                                            </div>
                                            <div class="author-info">
                                                <small class="text-muted me-25">by</small>
                                                <small><a href="#" class="text-body">${cqbBoard.name }</a></small>
                                                <span class="text-muted ms-50 me-25">|</span>
                                                <small class="text-muted"><fmt:formatDate value="${cqbBoard.cqbDate }" pattern="yyyy-MM-dd" /></small>
                                            </div>
                                        </div>
                                        <br>
                                        <p class="card-text mb-2" >
                                            ${cqbBoard.cqbContents }
                                        </p>
                                        <div class="card" id="portfolio" >
											<div class="card-header">
												<h4>첨부파일</h4>
											</div>
											<div class="card-body">
												<div class="row">
													<c:forEach items="${cqbBoard.cqbAttachList }" var="attach">
														<div class="col-md-4 col-sm-4 col-xs-12"  style="cursor:pointer;"
															 onclick="location.href='<%=request.getContextPath()%>/professor/manage/edu/qna/getFile.do?cqbAno=${attach.cqbAno }';">
															<div class="info-box">	
															 	<span class="info-box-icon bg-yellow">
																	<i class="fa fa-copy"></i>
																</span>
																<div class="info-box-content">
																	<span class ="info-box-text">
																		<fmt:formatDate value="${attach.regDate }" pattern="yyyy-MM-dd" />	
																	</span>
																	<span class ="info-box-number">${attach.fileName }</span>
																</div>
															</div>
														 </div>							
													</c:forEach>
												</div>
											</div>	
										</div>
                                        <hr class="my-2" />
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <div class="d-flex align-items-center me-1">
                                                    <a href="#" class="me-50">
                                                        <i data-feather="message-square" class="font-medium-5 text-body align-middle"></i>
                                                    </a>
                                                    <a href="#">
                                                        <div class="text-body align-middle">19.1K</div>
                                                    </a>
                                                </div>
                                                <div class="d-flex align-items-center">
                                                    <a href="#" class="me-50">
                                                        <i data-feather="bookmark" class="font-medium-5 text-body align-middle"></i>
                                                    </a>
                                                    <a href="#">
                                                        <div class="text-body align-middle">${cqbBoard.cqbCnt }</div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="dropdown blog-detail-share">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ Blog -->

							<!-- Reply content -->
						    	<!-- reply component start --> 
									<div class="col-md-12">
										<div class="card card-info">					
											<div class="card-body">
												<!-- The time line -->
												<div class="timeline">
													<!-- timeline time label -->
													<div class="time-label" id="repliesDiv">
														<span class="bg-green">Replies List </span>	
																				
													</div>
													
													
												</div>
												<div class='text-center'>
													<nav aria-label="member list Navigation">
														<ul id="pagination" class="pagination justify-content-center m-0">
															
														</ul>
													</nav>
												</div>
											</div>
											<div class="card-footer">
												<label for="newReplyWriter">Writer</label>
												<input class="form-control" type="hidden" placeholder="USER ID"	 id="newReplyWriter" readonly value="${loginUser.usersId }"> 
												<label for="newReplyText">Reply Text</label>
												<input class="form-control" type="text"	placeholder="REPLY TEXT" id="newReplyText">
												<br/>
												<button type="button" class="btn btn-primary" id="replyAddBtn" onclick="replyRegist_go();">ADD REPLY</button>
											</div>				
										</div>			
										
									</div><!-- end col-md-12 -->
								</div><!-- end row -->
						  </div>
						</div>
<!-- 			  </div>   -->
						
<!-- 			<!-- Modal --> 
<!-- 			<div id="modifyModal" class="btn btn-outline-primary waves-effect" role="dialog"> -->
<!-- 			  <div class="modal-dialog"> -->
<!-- 			    Modal content -->
<!-- 			    <div class="modal-content"> -->
<!-- 			      <div class="modal-header"> -->
<!-- 			        <h4 class="modal-title" style="display:none;"></h4> -->
<!-- 			        <button type="button" class="close" data-dismiss="modal">&times;</button>         -->
<!-- 			      </div> -->
<!-- 			      <div class="modal-body" data-rno> -->
<!-- 			        <p><input type="text" id="replytext" class="form-control"></p> -->
<!-- 			      </div> -->
<!-- 			      <div class="modal-footer"> -->
<!-- 			        <button type="button" class="btn btn-info" id="replyModBtn" onclick="replyModify_go();">Modify</button> -->
<!-- 			        <button type="button" class="btn btn-danger" id="replyDelBtn" onclick="replyRemove_go();">DELETE</button> -->
<!-- 			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
<!-- 			      </div> -->
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			</div> -->


	
<!-- <button type="button" class="btn btn-outline-primary waves-effect" data-bs-toggle="modal" data-bs-target="modifyModal"> -->
<!--                 Primary -->
<!--               </button> -->

			  <div class="modal fade text-start modal-primary" id="modifyModal" role="dialog" tabindex="-1" aria-labelledby="myModalLabel160" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
				        <h4 class="modal-title" style="display:none;"></h4>
<!-- 				        <button type="button" class="close" data-dismiss="modal">&times;</button>         -->
				    </div>
                    <div class="modal-body" data-rno>
				      <p><input type="text" id="replytext" class="form-control"></p>
				    </div>
                    <div class="modal-footer">
				        <button type="button" class="btn btn-primary" id="replyModBtn" onclick="replyModify_go();">Modify</button>
<!-- 				        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="">Close</button> -->
				    </div>
                  </div>
                </div>
              </div>

     
    
    <form role="form">
	<input type="hidden" name="cqbNo" value="${cqbBoard.cqbNo }" />
	</form>
	
 <%@ include file="./reply_js.jsp" %>
	
<script>
	
	

	function modify_go(){
		var formObj = $("form[role='form']");
		//alert("click modify btn");
		formObj.attr({
			'action':'modifyForm.do',
			'method':'post'
		});
		formObj.submit();
	}
	function remove_go(){
		var formObj = $("form[role='form']");
		//alert("click remove btn");
		var answer = confirm("정말 삭제하시겠습니까?");
		if(answer){		
			formObj.attr("action", "remove.do");
			formObj.attr("method", "post");
			formObj.submit();
		}
	}
	function modal_close(){
		$(".modal").css('display','none')
		$(".modal").attr('class','modal fade text-start modal-primary');
		$(".modal").attr('aria-hidden','true');
		$(".modal").attr('aria-hidden','true');
		$(".modal").removeAttr('role');
		$(".modal").removeAttr('aria-modal');
		$(".modal-backdrop").remove();
		$(".pace-done").removeAttr('data-bs-padding-right');
		$(".pace-done").css('overflow','');
		$(".pace-done").css('padding-right','');
	}
 	
</script>	

</body>
