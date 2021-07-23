<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
#leftBtn{
	position: absolute;
	top: 50%;
	left: 0;
}
#rightBtn{
	position: absolute;
	top: 50%;
	right: 0;
}
#addFileBtn{
	top: 50%;
	left: 20%;
}
#sticky{
	position: fixed;
	top: 10px;
}
</style>
</head>
<body>
<div class="content-wrapper container-xxl p-0">
	<div class="content-header row"></div>
        <div class="content-body"><!-- Dashboard Ecommerce Starts -->
			<section id="dashboard-ecommerce">
			  	<div class="row">
				    <!-- Medal Card -->
				    <div class="col-6" >
				      <div class="card" id="sticky" style="height: 950px; width: 45%">
				        <div class="card-body" >
							<h3>시험지 이미지</h3>
							<div id="img_show" style="height: 870px; "></div>
							<div class="w3-content" style="max-width:800px;position:relative">
							</div>
							<button id="leftBtn" class="btn btn-primary btnsize" onclick="plusDivs(-1)">
								&#10094;
							</button>
							<button id="rightBtn" class="btn btn-primary btnsize" onclick="plusDivs(+1)">
								&#10095;
							</button>
				        </div>
				      </div>
				    </div>
					<div class="col-6">
					    <form role="imageForm" method="post" action="regist.do" name="registForm" enctype="multipart/form-data" >
						    <div class="card">
						    	<div class="card-body">
									<h3>시험지 정보입력</h3>
									<div class="form-group">
										<div class="row">
											<div class="col-6">
												<label for="examName">시험지명 </label>
												<input type="text" id="examName" name="examName" class="form-control" placeholder="시험지명을 입력해 주세요.">
											</div>
											<input type="text" name="profName" style="display: none;" value="${prof.profName }">
											<div class="col-6">
												<p style="margin-bottom: 0px">과목선택</p>
												<select class="form-select d-flex align-items-center" id="selectSubjectVoList" name="subCode" style="width: 80%;">
													<option value="">과목선택</option>
													<c:forEach var="list" items="${subjectList }">
														<option value="${list.subCode }">${list.subName }</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
									
									<div class="form-group">								
										<div class="card card-outline card-success">
											<div class="row">
												<div class="col-3">
													<button class="btn btn-xs btn-primary" 
													type="button" id="addFileBtn" onclick="addFile_go();">Add File</button>
												</div>
												<div class="col-9">
													<h5 style="display:inline;line-height:40px;">첨부파일 : </h5>
													<!-- 생성 -->
													<div class="card-footer fileInput"></div>
												</div>
											</div>									
										</div>
									</div>
							    </div>
						    </div>
						    <div class="card">
								<div class="card-body">
									<h3>문제 출제</h3>
										<div class="table-responsive">
											<button type="button" id="plusTable" class="badge bg-primary rounded-pill" onclick="addTr()">문제추가</button>
											<button type="button" id="minusTable" class="badge bg-primary rounded-pill" onclick="removeTr()">문제삭제</button>
											<button type="button" id="valueTable" class="badge bg-primary rounded-pill" onclick="addValue()">점수자동부여</button>
											<button type="button" id="valueZero" class="badge bg-primary rounded-pill" onclick="noneValue()">점수초기화</button>
									        <table class="table" id="table">
									          <thead>
									            <tr>
									              <th>번호</th>
									              <th>정답</th>
									              <th>점수</th>
									            </tr>
									          </thead>
									          <tbody id="tbody">
									          </tbody>
									          </table>
										</div>
						   	 	</div>
						   	 	<br>
								<button class="btn btn-xs btn-primary" type="button" id="registFileBtn" 
										onclick="regist_go();">시험지 등록</button>
						  	</div>  
						</form>
					</div>
			 	</div>
			</section>
		</div>
	</div>

	
    <script type="text/javascript">
    	window.onload=function(){
    		//★★★★★★★★★★★★★★★★The Event Propagation★★★★★★★★★★★★★★★★★★★
        	$('.fileInput').on('change','input[type="file"]',function(event){
        		if(this.files[0].size>1024*1024*1){
        			alert("파일 용량이 5MB를 초과하였습니다.");
        			this.value="";
        			return false;
        		}
        		filename = this.files[0].name;
        		var fileLen = filename.length;
        		var lastDot = filename.lastIndexOf('.');
        		var fileExt = filename.substring(lastDot, fileLen).toLowerCase();
        		if(fileExt==".jpg" || fileExt==".jpeg" || fileExt==".png"||fileExt==".gif"){
        		}else{
        			alert("파일추가는 이미지 파일만 가능합니다.");
        			this.value="";
        			return false;
        		}
        	});
    		
    		
        	$('div.fileInput').on('click','div.inputRow > button',function(event){
        		var num = $(this).parent('div.inputRow').attr("class").replace('inputRow inputRow','');
        		
        		$(this).parent('div.inputRow').remove();
        		$('.img_show'+num).remove();
        	});
        	
    	}
    </script>
