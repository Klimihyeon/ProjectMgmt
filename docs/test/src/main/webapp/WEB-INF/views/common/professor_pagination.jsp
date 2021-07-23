<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav aria-label="member list Navigation">
	<ul class="pagination justify-content-center m-0">
		<li class="page-item">
		<a class="page-link" href="javascript:list_go_professor(1,'${list_url }');">
			<i class="fas fa-angle-double-left"></i>
		</a>
	</li>
	<li class="page-item">
		<a class="page-link" href="javascript:list_go_professor(${pageMaker.prev ? pageMaker.startPage-1 : 1},'${list_url }');">
			<i class="fas fa-angle-left"></i>
		</a>
	</li>
	<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
		<li class="page-item ${pageMaker.cri.page == pageNum?'active':''}">
			<a class="page-link" href="javascript:list_go_professor(${pageNum},'${list_url }');" >${pageNum }</a>
		</li>
	</c:forEach>
	<li class="page-item">
		<a class="page-link" href="javascript:list_go_professor(${pageMaker.next ? pageMaker.endPage+1 : pageMaker.cri.page},'${list_url }');">
			<i class="fas fa-angle-right" ></i>
		</a>
	</li>
	<li class="page-item">
		<a class="page-link" href="javascript:list_go_professor(${pageMaker.realEndPage} ,'${list_url }');">
			<i class="fas fa-angle-double-right"></i>
		</a>
	</li>
	</ul>
</nav>

<form id="jobForm" action="list.do">
	<input type='hidden' id="page" name="page" value="${pageMaker.cri.page}" />
	<input type='hidden' id="perPageNum" name="perPageNum" value="${pageMaker.cri.perPageNum}"/>
	<input type='hidden' id="searchType" name="searchType" value="${pageMaker.cri.searchType }" />
	<input type='hidden' id="keyword" name="keyword" value="${pageMaker.cri.keyword }" />

	<input type='hidden' id="searchType2" name="searchType2" value="${pageMaker.cri.searchType2 }" />
	<input type='hidden' id="keyword2" name="keyword2" value="${pageMaker.cri.keyword2 }" />

	<input type='hidden' name="param1" value="${pageMaker.cri.param1 }" />
	<input type='hidden' name="param2" value="${pageMaker.cri.param2 }" />
	<input type='hidden' name="param3" value="${pageMaker.cri.param3 }" />
</form>

<form id="ProfForm" action="list.do">
	<input type='hidden' id="propage" name="page" value="${pageMaker.cri.page}" />
	<input type='hidden' id="properPageNum" name="perPageNum" value="${pageMaker.cri.perPageNum}"/>
	<input type='hidden' id="prosearchType" name="searchType" value="${pageMaker.cri.searchType }" />
	<input type='hidden' id="prokeyword" name="keyword" value="${pageMaker.cri.keyword }" />

	<input type='hidden' id="prosearchType2" name="searchType2" value="${pageMaker.cri.searchType2 }" />
	<input type='hidden' id="prokeyword2" name="keyword2" value="${pageMaker.cri.keyword2 }" />
	
	<input type='hidden' id="ingCourseCode" name="ingCourseCode" value="${param.ingCourseCode }"/>
</form>








