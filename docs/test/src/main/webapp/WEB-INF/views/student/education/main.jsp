<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="attdList" value="${dataMap.attdList }" />
<body>
	<h1>출결현황</h1>

	<div class="col-sm-12" >
		<div class="card">
			<div class="table-responsive">
				<!-- @@개씩 보기 -->
				<div class="d-flex justify-content-between align-items-center header-actions" style="margin: 0px; text-align: right;">

					<div class="col-sm-12" id="divMargin">
						<div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-md-end align-items-center flex-sm-nowrap flex-wrap me-1">
							<div class="me-1"></div>
							<div class="dt-buttons btn-group flex-wrap"></div>
						</div>
					</div>
				</div>
				<div class="card-header">
	            </div>
				
				<table class="table table-bordered">
		    			<tr>
		                	<th>일시</th>
		                	<th>입실시간</th>
		                	<th>퇴실시간</th>
		                	<th>출석정보</th>
		                	<th>아이콘</th> <!-- yyyy-MM-dd  -->
		               	</tr>
		               	<c:forEach items="${attdList }" var="attd" >
		               	  <tr>
		               		<td>
		               		<fmt:formatDate value="${attd.attdDate }" pattern="yyyy-MM-dd"/>
		               		</td>
		              		<td>
		              		<fmt:formatDate value="${attd.attdIntime }" pattern="hh:mm:ss"/>
		              		</td>
		              		<td>
		              		<fmt:formatDate value="${attd.attdOuttime }" pattern="hh:mm:ss"/>
		              		</td>
		              		<td>${attd.attdType }</td>
		              		<td>${attd.attdIcon }</td>
		              	  </tr>
		               	</c:forEach>
		               	
		            </table>
			</div>
		</div>
	</div>

</body>