<script type="text/javascript">

//tr추가하기
function addTr(){
	var trcount = $("#tbody tr").length+1;
	//tr갯수
	if(trcount>=31){
		alert("30문제 까지만 가능합니다.");
		return;
	}
	var td1 = $('<td>').text(trcount);
	var td1input = $('<input>').attr({"type":"hidden","name":"examNo"+trcount}).val(trcount);
	td1.append(td1input);
	
	var td2 = $('<td>');
	
	var td2row =$('<div>').addClass("row");
	
	var td2rowcol1 =$('<div>').addClass("col-3");
	var td2rowcol1label =$('<label>').text("1. ");
	td2rowcol1.append(td2rowcol1label);
	var td2rowcol1labelinput = $('<input>').attr({"type":"radio","name":"examCorrect"+trcount,"value":1});
	td2rowcol1label.append(td2rowcol1labelinput);
	
	var td2rowcol2 =$('<div>').addClass("col-3");
	var td2rowcol2label =$('<label>').text("2. ");
	td2rowcol2.append(td2rowcol2label);
	var td2rowcol2labelinput = $('<input>').attr({"type":"radio","name":"examCorrect"+trcount,"value":2});
	td2rowcol2label.append(td2rowcol2labelinput);
	
	var td2rowcol3 =$('<div>').addClass("col-3");
	var td2rowcol3label =$('<label>').text("3. ");
	td2rowcol3.append(td2rowcol3label);
	var td2rowcol3labelinput = $('<input>').attr({"type":"radio","name":"examCorrect"+trcount,"value":3});
	td2rowcol3label.append(td2rowcol3labelinput);
	
	var td2rowcol4 =$('<div>').addClass("col-3");
	var td2rowcol4label =$('<label>').text("4. ");
	td2rowcol4.append(td2rowcol4label);
	var td2rowcol4labelinput = $('<input>').attr({"type":"radio","name":"examCorrect"+trcount,"value":4});
	td2rowcol4label.append(td2rowcol4labelinput);
	
	td2row.append(td2rowcol1,td2rowcol2,td2rowcol3,td2rowcol4);
	td2.append(td2row);
	
	var td3 = $('<td>');
	var td3input = $('<input>').attr({"type":"number","name":"examNoScore"+trcount,"onKeyup":"this.value=this.value.replace(/[^0-9]/g,'')"}).addClass("showScore");
	td3.append(td3input);
	
	var tr = $('<tr>').addClass("tr"+trcount);
	tr.append(td1);
	tr.append(td2);
	tr.append(td3);
	
	$("#tbody").append(tr);
}
//tr지우기
function removeTr(){
	var trcount = $("#tbody tr").length+1;
	var trtr = $('.tr'+(trcount-1)).remove();
}

//점수부여
function addValue(){
	var showscore =$('.showScore').length;
	var scoresum = 0;
	var countNull =0;
	for(var i =0; i < showscore; i++){
		if($('.showScore').eq(i).val()==""){
			countNull++;
		}else{
			scoresum = parseInt(scoresum)+ parseInt($('.showScore').eq(i).val());
			console.log(scoresum);
			
		}
	}
	for(var i=0; i<showscore; i++){
		if($('.showScore').eq(i).val()==""){
			$('.showScore').eq(i).val(parseInt((100-scoresum) / countNull));
		}
	}
	
	var lastscore = 100-((parseInt((100-scoresum) / countNull)) *countNull)-scoresum;

	$('.showScore').eq(showscore-1).val(parseInt($('.showScore').eq(showscore-1).val())+lastscore);
}
//점수 지우기
function noneValue(){
	var showscore =$('.showScore').length;
	for(var i =0; i < showscore; i++){
		$('.showScore').eq(i).val("");
	}
}

