<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<title>학습 보충 강의 상세 조회</title>

<body>
	<section class="bg-half-170 d-table w-100"></section>
	<div class="card-body">
	    <h4 class="card-title">${subStdBoard.ssbName}</h4>
	    <div class="d-flex">
	        <div class="avatar me-50">
	            <img src="<%=request.getContextPath() %>/resources/img/noimage.jpg" alt="Avatar" width="24" height="24">
	        </div>
	        <div class="author-info">
	            <small class="text-muted me-25">by</small>
	            <small><a href="#" class="text-body">${subStdBoard.facId }</a></small>
	            <span class="text-muted ms-50 me-25">|</span>
	            <small class="text-muted"><fmt:formatDate value="${subStdBoard.ssbDate }" pattern="yy-MM-dd" /></small>
	        </div>
	    </div>
	    <div class="my-1 py-25">
	<!--         <a href="#"> -->
	<!--             <span class="badge rounded-pill badge-light-danger me-50">Gaming</span> -->
	<!--         </a> -->
	        <a href="#">
	            <span class="badge rounded-pill badge-light-warning">Video</span>
	        </a>
	    </div>
	    <p class="card-text mb-2">
	    	${subStdBoard.ssbContents}
	    	
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12" >
				<p></p>
			</div>
	        <c:forEach items="${subStdBoard.ssbAttachList }" var="ssbAttach">
			    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
						<video width="640" height="344" controls 
						 		src="<%=request.getContextPath() %>/faculty/manage/sub_std/stream?fileName=${ssbAttach.fileName}">
					    </video>
				</div>
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12" >
					<p></p>
				</div>
			</c:forEach>
	    </p>
	<!--     <h4 class="mb-75">Unprecedented Challenge</h4> -->
	<!--     <ul class="p-0 mb-2"> -->
	<!--         <li class="d-block"> -->
	<!--             <span class="me-25">-</span> -->
	<!--             <span>Preliminary thinking systems</span> -->
	<!--         </li> -->
	<!--         <li class="d-block"> -->
	<!--             <span class="me-25">-</span> -->
	<!--             <span>Bandwidth efficient</span> -->
	<!--         </li> -->
	<!--         <li class="d-block"> -->
	<!--             <span class="me-25">-</span> -->
	<!--             <span>Green space</span> -->
	<!--         </li> -->
	<!--         <li class="d-block"> -->
	<!--             <span class="me-25">-</span> -->
	<!--             <span>Social impact</span> -->
	<!--         </li> -->
	<!--         <li class="d-block"> -->
	<!--             <span class="me-25">-</span> -->
	<!--             <span>Thought partnership</span> -->
	<!--         </li> -->
	<!--         <li class="d-block"> -->
	<!--             <span class="me-25">-</span> -->
	<!--             <span>Fully ethical life</span> -->
	<!--         </li> -->
	<!--     </ul> -->
	<!--     <div class="d-flex align-items-start"> -->
	<!--         <div class="avatar me-2"> -->
	<!--             <img src="../../../app-assets/images/portrait/small/avatar-s-6.jpg" width="60" height="60" alt="Avatar"> -->
	<!--         </div> -->
	<!--         <div class="author-info"> -->
	<!--             <h6 class="fw-bolder">Willie Clark</h6> -->
	<!--             <p class="card-text mb-0"> -->
	<!--                 Based in London, Uncode is a blog by Willie Clark. His posts explore modern design trends through photos -->
	<!--                 and quotes by influential creatives and web designer around the world. -->
	<!--             </p> -->
	<!--         </div> -->
	<!--     </div> -->
	    <hr class="my-2">
	    <div class="d-flex align-items-center justify-content-between">
	        <div class="d-flex align-items-center">
	<!--             <div class="d-flex align-items-center me-1"> -->
	<!--                 <a href="#" class="me-50"> -->
	<!--                     <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square font-medium-5 text-body align-middle"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg> -->
	<!--                 </a> -->
	<!--                 <a href="#"> -->
	<!--                     <div class="text-body align-middle">19.1K</div> -->
	<!--                 </a> -->
	<!--             </div> -->
	            <div class="d-flex align-items-center">
	                <a href="#" class="me-50">
	                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bookmark font-medium-5 text-body align-middle"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
	                </a>
	                <a href="#">
	                    <div class="text-body align-middle">${subStdBoard.ssbCnt}</div>
	                </a>
	            </div>
	        </div>
	        <div class="dropdown blog-detail-share">
	        	<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12" >
					<button type="button" onclick="location.href='modifyForm.do?ssbNo=${subStdBoard.ssbNo}';" id="modifyBtn" class="btn btn-warning ">수 정</button>
			
					<button type="button" onclick="location.href='remove.do?ssbNo=${subStdBoard.ssbNo}';" 
					id="deleteBtn" class="btn btn-danger" >삭 제</button>
					<button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">CLOSE </button>
				</div>
	        
	        
	        
	        
	        
<%-- 	            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-share-2 font-medium-5 text-body cursor-pointer" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><circle cx="18" cy="5" r="3"></circle><circle cx="6" cy="12" r="3"></circle><circle cx="18" cy="19" r="3"></circle><line x1="8.59" y1="13.51" x2="15.42" y2="17.49"></line><line x1="15.41" y1="6.51" x2="8.59" y2="10.49"></line></svg> --%>
<!-- 	            <div class="dropdown-menu dropdown-menu-end"> -->
<!-- 	                <a href="#" class="dropdown-item py-50 px-1"> -->
<!-- 	                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github font-medium-3"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg> -->
<!-- 	                </a> -->
<!-- 	                <a href="#" class="dropdown-item py-50 px-1"> -->
<!-- 	                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-gitlab font-medium-3"><path d="M22.65 14.39L12 22.13 1.35 14.39a.84.84 0 0 1-.3-.94l1.22-3.78 2.44-7.51A.42.42 0 0 1 4.82 2a.43.43 0 0 1 .58 0 .42.42 0 0 1 .11.18l2.44 7.49h8.1l2.44-7.51A.42.42 0 0 1 18.6 2a.43.43 0 0 1 .58 0 .42.42 0 0 1 .11.18l2.44 7.51L23 13.45a.84.84 0 0 1-.35.94z"></path></svg> -->
<!-- 	                </a> -->
<!-- 	                <a href="#" class="dropdown-item py-50 px-1"> -->
<!-- 	                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook font-medium-3"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg> -->
<!-- 	                </a> -->
<!-- 	                <a href="#" class="dropdown-item py-50 px-1"> -->
<!-- 	                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter font-medium-3"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg> -->
<!-- 	                </a> -->
<!-- 	                <a href="#" class="dropdown-item py-50 px-1"> -->
<%-- 	                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-linkedin font-medium-3"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"></path><rect x="2" y="9" width="4" height="12"></rect><circle cx="4" cy="4" r="2"></circle></svg> --%>
<!-- 	                </a> -->
<!-- 	            </div> -->
	        </div>
	    </div>
	</div>
	<section class="section bg-light"></section>
</body>

	