<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="noticeList" value="${dataMap.noticeList }" />

<section class="app-user-list">

	<!-- users filter end -->
	<!-- list section start -->
	<div class="card">
		<div class="card-datatable table-responsive pt-0">
			<div id="DataTables_Table_0_wrapper"
				class="dataTables_wrapper dt-bootstrap5 no-footer">
				<div
					class="d-flex justify-content-between align-items-center header-actions mx-1 row mt-75">
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
					<div class="col-sm-12 col-md-8 col-lg-6 ps-xl-75 ps-0">
						<div
							class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-md-end align-items-center flex-sm-nowrap flex-wrap me-1">
							<div class="me-1">
								<div id="DataTables_Table_0_filter" class="dataTables_filter">
									<label>Search:<input type="search" class="form-control" placeholder="" aria-controls="DataTables_Table_0"></label>
								</div>
							</div>
							<div class="dt-buttons btn-group flex-wrap">
								<button type="button" class="btn btn-primary" id="registBtn" onclick="OpenWindow('registForm.do','공지등록',890,690);">공지등록</button>
							</div>
						</div>
					</div>
				</div>
				<table class="user-list-table table dataTable no-footer dtr-column"
					id="DataTables_Table_0" role="grid"
					aria-describedby="DataTables_Table_0_info" style="width: 1443px;">
					<thead class="table-light">
						<tr role="row">
							<th class="sorting_disabled" rowspan="1" colspan="1"
								style="width: 104px;" aria-label="Actions">No</th>
							<th class="sorting_disabled" rowspan="1" colspan="1"
								style="width: 104px;" aria-label="Actions">제목</th>
							<th class="sorting_disabled" rowspan="1" colspan="1"
								style="width: 104px;" aria-label="Actions">등록자</th>
							<th class="sorting_disabled" rowspan="1" colspan="1"
								style="width: 104px;" aria-label="Actions">등록일</th>
							<th class="sorting_disabled" rowspan="1" colspan="1"
								style="width: 104px;" aria-label="Actions">조회수</th>
							<th class="sorting_disabled" rowspan="1" colspan="1"
								style="width: 104px;" aria-label="Actions">관리</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${noticeList }" var="notice" varStatus="vs">
							<form role="form" name="remove${vs.index }">
								<input type="hidden" name="nno" value="${notice.nno }" />
							</form>

							<c:if test="${empty noticeList }" >
						<tr>
							<td colspan="5">
								<strong>해당 내용이 없습니다.</strong>
							</td>
						</tr>
					</c:if>
						<tr>
							<td>${notice.nno }</td>
							<td>${notice.title }</td>
							<td>${notice.writer }</td>
							<td><fmt:formatDate value="${notice.regdate }" pattern="yyyy-MM-dd"/></td>
							<td>${notice.viewcnt }</td>
							<td>
								<div class="btn-group">
									<a class="btn btn-sm dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical font-small-4">
											<circle cx="12" cy="12" r="1"></circle>
											<circle cx="12" cy="5" r="1"></circle>
											<circle cx="12" cy="19" r="1"></circle>
									</svg>
									</a>
									<div class="dropdown-menu dropdown-menu-end">
										<a href="#" class="dropdown-item"  return false; onclick="OpenWindow('detail.do?nno=${notice.nno}','상세조회',800,700);">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text font-small-4 me-50">
										<path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
										<polyline points="14 2 14 8 20 8"></polyline>
										<line x1="16" y1="13" x2="8" y2="13"></line>
										<line x1="16" y1="17" x2="8" y2="17"></line>
										<polyline points="10 9 9 9 8 9"></polyline>
										</svg>Details</a>
									<a href="#" class="dropdown-item" return false; onclick="OpenWindow('modifyForm.do?nno=${notice.nno}','공지수정',800,700);">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-archive font-small-4 me-50">
										<polyline points="21 8 21 21 3 21 3 8"></polyline>
										<rect x="1" y="3" width="22" height="5"></rect>
										<line x1="10" y1="12" x2="14" y2="12"></line>
										</svg>Edit</a>
									<a href="#" class="dropdown-item delete-record" onclick="remove_go('remove${vs.index }');">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 font-small-4 me-50">
										<polyline points="3 6 5 6 21 6"></polyline>
										<path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
										<line x1="10" y1="11" x2="10" y2="17"></line>
										<line x1="14" y1="11" x2="14" y2="17"></line></svg>Delete </a>
									</div>
								</div>
							</td>
							</tr>
							</c:forEach>
					</tbody>
				</table>
				<div class="d-flex justify-content-between mx-2 row mb-1">
					<div class="col-lg-12 col-md-6">
						<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- list section end -->


</section>
<script>



	function modify_go(){
		var formObj = $("form[role='form']");
		//alert("click modify btn");
		formObj.attr({
			'action':'modifyForm.do',
			'method':'post'
		});
		formObj.submit();
	}

	function remove_go(formName){
		//alert("click remove btn");
		alert($('input[name="nno" ]').val());
		alert(formName);
		var answer = confirm("정말 삭제하시겠습니까?");
		if(answer){
		var form = $('form[name=' + formName + ']');
			form.attr("action", "remove.do");
			form.attr("method", "post");
			form.submit();
		}
	}

</script>