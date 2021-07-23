<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="subStdBoardList" value="${dataMap.subStdBoardList }" />
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
	<h1>보충학습 강의실</h1>
	<div class="card">
<!-- 	<h5>Search</h5> -->
		<!-- 검색창 -->
		
		<div class="input-group">
			<div class="col-md-1">
				<select class="form-control" name="searchType" id="searchType">
					<option value="">검색구분</option>
					<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>과목</option>
					<option value="c" ${cri.searchType eq 'c' ? 'selected' : ''}>내용</option>
					<option value="nc" ${cri.searchType eq 'nc' ? 'selected' : ''}>전체</option>
				</select>
			</div>
			<input type="text" class="form-control" aria-label="Amount" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />
			<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1,'list.do');">Search</button>
	</div>
   
<!-- 		<div class="input-group"> -->
<!-- 			<button type="button" -->
<!-- 				class="btn btn-outline-primary dropdown-toggle waves-effect" -->
<!-- 				data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!-- 				검색구분 -->
<!-- 			</button> -->
<!-- 			<div class="dropdown-menu" name="searchType" id="searchType"> -->
<%-- 				<a class="dropdown-item" href="#" value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>제목</a> --%>
<%-- 				<a class="dropdown-item" href="#" value="c" ${cri.searchType eq 'c' ? 'selected' : ''}>내용</a> --%>
<%-- 				<a class="dropdown-item" href="#"value="nc" ${cri.searchType eq 'nc' ? 'selected' : ''}>통합</a> --%>
<!-- 			</div> -->
<!-- 			<input type="text" class="form-control" -->
<%-- 			aria-label="Amount" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />  --%>
<!-- 			<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1);">Search</button> -->
<!-- 		</div> -->
	</div>
	<!-- 검색창 -->
		
<!-- 		<!-- 과거 검색창 --> 
<!-- 		<div class="input-group row"> -->
<!-- 			<select class="form-control col-md-3" name="perPageNum" id="searchType" style="display:none"> -->
<!-- 		         <option value="10" selected></option> -->
<!-- 		    </select> -->
<!-- 			<select class="form-control" name="searchType" id="searchType"> -->
<!-- 				<option value="">검색구분</option> -->
<%-- 				<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>제목</option> --%>
<%-- 				<option value="c" ${cri.searchType eq 'c' ? 'selected' : ''}>내용</option> --%>
<%-- 				<option value="nc" ${cri.searchType eq 'nc' ? 'selected' : ''}>통합</option> --%>
<!-- 			</select> -->
<%-- 			<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요" value="${cri.keyword }" />  --%>
<!-- 			<span class="input-group-append" > -->
<!-- 				<button  class="form-control btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1);"> -->
<!-- 					<i class="fa fa-fw fa-search">검색</i> -->
<!-- 				</button> -->
<!-- 			</span> -->
<!-- 		</div> -->
<!-- 		<!-- 과거 검색창 끝 --> 
	<!-- 검색창 끝 -->

	
<!-- 	<!-- 휘로상한테 까인 카드형식 --> 
<!-- 	<div class="row row-cols-1 row-cols-md-3 mb-2"> -->
<%-- 		<c:forEach var="ssb" items="${subStdBoardList}"> --%>
<!-- 		<div class="col" style="margin-bottom: 10px; margin-top: 10px;"> -->
<!-- 			<div class="card h-100" -->
<!-- 				style="padding-left: 0px; padding-top: 0px; padding-right: 0px;"> -->
<!-- 				<img class="card-img-top" -->
<%-- 					src="<%=request.getContextPath()%>/resources/vuexy/images/java1.png"> --%>
<!-- 				<div class="card-body"> -->
<%-- 					<h4 class="card-title"><a href="javascript:OpenWindow('detail.do?ssbNo=${ssb.ssbNo }','상세보기',800,700)">${ssb.ssbContents}</a></h4> --%>
<!-- 				</div> -->
<!-- 				<div class="card-footer"> -->
<%-- 					<small class="text-muted">NO ${ssb.ssbNo}  / Date <fmt:formatDate value="${ssb.ssbDate }" pattern="yy-MM-dd" /> / view ${ssb.ssbCnt }</small> --%>
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<%-- 		</c:forEach> --%>
<!-- 	</div> -->


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
				<div class="card-header">
					<button type="button" class="btn btn-primary" onclick="OpenWindow('registForm.do','입력창',1200,800);">등록</button>
	            </div>
				<!-- @@개씩 보기 끝 -->
				<br>
				
				<table class="table">
					<thead>
                         <tr>
							<th style="text-align: center;">번호</th>
							<th style="text-align: center;">과목</th>
							<th style="text-align: center;">내용</th>
							<th style="text-align: center;">작성일</th>
							<th style="text-align: center;">조회수</th>
                         </tr>
                    </thead>
                    <tbody>
                    	<c:if test="${empty subStdBoardList }" >
							<td style="text-align: center;" colspan="5">데이터가 없습니다.</td>
						</c:if>
						<c:forEach var="ssb" items="${subStdBoardList}">
						<tr>
							<td style="text-align: center;">${ssb.ssbNo}</td>
							<td  style="text-align: center;">${ssb.ssbName}</td>
							<td><a href="javascript:OpenWindow('detail.do?ssbNo=${ssb.ssbNo }','상세보기',800,700)">${ssb.ssbContents}</a></td>
							<td style="text-align: center;"><fmt:formatDate value="${ssb.ssbDate }" pattern="yy-MM-dd" /></td>
							<td style="text-align: center;">${ssb.ssbCnt }</td>
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








