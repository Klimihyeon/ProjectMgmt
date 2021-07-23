<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="pageMaker" value="${pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />

<head>

</head>
<title>상담 예약 내역</title>

<body>
	<section class="bg-half-170 d-table w-100"></section>
	<h1>상담 예약</h1>
	<div class="card">
		<h3 class="card-header">예약 목록</h3>
		<div
			class="d-flex justify-content-between align-items-center mx-50 row pt-0 pb-2">
			<div class="row">
				<div class="input-group">
					<select class="form-control" name="perPageNum" id="searchType"
						style="display: none">
						<option value="10" selected></option>
					</select>
					<div class="col-md-2">
						<select class="form-control" name="param3" id="param3">
							<option value="">기간</option>
							<option value="오늘" ${cri.param3 eq '오늘' ? 'selected' : ''}>오늘</option>
							<option value="내일" ${cri.param3 eq '내일' ? 'selected' : ''}>내일</option>
							<option value="이번주" ${cri.param3 eq '이번주' ? 'selected' : ''}>이번주</option>
							<option value="전체" ${cri.param3 eq '전체' ? 'selected' : ''}>전체</option>
						</select>
					</div>
					<div class="col-md-2">
						<select class="form-control" name="param2" id="param2">
							<option value="">상담유형</option>
							<option value="전체" ${cri.param2 eq '전체' ? 'selected' : ''}>전체</option>
							<option value="입학" ${cri.param2 eq '입학' ? 'selected' : ''}>입학</option>
							<option value="교과" ${cri.param2 eq '교과' ? 'selected' : ''}>교과</option>
						</select>
					</div>
					<div class="col-md-2">
						<select class="form-control" name="searchType" id="searchType">
							<option value="a" ${cri.searchType eq 'a' ? 'selected' : ''}>통합검색</option>
							<option value="i" ${cri.searchType eq 'i' ? 'selected' : ''}>아이디</option>
							<option value="n" ${cri.searchType eq 'n' ? 'selected' : ''}>이름</option>
						</select>
					</div>
					<input class="form-control" type="text" name="keyword"
						placeholder="검색어를 입력하세요" value="${param.keyword }" />
					<button class="btn btn-icon btn-outline-primary waves-effect"
						type="button" id="searchBtn" data-card-widget="search"
						onclick="list_go(1,'list_regCouns.do');">
						<i data-feather='search'></i>
					</button>
				</div>
			</div>
			<div class="row">&nbsp;</div>
			<div class="row">&nbsp;</div>
			<div class="row">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>구분</th>
								<th>유형</th>
								<th>신청자 아이디</th>
								<th>신청자 이름</th>
								<th>상담 신청 일자</th>
								<th>상담시간</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="couns" items="${counsList}" varStatus="vs">
								<tr>
									<td><c:set var="ans1"
											value="${fn:substring(couns.counsCode,'3','8') }" />
										<c:forEach begin="0" end="5">
											<c:set var="ans2" value="${ans1}" />
											<c:if test="${fn:startsWith(ans2,'0')}">
												<c:set var="ans1" value="${fn:substringAfter(ans2,'0')}" />
											</c:if>
										</c:forEach> ${ans2 }</td>
									<td>${couns.counsType}</td>
									<td>${couns.usersId}</td>
									<td>${couns.name}</td>
									<td><fmt:formatDate value="${couns.counsRegDate}" pattern="yy-MM-dd" /></td>
									<td>20${couns.counsCalYear}-${couns.counsCalMonth}-${couns.counsCalDay}&nbsp;${couns.counsCalHour}:00</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="">
				<c:set var="list_url" value="list_regCouns.do"></c:set>
				<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
			</div>
		</div>
	</div>
</body>









