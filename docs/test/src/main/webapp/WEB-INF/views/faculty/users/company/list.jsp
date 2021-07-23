<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="pageMaker_company" value="${pageMakerCompany }" />
<c:set var="cri_company" value="${pageMakerCompany.cri }" />
<c:set var="companyList" value="${companyList }" />

<c:set var="pageMaker_regCompany" value="${pageMakerRegCompany }" />
<c:set var="cri_regCompany" value="${pageMaker_regCompany.cri }" />
<c:set var="regCompanyList" value="${regCompanyList }" />

<title>기업회원 목록 조회</title>

<body>
	<section class="bg-half-170 d-table w-100"></section>

	<iframe id="ifr1" name="ifr1" src="<%=request.getContextPath() %>/faculty/manage/company/list_regCompany.do" frameborder="0" style="width:100%;"onLoad="resizeHeight('ifr1');">

	</iframe>

	<iframe id="ifr2" name="ifr2" src="<%=request.getContextPath() %>/faculty/manage/company/list_company.do" frameborder="0" style="width:100%;"onLoad="resizeHeight('ifr2');">

	</iframe>


	<section class="section bg-light"></section>
<script>

// $(function() {
// 	$("#btnRequest").on("click", function() { // URL 주소에 존재하는 HTML 코드에서 <li>요소를 읽은 후에 id가 "list"인 요소에 배치한다.
// 		$("#list").load("/examples.html li");
// 	});
// });

</script>

</body>









