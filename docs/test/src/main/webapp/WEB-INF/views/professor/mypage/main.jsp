<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap -->
</head>
<body>
<section class="bg-half-170 d-table w-100"></section>
<div class="card">
	<div class="card-header">
		<h2 class="card-title">개인정보 조회</h2>
	</div>
	<div class="card user-card">	
		<div class="card-body">
          <div class="row">
            <div class="col-xl-6 col-lg-12 d-flex flex-column justify-content-between border-container-lg">
              <div class="user-avatar-section">
                <div class="d-flex justify-content-start">
                  <img class="img-fluid rounded" src="../../../app-assets/images/avatars/7.png" height="104" width="104" alt="User avatar">
                  <div class="d-flex flex-column ms-1">
                    <div class="user-info mb-1">
                      <h4 class="mb-0">${prof.profId }</h4>
                      <span class="card-text">${prof.profEmail }</span>
                    </div>
                    <div class="d-flex flex-wrap">
                      <a href="<%=request.getContextPath() %>/professor/manage/mypage/modifyForm.do" class="btn btn-primary waves-effect waves-float waves-light">Edit</a>
                      <button class="btn btn-outline-danger ms-1 waves-effect">Delete</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-6 col-lg-12 mt-2 mt-xl-0">
              <div class="user-info-wrapper">
                <div class="d-flex flex-wrap">
                  <div class="user-info-title">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user me-1"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                    <span class="card-text user-info-title fw-bold mb-0">이름</span>
                  </div>
                  <p class="card-text mb-0">${prof.profName }</p>
                </div>
                <div class="d-flex flex-wrap my-50">
                  <div class="user-info-title">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check me-1"><polyline points="20 6 9 17 4 12"></polyline></svg>
                    <span class="card-text user-info-title fw-bold mb-0">등록일</span>
                  </div>
                  <p class="card-text mb-0"><fmt:formatDate value="${prof.profDate }" pattern="yyyy-MM-dd" /></p>
                </div>
                <div class="d-flex flex-wrap my-50">
                  <div class="user-info-title">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star me-1"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
                    <span class="card-text user-info-title fw-bold mb-0">생년월일</span>
                  </div>
                  <p class="card-text mb-0">${prof.profBir }</p>
                </div>
                <div class="d-flex flex-wrap my-50">
                  <div class="user-info-title">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-flag me-1"><path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z"></path><line x1="4" y1="22" x2="4" y2="15"></line></svg>
                    <span class="card-text user-info-title fw-bold mb-0">주소</span>
                  </div>
                  <p class="card-text mb-0">${prof.profZipcode }</p>
                  <p class="card-text mb-0">${prof.profAddr1 }</p>
                  <p class="card-text mb-0">${prof.profAddr2 }</p>
                </div>
                <div class="d-flex flex-wrap">
                  <div class="user-info-title">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-phone me-1"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
                    <span class="card-text user-info-title fw-bold mb-0">연락처</span>
                  </div>
                  <p class="card-text mb-0">${prof.profPhone }</p>
                </div>
              </div>
            </div>
          </div>
        </div>
	</div>
</div>
<!-- 마이페이지 끝 -->


<!-- 강의 이력 조회 -->
<div class="card">
			<div class="card-header">
				<h2 class="card-title">강의 이력 조회</h2>
			</div>
	<div class="card user-card">	
		<div class="card-body">
			<div class="card-header with-border">
				<div></div>
				</div>
		<div class="d-flex justify-content-between flex-md-row flex-column invoice-spacing mt-0">
			<div></div>
			<div class="mt-md-0 mt-2">총 강의시간 : 
			<c:set var ="total" value = "0" />
				<c:forEach var="siic" items="${subInIngCourse}" varStatus="status">     
					<c:set var= "total" value="${total + siic.subTime}"/>
				</c:forEach>
					<c:out value="${total}"/>시간</div>
		</div>
      	    <div class="row">
          		<div class="col-12">
          			<div class="table-responsive">
				        <table class="table table-hover">
				          	<thead>
					            <tr>
						        	<th>과정명</th>
						            <th>과목명</th>
						            <th>강의기간</th>
						            <th>강의상태</th>
						            <th>강의시간</th>
					            </tr>
					     	</thead>
							<tbody>
								<c:if test="${empty subInIngCourse }" >
									<td style="text-align: center;" colspan="5">데이터가 없습니다.</td>
								</c:if>
								<c:forEach items="${subInIngCourse }" var="siic">
<%-- 									<tr onclick="OpenWindow('detail.do?cbNo=${cb.cbNo}','상세조회',800,700);"> --%>
									<tr>
										<td>${siic.ingCourseName }</td> 
										<td>${siic.subName }</td> 
										<td><fmt:formatDate value='${siic.subBdate }' pattern="yyyy-MM-dd" /> ~ <fmt:formatDate value='${siic.subEdate}' pattern="yyyy-MM-dd" /></td> 
										<td>${siic.ingCourseYn }</td> 
										<td>${siic.subTime }시간</td> 
									</tr>
								</c:forEach>
					        </tbody>
						</table>
				     </div>
          		</div>
      	    </div>
        </div>
    </div>
</div>



<section class="section bg-light"></section>
</body>
</html>