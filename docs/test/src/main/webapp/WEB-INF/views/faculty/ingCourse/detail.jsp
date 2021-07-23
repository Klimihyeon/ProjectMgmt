<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<title>교육과정 상세보기</title>

<section class="bg-half-170 d-table w-100"></section>

<body>
	<h1>교육과정 상세조회</h1>
	<div class="row card">
		<div class="card-header">
			<div class="card-title">교육과정 정보</div>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>과정구분</th>
							<th>과정명</th>
							<th>회차</th>
							<th>기간</th>
							<th>강의실</th>
							<th>상태</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${ingCourse.courseType}</td>
							<td><a
								href="javascript:OpenWindow('detail.do?ingCourseCode=${ingCourse.ingCourseCode }','상세보기',800,700)">${ingCourse.courseName}</a>
							</td>
							<td>${ingCourse.ingCourseCount}</td>
							<td><fmt:formatDate value="${ingCourse.ingCourseBeginDate }"
									pattern="yy-MM-dd" /> ~ <fmt:formatDate
									value="${ingCourse.ingCourseEndDate }" pattern="yy-MM-dd" /></td>
							<td>${ingCourse.roomNumber}호</td>
							<td>${ingCourse.ingCourseYn}</td>
							<td>${ingCourse.facName}</td>
							<td><fmt:formatDate value="${ingCourse.ingCourseRegdate}"
									pattern="yy-MM-dd" /></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
