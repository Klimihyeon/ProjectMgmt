<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
th{
	text-align: center;
}
div.card, h1, h2, h3, h4, h5, h6, #divBtn{
margin: 20px;
}
#divBtn {
	padding-bottom: 20px;
}
</style>
</head>
<section class="bg-half-170 d-table w-100"></section>
	<body>
<!-- 		<div class="app-content content "> -->
<!--         <div class="content-overlay"></div> -->
<!--         <div class="header-navbar-shadow"></div> -->

<div class="col-sm-12">

<!-- <h3>인적사항</h3> -->
<!-- <div class="card"> -->
<!-- 	<div class="card-header"> -->
<!-- 	</div> -->
<!-- 	<div class="card-body"> -->
<!-- 	</div> -->
<!-- </div> -->

<h3>이력서 제목</h3>



<!-- 폼 넣었음 -->
<form enctype="multipart/form-data" role="form" class="mt-2" method="post" action="regist.do" name="registForm">

<div>

<div class="card">
	<div class="card-header">
	</div>
	<div class="card-body">
	<input style="width: 90%; float: left;" id="largeInput" name="resumeTitle" class="form-control form-control-lg" type="text" placeholder="이력서 제목을 입력해주세요.">
	<select style="width: 10%; float: left; height: 46px;" class="form-select" name="isopen">
		<option>공개여부</option>
		<option>공개</option>
		<option>비공개</option>
	</select>
	<input name="studentId" value="${loginUser.usersId }" hidden="">
	</div>
</div>

		<h3>인적사항</h3>
		<div class="card">
			<div class="card-header"></div>
			<div class="card-body">
				<table class="table">
					<thead>
						<tr>
							<td rowspan="5"
								style="text-align: center; padding-top: 0px; padding-bottom: 0px; padding-right: 0px; padding-left: 0px; width: 250px;">
								<img class=""
								src="<%=request.getContextPath() %>/student/manage/mypage/getPicture?picture=${student.stuProfileImg}"
								onerror="this.src='<%=request.getContextPath() %>/resources/img/noimage.jpg'"
								style="height: 290px; width: 250px;" alt="User avatar">
							</td>
							<th style="text-align: center;">이름</th>
							<td colspan="2" style="text-align: center;"><input
								class="form-control" type="text" value="${student.name }"
								readonly="readonly"></td>
						</tr>
						<tr>
							<th style="text-align: center;">성별</th>
							<c:if test="${student.gender eq 'M'}">
								<td colspan="2" style="text-align: center;"><input
									class="form-control" type="text" value="남자" readonly="readonly">
								</td>
							</c:if>
							<c:if test="${student.gender eq 'F'}">
								<td colspan="2" style="text-align: center;"><input
									class="form-control" type="text" value="여자" readonly="readonly">
								</td>
							</c:if>

						</tr>
						<tr>
							<th style="text-align: center;">연락처</th>
							<td colspan="2" style="text-align: center;"><input
								class="form-control" value="${student.memPhone }" type="text"
								readonly="readonly"></td>
						</tr>
						<tr>
							<th style="text-align: center;">이메일</th>
							<td colspan="2" style="text-align: center;"><input
								type="email" class="form-control"
								value="${student.memberEmail }" type="text" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th style="text-align: center;">주소</th>
							<td colspan="2" style="text-align: center;"><input
								class="form-control"
								value="(${student.addrZip })&nbsp;&nbsp;&nbsp;${student.addr1 }&nbsp;&nbsp;&nbsp;${student.addr2 }"
								type="text" readonly="readonly"></td>
						</tr>
					</thead>
				</table>
			</div>
		</div>


		<!-- 학력사항 -->
		<h3>학력사항</h3>
		<div class="card">
			<div class="card-header"></div>
			<div class="card-body">
				<div style="text-align: right;">
					<button type="button" class="btn btn-primary" id="btnEduAdd">추가</button>
					<button type="button" class="btn btn-primary" id="btnEduDel">삭제</button>
				</div>
				<br>
				<table id="eduTable" class="table">
					<thead>
						<tr>
							<th style="width: 15%">학력사항</th>
							<th style="width: 40%">재학기간</th>
							<th style="width: 15%">전공</th>
							<th style="width: 15%">학점</th>
							<th style="width: 10%">상태</th>
						</tr>
					</thead>


					<tbody>
						<tr>
							<td>
							<select id="edu" class="form-select"
								name="educationInfo">
									<option value="선택">선택</option>
									<option value="2,3년제 대학">2,3년제 대학</option>
									<option value="4년제 대학">4년제 대학</option>
							</select>
							 <input id="edu1" class="form-control" name="educationDetail" type="text"  style="margin-top: 10px;">
								</td>
							<td style="text-align: center;">
								<input class="form-control" name="edStartMonth"
								type="date" style="width: 40%; float: left;"> <span
								style="float: left;">&nbsp;&nbsp;~&nbsp;&nbsp;</span>
								<input class="form-control" name="edFinalMonth" type="date" style="width: 40%; float: left;">
							</td>
							<td>
								<input class="form-control" name="major" type="text">
							</td>
							<td style="text-align: center;">
								<div class="row" style="text-align: center;">
									<input class="form-control" name="score" type="text" style="width: 50px;">
									 &nbsp;/ &nbsp;
									<input class="form-control" name="maxScore" type="text" style="width: 50px;">
								</div>
							</td>
							<td>
								<select class="form-select" name="edInfo" style="width: 100px;">
										<option>졸업</option>
										<option>휴학</option>
										<option>중퇴</option>
										<option>재학</option>
								</select>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
