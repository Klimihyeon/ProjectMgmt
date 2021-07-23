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
<body>

		<div class="row">
			<div class="col-md-12">
				<div class="card card-outline card-info">
					<div class="card-header">
						<h3 class="card-title">상세보기</h3>
						<div class="card-tools">
							<c:if test="${cb.cbWriter ==loginUser.profName }">
							<button type="button" id="modifyBtn" class="btn btn-warning" onclick="modify_go();">MODIFY</button>						
						    <button type="button" id="removeBtn" class="btn btn-danger" onclick="remove_go();">REMOVE</button>
						    </c:if>
						    <button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">CLOSE</button>
					    </div>
					</div>
					<div class="card-body">
						<div class="form-group col-sm-12">
							<label for="cbTitle">제 목</label>
							<input type="text" class="form-control" id="cbTitle" readonly disabled value="${cb.cbTitle }" />							
						</div>
						<div class="row">	
							<div class="form-group col-sm-4" >
								<label for="cbWriter">작성자</label>
								<input type="text" class="form-control" id="cbWriter" readonly value="${cb.cbWriter }"/>
							</div>		
							
							<div class="form-group col-sm-4" >
								<label for="cbDate">작성일</label>
								<input type="text" class="form-control" id="cbDate" readonly 
									value="<fmt:formatDate value="${cb.cbDate }" pattern="yyyy-MM-dd" />" />
							
							</div>
							<div class="form-group col-sm-4" >
								<label for="cbCnt">조회수</label>
								<input type="text" class="form-control" id="cbCnt" readonly value="${cb.cbCnt }"/>
							</div>
						</div>		
						<div class="form-group col-sm-12">
							<label for="cbContents">내 용</label>
							<div id="cbContents">${cb.cbContents }</div>	
						</div>
												
					</div>													
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row  -->

    <form role="form">
	<input type="hidden" name="cbNo" value="${cb.cbNo }" />
	</form>
	
	
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
 	
</script>	
</body>
</html>