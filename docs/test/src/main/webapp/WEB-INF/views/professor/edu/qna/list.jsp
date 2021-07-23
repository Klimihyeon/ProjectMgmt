<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="cqbBoardList" value="${dataMap.cqbBoardList }" />
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
<title>보충 학습 강의 목록</title>

	<section class="bg-half-170 d-table w-100"></section>
<body>

	<!-- 검색창 card-->
	<!-- 게시판 타이틀 -->
	<h1>질문 게시판</h1>
	<div class="card">
<!-- 	<h5>Search</h5> -->
		<!-- 검색창 -->
		
    <div class="input-group">
		<div class="col-md-1">
			<select class="form-control" name="searchType" id="searchType">
				<option value="">검색구분</option>
				<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>과정</option>
				<option value="t" ${cri.searchType eq 't' ? 'selected' : ''}>제목</option>
				<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>작성자</option>
				<option value="itn" ${cri.searchType eq 'itn' ? 'selected' : ''}>전체</option>
			</select>
		</div>
		<input type="text" class="form-control" aria-label="Amount" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />
		<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1,'list.do');">Search</button>
	</div>
	</div>

	<div class="col-sm-12" >
		<div class="card">
			<div class="table-responsive">
				<!-- @@개씩 보기 -->
				<div class="d-flex justify-content-between align-items-center header-actions" style="margin: 0px; text-align: right;">
					<div class="col-sm-12 col-md-4 col-lg-6">
						<div class="dataTables_length" id="DataTables_Table_0_length">
							<select class="form-select" name="perPageNum" style="width: 150px;" id="perPageNum" onchange="list_go(1);">
								<option value="10" ${cri.perPageNum==10 ? 'selected':'' }>10개씩 보기</option>
								<option value="20" ${cri.perPageNum==20 ? 'selected':'' }>20개씩 보기</option>
								<option value="50" ${cri.perPageNum==50 ? 'selected':'' }>50개씩 보기</option>
								<option value="100" ${cri.perPageNum==100 ? 'selected':'' }>100개씩 보기</option>
							</select>
						</div>
					</div>

					<div class="col-sm-12" id="divMargin">
						<div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-md-end align-items-center flex-sm-nowrap flex-wrap me-1">
							<div class="me-1"></div>
							<div class="dt-buttons btn-group flex-wrap"></div>
						</div>
					</div>
				</div>
				<!-- @@개씩 보기 끝 -->
				<br>
				
				<table class="table">
					<thead>
                         <tr>
							<th style="text-align: center;">번호</th>
							<th style="text-align: center;">과정</th>
							<th style="text-align: center;">제목</th>
							<th style="text-align: center;">작성자</th>
							<th style="text-align: center;">작성일</th>
							<th style="text-align: center;">조회수</th>
                         </tr>
                    </thead>
                    <tbody>
                    	<c:if test="${empty cqbBoardList }" >
							<td style="text-align: center;" colspan="7">데이터가 없습니다.</td>
						</c:if>
						<c:forEach var="cqbBoard" items="${cqbBoardList}">
							<tr>
								<td style="text-align: center;">
									<c:set var="ans1" value="${fn:substring(cqbBoard.cqbNo,'3','8') }" />
									<c:forEach begin="0" end="5">
									   <c:set var="ans2" value="${ans1}" />
									      <c:if test="${fn:startsWith(ans2,'0')}">
									         <c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
									      </c:if>
									</c:forEach>
									${ans2 }
								</td>
								<td style="text-align: center;">${cqbBoard.ingCourseName}</td>
								<td style="text-align: center;"><a href="javascript:OpenWindow('detail.do?cqbNo=${cqbBoard.cqbNo }','상세보기',800,1000)">${cqbBoard.cqbTitle}
									<c:if test="${cqbBoard.cqbReplyCnt ne 0 }">		
										<span class="badge bg-primary rounded-pill float-end">${cqbBoard.cqbReplyCnt}</span>
										
									</c:if>
								</a></td>
								<td style="text-align: center;">${cqbBoard.name }</td>
								<td style="text-align: center;"><fmt:formatDate value="${cqbBoard.cqbDate }" pattern="yy-MM-dd" /></td>
								<td style="text-align: center;">${cqbBoard.cqbCnt }</td>
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
	


</body>