<!-- 경력사항  -->	
<h3>경력사항</h3>
		<div class="card">
			<div class="card-header"></div>
			<div class="card-body">
				<div style="text-align: right;">
					<button type="button" class="btn btn-primary" id="btnCarAdd">추가</button>
					<button type="button" class="btn btn-primary" id="btnCarDel">삭제</button>
				</div>
				<br>
			<div class="table-responsive">
				<table id="carTable" class="table">
					<thead>
						<tr>
							<th>기간</th>
							<th>기업명</th>
							<th>직급</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input class="form-control" name="careerStartMonth"
								type="date" style="width: 45%; float: left;"> <span
								style="float: left;">&nbsp;&nbsp;~&nbsp;&nbsp;</span> <input
								class="form-control" name="careerFinalMonth" type="date"
								style="width: 45%; float: left;"></td>
							<td><input class="form-control" name="careerCompany"
								type="text"></td>
							<td><input class="form-control" name="careerDivision"
								type="text"></td>
							<td><select class="form-select" name="careerInfo">
									<option value="선택">선택</option>
									<option value="퇴직">퇴직</option>
									<option value="재직">재직</option>
							</select></td>
						</tr>
						<tr>
							<th>업무내용</th>
							<td colspan="3"><textarea class="form-control" id="content2"
									name="careerContent" rows="5" placeholder="500자 내외로 작성하세요.">
															</textarea></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
<!-- 자격증 -->
<h3>자격증</h3>
	<div class="card">
		<div class="card-header"></div>
		<div class="card-body">
				<div style="text-align: right;">
                	<button type="button" class="btn btn-primary" id="btnCerAdd">추가</button>
              	  <button type="button" class="btn btn-primary" id="btnCerDel">삭제</button>
				</div>
				<br>
			<div class="table-responsive">
				<table id="cerTable" class="table">
					<thead>
						<tr>
							<th>자격증명</th>
							<th>취득일</th>
							<th>발행기관</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input class="form-control" name="certName" type="text"></td>
							<td><input class="form-control" name="certDate" type="date"></td>
							<td><input class="form-control" name="certCom" type="text"></td>
						</tr>
					</tbody>
				</table>
			</div>


		</div>
	</div>

<!-- 포트폴리오 -->
	<h3>포트폴리오 및 기타문서</h3>
	<div class="card">
		<div class="card-header"></div>
		<div class="card-body">
			<div class="col-sm-12">
				<div class="border rounded p-2">
					<h4 class="mb-1">첨부파일</h4>
					<button class="btn btn-xs btn-primary" onclick="addFile_go();"
						type="button" id="addFileBtn">Add File</button>
					<div class="card-footer fileInput"></div>
				</div>
			</div>
		</div>
	</div>