//등록하기
function regist_go(){
	var files = $('input[name="pictureFile"]');
	for(var file of files){
		if(file.value==""){
			alert("파일을 선택하세요.");
			file.focus();
			file.click();
			return;
		}
	}	

	if($("input[name='examName']").val()==""){ //form.title.value
		alert("제목은 필수입니다.");
		$("input[name='examName']").focus();
		return;
	}

	var trcount = $("#tbody tr").length;
	for(var i=0; i<trcount; i++){
		if($('input:radio[name="examCorrect'+(i+1)+'"]').is(':checked')){
			
		}else{
			alert(i+1+"번 문제의 정답을 입력해주세요.");
			$('input:radio[name="examCorrect'+(i+1)+'"]').focus();
			return;
		}
		if($('input:number[name="examNoScore'+(i+1)+'"]').val()==""){
			alert(i+1+"번 문제의 점수를 입력해주세요.");
			$('input:number[name="examNoScore'+(i+1)+'"]').focus();
			console.log(i+1);
			return;
		}
	}
	
	
	document.registForm.submit();	
}


//파일선택추가하기
var maxcount=1;
function addFile_go(){
	if($('input[name="pictureFile"]').length >=5){
		alert("파일추가는 5개까지만 가능합니다.");
		return;
	}
	var imgdiv ="";
	if($('input[name="pictureFile"]').length>=1){
		var input=$('<input>').attr({"type":"file","name":"pictureFile","onchange":"picture_go("+maxcount+")"}).css("display","inline").addClass("picture"+maxcount);
		var div=$('<div>').addClass("inputRow "+"inputRow"+maxcount);
		div.append(input).append("<button style='border:0;outline:0;' class='badge bg-red' type='button'>X</button> ");
		$('.fileInput').append(div);
		
	 	imgdiv=$('<div>').addClass("img_show img_show"+maxcount).css("display","none");
		
	}else{
		var input=$('<input>').attr({"type":"file","name":"pictureFile","onchange":"picture_go("+maxcount+")"}).css("display","inline").addClass("picture"+maxcount);
		var div=$('<div>').addClass("inputRow "+"inputRow"+maxcount);
		div.append(input).append("<button style='border:0;outline:0;' class='badge bg-red' type='button'>X</button> ");
		$('.fileInput').append(div);
		
		imgdiv=$('<div>').addClass("img_show img_show"+maxcount);
	}
	$('#img_show').append(imgdiv);
	
	
	maxcount = maxcount +1;
}



//이미지 슬라이드화
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
	  var i;
	  var x = document.getElementsByClassName("img_show");
	  if (n > x.length) {slideIndex = 1}    
	  if (n < 1) {slideIndex = x.length} ;
	  for (i = 0; i < x.length; i++) {
	     x[i].style.display = "none";  
	  }
	  x[slideIndex-1].style.display = "block";  
}


var formData ="";

//사진선택시 이미지 보여주기
function picture_go(num){
	   formData = new FormData($('form[role="imageForm"]')[0]);

	   var form = $('form[role="imageForm"]');
	   var picture = form.find('[class=picture'+num+']')[0];
	   //업로드 확인변수 초기화
	   form.find('[name="checkUpload"]').val(0);
			
	   if (picture.files && picture.files[0]) {
	      var reader = new FileReader();
	       reader.onload = function (e) {
	           $('div.img_show'+num)
	              .css({'background-image':'url('+e.target.result+')',
	                 'background-position':'center',
	                 'background-size':'cover',
	                 'background-repeat':'no-repeat',
	                 'height' : '870px'
	                 });
	        }
	      reader.readAsDataURL(picture.files[0]);
	      
	   }
	}
</script>	
</body>
</html>