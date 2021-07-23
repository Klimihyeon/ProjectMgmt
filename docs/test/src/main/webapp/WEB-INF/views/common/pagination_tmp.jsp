<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav aria-label="member list Navigation">
	<ul class="pagination justify-content-center m-0">
		<li class="page-item">
		<a class="page-link" href="javascript:${functionName}(1,'${list_url }');">
			&lt;&lt;
		</a>
	</li>
	<li class="page-item">
		<a class="page-link" href="javascript:${functionName}(${pageMaker.prev ? pageMaker.startPage-1 : 1},'${list_url }');">
			&lt;
		</a>
	</li>
	<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
		<li class="page-item ${pageMaker.cri.page == pageNum?'active':''}">
			<a class="page-link" href="javascript:${functionName}(${pageNum},'${list_url }');" >${pageNum }</a>
		</li>
	</c:forEach>
	<li class="page-item">
		<a class="page-link" href="javascript:${functionName}(${pageMaker.next ? pageMaker.endPage+1 : pageMaker.cri.page},'${list_url }');">
			&gt;
		</a>
	</li>
	<li class="page-item">
		<a class="page-link" href="javascript:${functionName}(${pageMaker.realEndPage} ,'${list_url }');">
			&gt;&gt;
		</a>
	</li>
	</ul>
</nav>

<form id="jobForm" action="${list_url }">
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
