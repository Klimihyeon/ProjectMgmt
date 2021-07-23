<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<title>교과목 수정</title>

<body>

	<form action="modify.do" method="post" role="form" >
		교과목명 : <input id="subName" name="subName" type="text" value="${subject.subName} ">
		 작성자 : <input id="facId" type="text" name="facId" readonly="readonly" value="${subject.facId}"/>
		<input name="subCode" type="text" value="${subject.subCode}" hidden="">
	</form>

<button type="button" id="registBtn" onclick="modify();">완료</button>
<button type="button" id="cancelBtn" onclick="CloseWindow();">취소</button>

<script src="<%=request.getContextPath() %>/resources/js/subject/regist.js" ></script>


<script>
	function modify(){
		var formObj = $("form[role='form']");
		formObj.submit();
	}
</script>

</body>