<div class="container" >
			<!-- jquery-->
		    <script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/vendors/js/jquery/jquery.min.js"></script>
                <!-- Full calendar start -->
                <section>
                    <div class="app-calendar overflow-hidden border">
                        <div class="row g-0">
                            <!-- Calendar -->
                            <div class="col position-relative">
                                <div class="card shadow-none border-0 mb-0 rounded-0">
                                    <div class="card-body pb-0">
                                        <div id="calendar"></div>
                                    </div>
                                </div>
                            </div>
                            <!-- /Calendar -->
                            <div class="body-content-overlay"></div>
                        </div>
                    </div>
                    <!-- Calendar Add/Update/Delete event modal-->
                    <div class="modal modal-slide-in event-sidebar fade" id="add-new-sidebar">
                        <div class="modal-dialog sidebar-lg">
                            <div class="modal-content p-0">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" ></button>
                                <div class="modal-header mb-1">
                                    <h5 class="modal-title">add Event</h5>
                                </div>
                                <div class="modal-body flex-grow-1 pb-sm-0 pb-3">
                                    <form class="event-form needs-validation" role="form" method="post" name ="registForm" data-ajax="false" novalidate>
                                        <div class="mb-1">
                                            <label for="title" class="form-label">Title</label>
                                            <input type="text" class="form-control" id="title" name="title" placeholder="Event Title" required />
                                        	<input type="text" id="id" name="id" value="eventId"/>
                                        </div>
                                        <div class="mb-1">
                                            <label for="select-label" class="form-label">Label</label>
                                            <select class="select2 select-label form-select w-100" id="select-label" name="select-label">
                                                <option data-label="primary" value="Business" selected>Business</option>
                                                <option data-label="danger" value="Personal">Personal</option>
                                                <option data-label="warning" value="Family">Family</option>
                                                <option data-label="success" value="Holiday">Holiday</option>
                                                <option data-label="info" value="ETC">ETC</option>
                                            </select>
                                        </div>
                                        <div class="mb-1 position-relative">
                                            <label for="start-date" class="form-label">Start Date</label>
                                            <input type="text" class="form-control" id="start-date" name="start" placeholder="Start Date" />
                                        </div>
                                        <div class="mb-1 position-relative">
                                            <label for="end-date" class="form-label">End Date</label>
                                            <input type="text" class="form-control" id="end-date" name="end" placeholder="End Date" />
                                        </div>
                                        <div class="mb-1">
                                            <div class="form-check form-switch">
                                                <input type="checkbox" class="form-check-input allDay-switch" id="customSwitch3" />
                                                <label class="form-check-label" for="customSwitch3">All Day</label>
                                            </div>
                                        </div>
                                        <div class="mb-1">
                                            <label for="event-url" class="form-label">Event URL</label>
                                            <input type="url" class="form-control" id="event-url" placeholder="https://www.google.com" />
                                        </div>
                                        <div class="mb-1 select2-primary">
                                            <label for="event-guests" class="form-label">Add Guests</label>
                                            <select class="select2 select-add-guests form-select w-100" id="event-guests" multiple>
                                                <option data-avatar="1-small.png" value="Jane Foster">Jane Foster</option>
                                                <option data-avatar="3-small.png" value="Donna Frank">Donna Frank</option>
                                                <option data-avatar="5-small.png" value="Gabrielle Robertson">Gabrielle Robertson</option>
                                                <option data-avatar="7-small.png" value="Lori Spears">Lori Spears</option>
                                                <option data-avatar="9-small.png" value="Sandy Vega">Sandy Vega</option>
                                                <option data-avatar="11-small.png" value="Cheryl May">Cheryl May</option>
                                            </select>
                                        </div>
                                        <div class="mb-1">
                                            <label for="event-location" class="form-label">Location</label>
                                            <input type="text" class="form-control" id="event-location" placeholder="Enter Location" />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label">Description</label>
                                            <textarea name="event-description-editor" id="event-description-editor" class="form-control"></textarea>
                                        </div>
                                        <div class="mb-1 d-flex">
                                            <button type="submit" class="btn btn-primary add-event-btn me-1" >Add</button>
                                            <button type="button" class="btn btn-outline-secondary btn-cancel" data-bs-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-primary update-event-btn d-none me-1">Update</button>
                                            <button class="btn btn-outline-danger btn-delete-event d-none">Delete</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/ Calendar Add/Update/Delete event modal-->
                </section>
                <!-- Full calendar end -->
                <!-- Full calendar js-->
            <script>
		            var events = [
		            	  {
		            	    id: 1,
		            	    title: 'Design Review',
		            	    start: '2009-07-01',
		            	    end: '2009-07-10',
		            	    extendedProps: {
		            	      calendar: 'Business'
		            	    }
		            	  }
		            	];

		          	function eventMakerbyIngCourseCode(ingCourseCode){
		      		    	 $.ajax({
		     					type : 'POST',
		    					url : 'detail/event',
		    					dataType : "json",
		    					data : JSON.stringify({
		    						"ingCourseCode" : ingCourseCode
		    					}),
		    					contentType : "application/json",
		          	  	        success: function (result) {
		          	  	        	console.log(result);
		          	  	        	console.log(calendar);
			          	  	       	var id;
			          	  	       	var title;
			          	  	       	var start;
			          	  	       	var end;
			          	  	       	var even;
			          	  	       	var prop = ['Business','Family','Holiday','Personal','ETC','ADD1'];

			          	  	    $.each(result,function(i,item){

									id = item.subInIngCourseCode;
		          	  	        	title = item.subName;
		          	  	        	start = item.subBDateString;
		          	  	        	end = item.subEDateString;
// 		          	  	        	alert(end);
			          	  	        var endDate = convertStrToDate(end);
// 			          	  	        alert(endDate);
		    		          		endDate.setDate(convertStrToDate(end).getDate()+1);
// 		    		          		alert(endDate);
		    		          		end = convertDateToStr(endDate);
// 		    		          		alert(end);
	          	  	        	even ={
      			    				"id" : id,
      			    	       	    "title" : title,
      			    	       	    "start" : start,
      			    	       	    "end" : end,
      			    	       	    extendedProps: {
      			    	       	      calendar: prop[i]
      			    	       	    }
      			    		}
      			    		console.log(even);
      			    		calendar.addEvent(even);
      			    		calendar.refetchEvents();
      			    		 console.log("done");
			          	  	    });
			          	  	    }
		      		    	 });
		          	}
    			</script>
				<script src="<%=request.getContextPath() %>/resources/vuexy/app-assets/js/scripts/pages/app-calendar.js"></script>
    			<!-- Full calendar js-->
            </div>
		</div>
		<div class="col-md-6">
			<div class="card">
				<div class="card-header">
					<div class="card-title">교과목</div>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>교과목명</th>
									<th>기간</th>
									<th>총시간</th>
									<th>시간구분</th>
									<th>강사명</th>
									<th>강의계획서</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="subInIngCourse" items="${subInIngCourseList }">
									<tr>
										<td>${subInIngCourse.subName}</td>
										<td><fmt:formatDate value="${subInIngCourse.subBdate }"
												pattern="yy-MM-dd" /> ~ <fmt:formatDate
												value="${subInIngCourse.subEdate }" pattern="yy-MM-dd" /></td>
										<td>${subInIngCourse.subTime }H</td>
										<td><c:if test="${subInIngCourse.subDayTime eq '0'}">
								오전
								</c:if> <c:if test="${subInIngCourse.subDayTime eq '1'}">
								오후
								</c:if> <c:if test="${subInIngCourse.subDayTime eq '2'}">
								종일
								</c:if></td>
										<td>${subInIngCourse.profName }</td>
										<td><a href="#"><button type="button"
													class="btn btn-primary">강의계획서${subInIngCourse.planCode }</button></a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row card">
		<div class="card-header">
			<div class="card-title">교육생</div>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>구분</th>
							<th>ID</th>
							<th>이름</th>
							<th>성별</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="courseStudent" items="${courseStudentList}"
							varStatus="vs">
							<tr>
								<td>${vs.index+1}</td>
								<td>${courseStudent.studentId }</td>
								<td>${courseStudent.name }</td>
								<td><c:if test="${fn:trim(courseStudent.gender) eq 'F'}">여성</c:if> <c:if
										test="${fn:trim(courseStudent.gender) eq 'M'}">남성</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12" style="text-align: center;">
			<button type="button" id="modifyBtn" class="btn btn-primary"
				onclick="location.href='modifyForm.do?ingCourseCode=${ingCourse.ingCourseCode}';">수정</button>
			<button type="button" id="removeBtn" class="btn btn-primary"
				onclick="location.href='remove.do?ingCourseCode=${ingCourse.ingCourseCode}';">삭제</button>
			<button type="button" id="cancelBtn" class="btn btn-primary" onclick="CloseWindow();">닫기</button>
		</div>
	</div>
	<section class="section bg-light"></section>
	<script>
	/**
	 *  date형식 -> str형식으로 변환
	 */
	function convertDateToStr(datedate) {

	        var sYear = datedate.getFullYear();
	        var sMonth = datedate.getMonth() + 1;
	        var sDate = datedate.getDate();

	        sMonth = sMonth > 9 ? sMonth : "0" + sMonth;
	        sDate = sDate > 9 ? sDate : "0" + sDate;

	        //     alert(sYear+ "-" + sMonth + "-" + sDate);

	        return sYear + "-" + sMonth + "-" + sDate;
	}

	var ingCourseCode = '${ingCourse.ingCourseCode }';
	eventMakerbyIngCourseCode(ingCourseCode);


	</script>
</body>











