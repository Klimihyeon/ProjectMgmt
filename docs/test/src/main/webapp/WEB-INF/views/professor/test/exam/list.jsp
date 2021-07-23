<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="examList" value="${dataMap.examList }" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>



		<div class="card">
			<div class="card-header">
				<h2 class="card-title">시험지관리</h2>
			</div>
			
		
		
		
		
		
		
		
<!-- 리스트 조회 -->
<div class="row" id="table-hover-row">
  <div class="col-12">
    <div class="card">
      <div class="card-header with-border">
					<button type="button" class="btn btn-primary" id="registBtn" onclick="OpenWindow('registForm.do','시험지 등록',1600,1200);">시험지등록</button>				
					<div id="keyword" class="card-tools" style="width:40%;">
						<div class="input-group row">
							<select class="form-select col-md-3" name="perPageNum" id="perPageNum"
						  		onchange="list_go(1);">
						  		<option value="10" >정렬개수</option>
						  		<option value="15" ${cri.perPageNum == 15 ? 'selected':''}>15개씩</option>
						  		<option value="20" ${cri.perPageNum == 20 ? 'selected':''}>20개씩</option>
						  		<option value="25" ${cri.perPageNum == 25 ? 'selected':''}>25개씩</option>
						  		
						  	</select>						
							<select class="form-select col-md-4" name="searchType" id="searchType">
								<option value="wc"  ${cri.searchType eq 'wc' ? 'selected':'' }>전 체</option>
								<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>과목명</option>
								<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>시험명</option>
							</select>					
							<input  class="form-control col-md-4" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
							<button class="btn btn-primary col-md-1" type="button" onclick="list_go(1);" data-card-widget="search">
								<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search">
									<circle cx="11" cy="11" r="8"></circle>
									<line x1="21" y1="21" x2="16.65" y2="16.65"></line>
								</svg>
							</button>
							</div>
					</div>						
				</div>
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>시험명</th>
              <th>과목명</th>
              <th>작성자</th>
              <th>작성일</th>
            </tr>
          </thead>
          <tbody>
          
			<c:if test="${empty examList }" >
						<td style="text-align: center;" colspan="4">데이터가 없습니다.</td>
			</c:if>
			<c:forEach items="${examList }" var="exam">
				<tr onclick="OpenWindow('detail.do?examCode=${exam.examCode}','상세조회',1600,1200);">
					<td>${exam.examName }</td> 
					<td>${exam.subName }</td> 
					<td>${exam.profName }</td>
					<td><fmt:formatDate value='${exam.examDate }' pattern="yyyy-MM-dd" /></td> 
				</tr>
			</c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<!-- 리스트끝 -->
	<div class="card-footer">
		<%@ include file="/WEB-INF/views/common/pagination.jsp" %>				
	</div>
</div>
<script src="/resources/js/common.js" ></script>
</body>
</html>