<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="cbList" value="${dataMap.cbList }" />
<c:set var="course" value="${course }" />
<head>
<style type="text/css">
div.card{
	padding: 20px;
}
div#divMargin{
	padding: 0;
	margin: 0;
}

</style>
</head>
<title>과제 게시판 목록</title>

	<section class="bg-half-170 d-table w-100"></section>
<body>

	<!-- 검색창 card-->
	<!-- 게시판 타이틀 -->
	<div>
		<h1>과제 게시판-${course.ingCourseName }</h1>
	</div>
	<div class="card">
	<div class="card">
<!-- 	<h5>Search</h5> -->
		<!-- 검색창 -->
		
    <div class="card-header with-border">
		<button type="button" class="btn btn-primary" id="registBtn" onclick="OpenWindow('registForm.do?ingCourseCode=${course.ingCourseCode}','과제 등록',800,700);">과제등록</button>				
		<div id="keyword" class="card-tools" style="width:40%;">
			<div class="input-group row">
				<select class="form-select col-md-3" name="perPageNum" id="perPageNum"
			  		onchange="list_go_professor(1,'list.do','${course.ingCourseCode}');">
			  		<option value="10" >정렬개수</option>
			  		<option value="15" ${cri.perPageNum == 15 ? 'selected':''}>15개씩</option>
			  		<option value="20" ${cri.perPageNum == 20 ? 'selected':''}>20개씩</option>
			  		<option value="25" ${cri.perPageNum == 25 ? 'selected':''}>25개씩</option>
			  		
			  	</select>						
				<select class="form-select col-md-4" name="searchType" id="searchType">
					<option value="tcw"  ${cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option>
					<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>제 목</option>
					<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>작성자</option>
					<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>내 용</option>
					<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>제목+내용</option>
					<option value="cw" ${cri.searchType eq 'cw' ? 'selected':'' }>작성자+내용</option>							
					<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>작성자+제목+내용</option>
				</select>					
				<input  class="form-control col-md-4" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
				<button class="btn btn-primary col-md-1" type="button" onclick="list_go_professor(1,'list.do','${course.ingCourseCode}');" data-card-widget="search">
					<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search">
						<circle cx="11" cy="11" r="8"></circle>
						<line x1="21" y1="21" x2="16.65" y2="16.65"></line>
					</svg>
				</button>
				</div>
		</div>						
	</div>
	</div>

		<div class="card">
			<div class="table-responsive">
				<!-- @@개씩 보기 -->
				<br>
	            
				<table class="table">
					<thead>
                         <tr>
							<th style="text-align: center;">번호</th>
							<th style="text-align: center;">제목</th>
							<th style="text-align: center;">작성자</th>
							<th style="text-align: center;">작성일</th>
							<th style="text-align: center;">조회수</th>
                         </tr>
                    </thead>
                    <tbody>
                    	<c:if test="${empty cbList }" >
							<td style="text-align: center;" colspan="5">데이터가 없습니다.</td>
						</c:if>
						<c:forEach var="cb" items="${cbList}">
							<tr>
								<td style="text-align: center;">${cb.cbNo }</td>
								<td style="text-align: center;"><a href="javascript:OpenWindow('detail.do?cbNo=${cb.cbNo }','상세보기',800,700)">${cb.cbTitle}
<%-- 									<c:if test="${cqbBoard.cqbReplyCnt ne 0 }">		 --%>
<%-- 										<span class="badge bg-primary rounded-pill float-end">${cqbBoard.cqbReplyCnt}</span> --%>
										
<%-- 									</c:if> --%>
								</a></td>
								<td style="text-align: center;">${cb.cbWriter }</td>
								<td style="text-align: center;"><fmt:formatDate value="${cb.cbDate }" pattern="yy-MM-dd" /></td>
								<td style="text-align: center;">${cb.cbCnt }</td>
							</tr>
						</c:forEach>
                    </tbody>
                </table> 
			</div>
		</div>
	</div>
	<div>
		<c:set var="list_url" value="list.do"></c:set>
		<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
	</div>

	<section class="section bg-light"></section>
	

<script src="/resources/js/common.js" ></script>
</body>








