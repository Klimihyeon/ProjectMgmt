<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<title>교과목 등록</title>

<body>
	<h3>교과목 등록</h3>
	<form action="regist.do" method="post" role="form">
		<div class="card">
			<div class=" row col-md-12">
				<div class="col-md-12">
					<label for="subName">교과목명</label> <input id="subName" name="subName" class="form-control" type="text">
					<div>&nbsp;</div>
				</div>
				<div class="col-md-12">
					<label for="facId">작성자</label> <input id="facId" type="text" name="facId" class="form-control" readonly="readonly" value="${loginUser.usersId}" />
				</div>
			</div>

			<div>&nbsp;</div>
			<div class="row col-12" style="text-align: center;">
			<div class="col-3"></div>
				<div class="col-3">
					<button type="button" id="registBtn" onclick="regist_go();" class="btn btn-info form-control">등록</button>
				</div>
				<div class="col-3">
					<button type="button" id="cancelBtn" onclick="CloseWindow();" class="btn form-control">취소</button>
				</div>
				<div class="col-3"></div>
			</div>
		</div>
	</form>
	<script src="<%=request.getContextPath()%>/resources/js/subject/regist.js"></script>

</body>












