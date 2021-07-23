<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
tbody {
	height: 40px;
}
div.card{
	margin: 20px;
}
body {
  overflow-x:hidden;
  oeveflow-y:auto;
}
th, tr, td{
text-align: center;
}
</style>
</head>
<section class="bg-half-170 d-table w-100"></section>
<body>
	<!-- 		<div class="app-content content "> -->
	<!--         <div class="content-overlay"></div> -->
	<!--         <div class="header-navbar-shadow"></div> -->
	<div class="content-wrapper ">
		<div class="content-body">
			<div id="user-profile">
				<!-- profile info section -->
				<section id="profile-info">
					<div class="row">
						<!-- left profile info section -->
						<div id="pdfDiv" class="col-xl-12 col-lg-12 col-md-12">
						<br>
								<div style="text-align: right; padding: 20px;">	
									<button type="button" class="btn btn-primary" id="savePdf">
										<svg xmlns="http://www.w3.org/2000/svg" width="16"
											height="16" fill="currentColor" class="bi bi-printer"
											viewBox="0 0 16 16">
								  <path d="M2.5 8a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z"></path>
								  <path
												d="M5 1a2 2 0 0 0-2 2v2H2a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h1v1a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-1h1a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-1V3a2 2 0 0 0-2-2H5zM4 3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1v2H4V3zm1 5a2 2 0 0 0-2 2v1H2a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-1v-1a2 2 0 0 0-2-2H5zm7 2v3a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1z"></path>
									</svg>
										PDF
									</button>
									<button id="close" style="width: 77px; height: 40px;" type="button" class="btn btn-outline-secondary waves-effect" onclick="CloseWindow();">닫기</button>
								</div>
								
								<div style="padding: 20px;">
								<h3 id="pdfTitle" style="text-align: center;">${resume.resumeTitle }</h3>
								<h5 style="padding left: 10px;">지원분야 > IT웹개발</h5>
								</div>
								<!-- about -->
								<div class="card">
									<div class="card-body">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<td rowspan="5" style="height: 200px; width: 160px; padding: 10px; text-align: left;">
															<img class=""
															src="<%=request.getContextPath() %>/student/manage/mypage/getPicture?picture=${student.stuProfileImg}"
															onerror="this.src='<%=request.getContextPath() %>/resources/img/noimage.png'"
															style="height: 200px; width: 160px;" alt="User avatar">
														</td>
														<th style="width: 150px;">이름</th>
														<td colspan="2" style="text-align: left;">${student.name }</td>
													</tr>
													<tr>
														<th>성별</th>
														<td colspan="2" style="text-align: left;">
															<c:if test="${student.gender eq 'M'}">
																남자
															</c:if>
															<c:if test="${student.gender eq 'F'}">
																여자
															</c:if>
														</td>
													</tr>
													<tr>
														<th>연락처</th>
														<td colspan="2" style="text-align: left;">${student.memPhone }</td>
													</tr>
													<tr>
														<th>이메일</th>
														<td colspan="2" style="text-align: left;">${student.memberEmail }</td>
													</tr>
													<tr>
														<th>주소</th>
														<td colspan="2" style="text-align: left;">(${student.addrZip })&nbsp;&nbsp;${student.addr1 }&nbsp;&nbsp;${student.addr2 }</td>
													</tr>
												</thead>
											</table>
										</div>
									</div>
								</div>
								<div class="card" >
									<div class="card-header">
										<h1>학력사항</h1>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table" style="height: 40px;">
												<thead>
													<tr>
														<th>학력사항</th>
														<th>재학기간</th>
														<th>전공</th>
														<th>학점</th>
														<th>상태</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="education" items="${educationList}">
													<tr>
														<td>
															${education.educationDetail } (${education.educationInfo })
														</td>
														<td>
															<fmt:formatDate value="${education.edStartMonth }" pattern="yy-MM-dd" />
															<span>&nbsp;&nbsp;~&nbsp;&nbsp;</span>
															<fmt:formatDate value="${education.edFinalMonth }" pattern="yy-MM-dd" />
														</td>
														<td>${education.major }</td>
														<td>
															${education.score }
															<span>&nbsp;&nbsp;/&nbsp;&nbsp;</span>
															${education.maxScore }
														</td>
														<td>${education.edInfo }</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<h1>경력사항</h1>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th width="25%">기간</th>
														<th>기업명</th>
														<th>직급</th>
														<th>상태</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="career" items="${careerList}">
													<tr>
														<td>
															<fmt:formatDate value="${career.careerStartMonth }" pattern="yy-MM-dd" />
															<span>&nbsp;~&nbsp;</span>
															<fmt:formatDate value="${career.careerFinalMonth }" pattern="yy-MM-dd" />
														</td>
														<td>${career.careerCompany}</td>
														<td>${career.careerDivision }</td>
														<td>${career.careerInfo }</td>
													</tr>
													<tr>
														<th>업무내용</th>
														<td colspan="3">
															<textarea readonly="readonly" class="form-control" name="careerContent" 
															rows="5" placeholder="500자 내외로 작성하세요."
															onkeyup="xSize(this)" style="height:36px; overflow-y:hidden; width: 100%;" >
															${career.careerContent }
															</textarea>
														</td>
													</tr>
													</c:forEach>
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<h1>자격증</h1>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>자격증명</th>
														<th>취득일</th>
														<th>발행기관</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="certification" items="${certificationList}">
													<tr>
														<td>${certification.certName }</td>
														<td><fmt:formatDate value="${certification.certDate }" pattern="yyyy-MM-dd" /></td>
														<td>${certification.certCom }</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="card" id="portfolio" >
									<div class="card-header">
										<h1>포트폴리오 및 기타문서</h1>
									</div>
									<div class="card-body">
										<div class="row">
											<c:forEach items="${resume.resAttachList }" var="attach">
												<div class="col-md-4 col-sm-4 col-xs-12"  style="cursor:pointer;"
													 onclick="location.href='<%=request.getContextPath()%>/student/manage/mypage/resume/getFile.do?resAno=${attach.resAno }';">
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
								<div class="card" id="profile">
									<div class="card-header">
										<h1>자기소개서</h1>
									</div>
									<div class="card-body">
										<textarea readonly="readonly" class="form-control" name="careerContent" rows="5" placeholder="500자 내외로 작성하세요."
										onkeyup="xSize(this)" style="height:36px; overflow-y:hidden; width: 100%;">
											${resume.profileContent}
										</textarea>
									</div>
								</div>
								<p hidden="" id="pdfName"> ${student.name }님의 이력서</p>
								<div class="card-footer">
									<p style="text-align: center;">상기 등록한 내용은 사실과 다름없음을 확인합니다.</p>
									<p style="text-align: right;"><fmt:formatDate value="${resume.resumeDate }" pattern="yyyy년MM월dd일" />	</p>
									<p style="text-align: right;">신 청 자 : ${student.name } (서명 또는 인)</p>
								</div>
							</div>
						</div>

				</section>
			</div>

		</div>
	</div>
	<!--     </div> -->
	<script
		src="<%=request.getContextPath()%>/resources/js/pdf/html2canvas.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/pdf/jspdf.min.js"></script>
	<script>
		  window.onload=function(){
	$('#savePdf').click(function() { // pdf저장 button id
										$('#portfolio').attr("hidden","");
										$('#profile').attr("hidden","");
										$('#savePdf').attr("hidden","");
										$('#close').attr("hidden","");
	   
		 html2canvas($('#pdfDiv')[0]).then(
									function(canvas) { //저장 영역 div id

										// 캔버스를 이미지로 변환
										var imgData = canvas
												.toDataURL('image/png');

										var imgWidth = 190; // 이미지 가로 길이(mm) / A4 기준 210mm X 297mm
										var pageHeight = imgWidth * 2.414; // 출력 페이지 세로 길이 계산 A4 기준
										var imgHeight = canvas.height
												* imgWidth / canvas.width;
										var heightLeft = imgHeight;
										var margin = 10; // 출력 페이지 여백설정
										var doc = new jsPDF('p', 'mm');
										var position = 0;

										// 첫 페이지 출력
										doc.addImage(imgData, 'PNG', margin,
												position, imgWidth, imgHeight);
										heightLeft -= pageHeight;

										// 한 페이지 이상일 경우 루프 돌면서 출력
										while (heightLeft >= 20) {
											position = heightLeft - imgHeight;
											doc.addPage();
											doc.addImage(imgData, 'PNG', 0,
													position, imgWidth,
													imgHeight);
											heightLeft -= pageHeight;
										}
										

										// 파일 저장
										var pdfName = $('#pdfName').text();
										doc.save(pdfName);
										
										$('#portfolio').removeAttr("hidden");
										$('#profile').removeAttr("hidden");
										$('#savePdf').removeAttr("hidden");
										$('#close').removeAttr("hidden");

									});

						});

			}
		  	// testarea 높이 자동조절
		    function xSize(e) {
		        e.style.height = '1px';
		        e.style.height = (e.scrollHeight + 12) + 'px';
		    }
		</script>
</body>
</html>