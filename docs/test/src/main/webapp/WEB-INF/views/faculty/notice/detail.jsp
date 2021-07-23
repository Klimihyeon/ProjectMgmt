<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>

		<div class="row">
			<div class="col-md-12">
				<div class="card card-outline card-info">
					<div class="card-header">
						<h2 class="card-title">상세보기</h2>
						<div class="card-tools">
<!-- 							<button type="button" id="modifyBtn" class="btn btn-warning" onclick="modify_go();">MODIFY</button>						 -->
<!-- 						    <button type="button" id="removeBtn" class="btn btn-danger" onclick="remove_go();">REMOVE</button> -->
							
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="CloseWindow();"></button>
					    </div>
					</div>
					<div class="card-body">
						<div class="form-group col-sm-12">
							<label for="title">제 목</label>
							<input type="text" class="form-control" id="title" readonly disabled value="${notice.title }" />							
						</div>
						<div class="row">	
							<div class="form-group col-sm-4" >
								<label for="writer">작성자</label>
								<input type="text" class="form-control" id="writer" readonly value="${notice.writer }"/>
							</div>		
							
							<div class="form-group col-sm-4" >
								<label for="regdate">작성일</label>
								<input type="text" class="form-control" id="regdate" readonly 
									value="<fmt:formatDate value="${notice.regdate }" pattern="yyyy-MM-dd" />" />
							
							</div>
							<div class="form-group col-sm-4" >
								<label for="viewcnt">조회수</label>
								<input type="text" class="form-control" id="viewcnt" readonly value="${notice.viewcnt }"/>
							</div>
						</div>		
						<div class="form-group col-sm-12">
							<label for="content">내 용</label>
							<div id="content">${notice.content }</div>	
						</div>
												
					</div>													
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row  -->	
</body>
</html>