<!-- 자기소개서  -->
	<h3>자기소개서</h3>
	<div class="card">
		<div class="card-header"></div>
		<div class="card-body">
			<div class="card-body">
				<textarea class="form-control" name="profileContent" id="content"
					rows="5" placeholder="1000자 내외로 작성하세요.">
										
									</textarea>
			</div>

		</div>
	</div>
</form> <!-- 폼 넣었음 -->
</div>

<!-- 등록버튼 -->
	<div id="divBtn" style="text-align: right;">
		<button type="button"
			class="btn btn-primary me-1 waves-effect waves-float waves-light"
			id="registBtn" onclick="regist_go();">등록</button>
		<button type="button" class="btn btn-outline-secondary waves-effect"
			id="cancelBtn" onclick="CloseWindow();">닫기</button>
	</div>



        <script>
        window.onload=function(){
        	Summernote_start($("#content"));
        	Summernote_start($("#content2"));
        	
        	$('#btnEduAdd').click(function() {
        	    $('#eduTable > tbody:last').append('<tr><td><select id="edu" class="form-select"name="educationInfo"><option value="선택">선택</option><option value="2,3년제 대학">2,3년제 대학</option><option value="4년제 대학">4년제 대학</option>'
        	    		+ 	'</select><input id="edu1" class="form-control" name="educationDetail" type="text"  style="margin-top: 10px;"></td><td style="text-align: center;"><input class="form-control" name="edStartMonth"type="date" style="width: 40%; float: left;"><span'
						+	'style="float: left;">&nbsp;&nbsp;~&nbsp;&nbsp;</span><input class="form-control" name="edFinalMonth" type="date" style="width: 40%; float: left;"></td><td><input class="form-control" name="major" type="text">'
						+   '</td><td style="text-align: center;"><div class="row" style="text-align: center;"><input class="form-control" name="score" type="text" style="width: 50px;">&nbsp;/ &nbsp;<input class="form-control" name="maxScore" type="text" style="width: 50px;">'
						+   '</div></td><td><select class="form-select" name="edInfo" style="width: 100px;"><option>졸업</option><option>휴학</option><option>중퇴</option><option>재학</option></select></td></tr>');
        	  });
	       	$('#btnEduDel').click(function() {
	       	    $('#eduTable > tbody > tr:last').remove();
	       	  });
	       	
        	$('#btnCarAdd').click(function() {
        	    $('#carTable > tbody:last').append('<tr><td><input class="form-control" name="careerStartMonth"type="date" style="width: 45%; float: left;"> <spanstyle="float: left;">&nbsp;&nbsp;~&nbsp;&nbsp;</span> <input'
        	  			+ 'class="form-control" name="careerFinalMonth" type="date"style="width: 45%; float: left;"></td><td><input class="form-control" name="careerCompany"type="text"></td><td><input class="form-control" name="careerDivision"'
        	  			+ 'type="text"></td><td><select class="form-select" name="careerInfo"><option value="선택">선택</option><option value="퇴직">퇴직</option><option value="재직">재직</option></select></td></tr><tr>'
        	  			+ '<th>업무내용</th><td colspan="3"><textarea class="form-control"name="careerContent" rows="5" placeholder="500자 내외로 작성하세요."></textarea></td></tr>');
        	  });
	       	$('#btnCarDel').click(function() {
	       	    $('#carTable > tbody > tr:last').remove();
	       	    $('#carTable > tbody > tr:last').remove();
	       	  });
	       	
        	$('#btnCerAdd').click(function() {
        	    $('#cerTable > tbody:last').append('<tr><td><input class="form-control" name="certName" type="text"></td><td><input class="form-control" name="certDate" type="date"></td><td><input class="form-control" name="certCom" type="text"></td></tr>');
        	  });
	       	$('#btnCerDel').click(function() {
	       	    $('#cerTable > tbody > tr:last').remove();
	       	  });
	       	
        }   	
       
        
       
       	
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
         <%@ include file="/WEB-INF/views/common/summernote.jsp" %>
<!--     </div> -->
		
	</body>
</html>