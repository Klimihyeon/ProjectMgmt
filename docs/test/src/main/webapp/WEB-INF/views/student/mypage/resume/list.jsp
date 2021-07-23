<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>
<style type="text/css">
div.card{
	padding: 20px;
}
div#divMargin{
	padding: 0;
	margin: 0;
}
div.card-header{
	padding-right: 0;
	margin-right: 0;	
}
</style>
</head>
<title>이력서 &amp; 자기소개서 관리</title>

	<section class="bg-half-170 d-table w-100"></section>
<body>
	
		<!-- 게시판 타이틀 -->
	<h1>이력서 / 자기소개서 관리</h1>
	<div class="col-xs-12" >
		<div class="card">
			<div class="card-header">
                <h4 class="card-title">나의 이력서</h4>
                <button type="button" onclick="OpenWindow('registForm.do','상세보기',1200,900);" class="btn btn-primary">이력서 작성</button>
            </div>
			<div class="table-responsive">
				<table class="table">
					<thead>
                         <tr>
							<th style="text-align: center;">번호</th>
							<th style="text-align: center;">공개여부</th>
							<th style="text-align: center;">이력서 제목</th>
							<th style="text-align: center;">관리</th>
							<th style="text-align: center;">최종수정일</th>
                         </tr>
                    </thead>
                    <tbody>
						<c:forEach var="resume" items="${resumeList}">
							<tr>
								<td style="text-align: center;">
									<c:set var="ans1" value="${fn:substring(resume.resumeCode,'3','8') }" />
									<c:forEach begin="0" end="5">
									   <c:set var="ans2" value="${ans1}" />
									      <c:if test="${fn:startsWith(ans2,'0')}">
									         <c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
									      </c:if>
									</c:forEach>
									${ans2 }
								</td>
<!-- 									<div class="form-check form-check-inline"> -->
<!--                                         <input type="checkbox" id="isopen" name="isopen" class="form-check-input" checked="checked"> -->
<!--                                         <label class="form-check-label" for="isopen">공개여부</label> -->
<!--                                     </div> -->
								<c:if test="${resume.isopen eq '공개' }">
									<td style="text-align: center;">공개</td>
								</c:if>
								<c:if test="${resume.isopen eq '비공개' }">
									<td style="text-align: center;">비공개</td>
								</c:if>
								<td style="text-align: center;"><a href="javascript:OpenWindow('detail.do?resumeCode=${resume.resumeCode }','상세보기',1000,1000)">${resume.resumeTitle}</a></td>
								<td style="text-align: center;">
									<button type="button" onclick="location.href='apply.do?resumeCode=${resume.resumeCode }';" class="btn btn-primary">첨삭 신청</button>
									<button type="button" onclick="OpenWindow('modifyForm.do?resumeCode=${resume.resumeCode }','상세보기',1200,900);" id="modifyBtn" class="btn btn-warning" >수 정</button>
									<button type="button" onclick="location.href='remove.do?resumeCode=${resume.resumeCode }';" id="deleteBtn" class="btn btn-danger" >삭 제</button>
								</td>
								<td style="text-align: center;"><fmt:formatDate value="${resume.resumeDate }" pattern="yy-MM-dd" /></td>
							</tr>
						</c:forEach>
                    </tbody>
                </table> 
			</div>
		</div>
	</div>
	<div class="col-sm-12" >
		<div class="card">
			<div class="card-header">
                <h4 class="card-title">나의 첨삭 내역</h4>
            </div>
			<div class="table-responsive">
				<table class="table">
					<thead>
                         <tr>
							<th style="text-align: center;">이력서 제목</th>
							<th style="text-align: center;">첨삭신청일</th>
							<th style="text-align: center;">첨삭완료일</th>
							<th style="text-align: center;">첨삭상태</th>
                         </tr>
                    </thead>
                    <tbody>
						<c:forEach var="resume" items="${resumeList}">
							<c:if test="${resume.profileCorrect ne '미신청'}">
								<tr>
									<td style="text-align: center;">${resume.resumeTitle}</td>
									
									<td style="text-align: center;"><fmt:formatDate value="${resume.profileCorrectApplyDate }" pattern="yy-MM-dd" /></td>
									
									<c:if test="${resume.profileCorrectAfterDate eq null }">
										<td style="text-align: center;">아직 첨삭이 완료되지 않았습니다.</td>
									</c:if>
									<c:if test="${resume.profileCorrectAfterDate ne null }">
										<td style="text-align: center;"><fmt:formatDate value="${resume.profileCorrectAfterDate }" pattern="yy-MM-dd" /></td>
									</c:if>
									
									<c:if test="${resume.profileCorrect eq '완료' }">
										<td style="text-align: center;">첨삭이 완료되었습니다.</td>
									</c:if>
									<c:if test="${resume.profileCorrect eq '신청중' }">
										<td style="text-align: center;">첨삭이 신청중 입니다.</td>
									</c:if>
									<c:if test="${resume.profileCorrect eq '진행중' }">
										<td style="text-align: center;">첨삭이 진행중 입니다.</td>
									</c:if>
								</tr>
							</c:if>
						</c:forEach>
                    </tbody>
                </table> 
			</div>
		</div>
	</div>
</body>









