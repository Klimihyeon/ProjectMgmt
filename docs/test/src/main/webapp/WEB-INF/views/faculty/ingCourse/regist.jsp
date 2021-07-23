<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>진행교육과정 등록</title>


<body
	class="vertical-layout vertical-menu-modern navbar-floating footer-static"
	data-open="click" data-menu="vertical-menu-modern" data-col="">

	<div class="row">
		<div class="col-md-6">
			<div class="container">
				<!-- jquery-->
				<script
					src="<%=request.getContextPath()%>/resources/vuexy/app-assets/vendors/js/jquery/jquery.min.js"></script>
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
					<div class="modal modal-slide-in event-sidebar fade"
						id="add-new-sidebar">
						<div class="modal-dialog sidebar-lg">
							<div class="modal-content p-0">
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
								<div class="modal-header mb-1">
									<h5 class="modal-title">add Event</h5>
								</div>
								<div class="modal-body flex-grow-1 pb-sm-0 pb-3">
									<form class="event-form needs-validation" role="form"
										method="post" name="registForm" data-ajax="false" novalidate>
										<div class="mb-1">
											<label for="title" class="form-label">Title</label> <input
												type="text" class="form-control" id="title" name="title"
												placeholder="Event Title" required /> <input type="text"
												id="id" name="id" value="eventId" />
										</div>
										<div class="mb-1">
											<label for="select-label" class="form-label">Label</label> <select
												class="select2 select-label form-select w-100"
												id="select-label" name="select-label">
												<option data-label="primary" value="Business" selected>Business</option>
												<option data-label="danger" value="Personal">Personal</option>
												<option data-label="warning" value="Family">Family</option>
												<option data-label="success" value="Holiday">Holiday</option>
												<option data-label="info" value="ETC">ETC</option>
											</select>
										</div>
										<div class="mb-1 position-relative">
											<label for="start-date" class="form-label">Start Date</label>
											<input type="text" class="form-control" id="start-date"
												name="start" placeholder="Start Date" />
										</div>
										<div class="mb-1 position-relative">
											<label for="end-date" class="form-label">End Date</label> <input
												type="text" class="form-control" id="end-date" name="end"
												placeholder="End Date" />
										</div>
										<div class="mb-1">
											<div class="form-check form-switch">
												<input type="checkbox"
													class="form-check-input allDay-switch" id="customSwitch3" />
												<label class="form-check-label" for="customSwitch3">All
													Day</label>
											</div>
										</div>
										<div class="mb-1">
											<label for="event-url" class="form-label">Event URL</label> <input
												type="url" class="form-control" id="event-url"
												placeholder="https://www.google.com" />
										</div>
										<div class="mb-1 select2-primary">
											<label for="event-guests" class="form-label">Add
												Guests</label> <select
												class="select2 select-add-guests form-select w-100"
												id="event-guests" multiple>
												<option data-avatar="1-small.png" value="Jane Foster">Jane
													Foster</option>
												<option data-avatar="3-small.png" value="Donna Frank">Donna
													Frank</option>
												<option data-avatar="5-small.png"
													value="Gabrielle Robertson">Gabrielle Robertson</option>
												<option data-avatar="7-small.png" value="Lori Spears">Lori
													Spears</option>
												<option data-avatar="9-small.png" value="Sandy Vega">Sandy
													Vega</option>
												<option data-avatar="11-small.png" value="Cheryl May">Cheryl
													May</option>
											</select>
										</div>
										<div class="mb-1">
											<label for="event-location" class="form-label">Location</label>
											<input type="text" class="form-control" id="event-location"
												placeholder="Enter Location" />
										</div>
										<div class="mb-1">
											<label class="form-label">Description</label>
											<textarea name="event-description-editor"
												id="event-description-editor" class="form-control"></textarea>
										</div>
										<div class="mb-1 d-flex">
											<button type="submit"
												class="btn btn-primary add-event-btn me-1">Add</button>
											<button type="button"
												class="btn btn-outline-secondary btn-cancel"
												data-bs-dismiss="modal">Cancel</button>
											<button type="submit"
												class="btn btn-primary update-event-btn d-none me-1">Update</button>
											<button
												class="btn btn-outline-danger btn-delete-event d-none">Delete</button>
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
				var flag = ['f','f','f','f','f','f'];

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

// 		          	 $.each($("input[name='subName']"),function(i,item){
//      			    	  calendar.getEventById(id).remove();

		          	function addEventMaker(id,title,start,end,index){
		          		var id = $("#"+id).val();

						if(flag[index]=='f'){
	     			    	var title = $("#"+title).val();
			          		var start = $("#"+start).val();
			          		var end = $("#"+end).val();
			          		var endDate = convertStrToDate(end);
			          		endDate.setDate(convertStrToDate(end).getDate()+1);
			          		end = convertDateToStr(endDate);


			          		var prop = ['Business','Family','Holiday','Personal','ETC'];
			          	  	       	var even;
			      			    		even ={
			      			    				"id" : id,
			      			    	       	    "title" : title,
			      			    	       	    "start" : start,
			      			    	       	    "end" : end,
			      			    	       	    extendedProps: {
			      			    	       	      calendar: prop[index]
			      			    	       		       	    }
			      			    		}
			      			    		console.log(even);
			      			    		calendar.addEvent(even);
			      			    		calendar.refetchEvents();
			      			    	    console.log("done");
			      			    	    flag[index]='t';
						}else {

								var title = $("#"+title).val();
								var start = $("#"+start).val();
								var end = $("#"+end).val();
				          		var endDate = convertStrToDate(end);
				          		endDate.setDate(convertStrToDate(end).getDate()+1);
				          		end = convertDateToStr(endDate);
								 calendar.getEventById(id).setDates(start,end);
								 calendar.refetchEvents();
					    	     console.log("done");
						}
	          		}
		          	function updateEventMaker(id,title,start,end,index){

		          		var id = $("#"+id).val();
// 		          		calendar.removeEvent(id);
		          		removeEventInCalendar(id);

		          		var title = $("#"+title).val();
		          		var start = $("#"+start).val();
		          		var end = $("#"+end).val();
		          		var endDate = convertStrToDate(end);
		          		endDate.setDate(convertStrToDate(end).getDate()+1);
		          		end = convertDateToStr(endDate);
		          		var prop = ['Business','Family','Holiday','Personal','ETC'];
		          	  	var evenData;
		      			    		evenData = {
		      			    				id: id,
		      			    	       	    title : title,
		      			    	       	    start : start,
		      			    	       	    end : end,
		      			    	       	    extendedProps: {
		      			    	       	      calendar: prop[index]
		      			    	       	    }
		      			    		}
		      			    		console.log(evenData);
// 		      			    		calendar.updateEvent(evenData);
		      			    		calendar.addEvent(evenData);
// 		      			    		calendar.refetchEvents();
		      			    	    console.log("done");
	          		}



    			</script>
				<script
					src="<%=request.getContextPath()%>/resources/vuexy/app-assets/js/scripts/pages/app-calendar.js"></script>
				<!-- Full calendar js-->
			</div>

		</div>


		<div class="col-md-6">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">진행교육과정 등록</h4>
				</div>
				<div class="card-body">
					<form action="regist.do" method="post" role="form" class="form">
						<div class="row">
							<div class="col-md-12 col-12">
								<div class="mb-1">
									<input type="hidden" name="courseName" id="courseName" value="">
									<label class="form-label" for="courseType">사업분류</label> <input
										id="courseType" class="form-control" name="courseType"
										type="text" readonly="readonly" value=""><br>
								</div>
							</div>
							<div class="col-md-12 col-12">
								<div class="mb-1">
									<label class="form-label" for="courseCode">과정명</label>
									<select
										id="courseCode" class="form-control" name="courseCode"
										onchange="checkSub(this); addEventInit();">
										<option value="">선택</option>
										<c:forEach var="course" items="${courseList }" varStatus="vs">
											<option value="${course.courseCode }">${course.courseName }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="mb-1">
									<label class="form-label" for="courseTime">시간</label> <input
										id="courseTime" class="form-control" name="courseTime"
										type="text" value="" readonly="readonly"><br>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="mb-1">
									<label class="form-label" for="facId">작성자</label> <input
										id="facName" class="form-control" type="text" name="facName"
										value="${loginUser.facName}" readonly="readonly" /><br>
									<input id="facId" class="form-control" type="text" name="facId"
										hidden="" value="${loginUser.usersId}" readonly="readonly" /><br>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="mb-1">
									<label class="form-label" for="courseLimit">수강인원</label> <input
										id="courseLimit" class="form-control" name="courseLimit"
										type="text" value="" readonly="readonly"><br>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="row">
									<label class="form-label" for="ingCourseBeginDate">기간</label>
									<div class="col-md-6 col-12">
										<input id="ingCourseBeginDate" class="form-control"
											name="ingCourseBeginDate" type="date" value=""
											onchange="calTime('ingCourseBeginDate','ingCourseEndDate','courseTime','ingCourseampm');">
<!-- addEventMaker('1','courseCode','ingCourseBeginDate','ingCourseEndDate','Business'); -->
										<input type="hidden" id="ingCourseampm" value="2">
									</div>
									<div class="col-md-6 col-12">
										<input id="ingCourseEndDate" class="form-control"
											name="ingCourseEndDate" type="date" value=""
											readonly="readonly">
									</div>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="mb-1">
									<label class="form-label" for="ingCourseCount">회차</label> <input
										id="ingCourseCount" class="form-control" name="ingCourseCount"
										type="number" value="" readonly="readonly"><br>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="mb-1">
									<label class="form-label" for="roomCode">강의실</label> <select
										id="roomCode" name="roomCode" class="form-control">
										<c:forEach var="room" items="${roomList }" varStatus="vs">
											<option value="${room.roomCode }">${room.roomNumber }</option>
										</c:forEach>
									</select> ★강의실선택시
								</div>
							</div>
							<div class="col-md-12 col-12">
								<div class="mb-1">
									<label class="form-label" for="subInCourseTable">교과목</label>
									<table id="subInCourseTable" name="subInCourseTable" style="">
										<thead>
											<tr>
												<th style="width: 20%">과목명</th>
												<th style="width: 10%">교강사</th>
												<th style="width: 20%">교육기간(시작)</th>
												<th style="width: 20%">교육기간(종료)</th>
												<th style="width: 20%">오전오후종일</th>
												<th style="width: 10%">총시간</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="6">
													<p>교과목을 선택해주세요</p>
												<td>
											<tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-12">
								<button type="button"
									class="btn btn-primary waves-effect waves-float waves-light"
									id="registBtn" onclick="regist_go();">완료</button>
								<button type="button"
									class="btn btn-primary waves-effect waves-float waves-light"
									id="cancelBtn" onclick="javascript:window.close();">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script
		src="<%=request.getContextPath()%>/resources/js/ingCourse/regist.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>

	<script>
 window.onload=function(){
// 	 eventMaker();
 }
/**
 * str형식 -> date형식으로 변환
 */
function convertStrToDate(strdate) {
        var year = strdate.substr(0, strdate.indexOf("-"));
        var strdate1 = strdate.substr(strdate.indexOf("-") + 1);
        var month = strdate1.substr(0, strdate1.indexOf("-"));
        var day = strdate1.substr(strdate1.indexOf("-") + 1);
        var date = new Date(year, month - 1, day);

        return date;
}
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


/**
 * 강의 일정 설정
 * fromTag(시작일), timeTag(총시간)을 계산하여  toTag(종료일)에 입력(str형태)
 *
 */
function calTime(fromTag, toTag, timeTag, ampmTag) {

        var fromStr = $("#"+fromTag).val();
        var fromDate = convertStrToDate(fromStr);

//         	alert("strdate : "+fromStr);
//         	alert("datedate : "+fromDate);
//         	alert("요일 : "+getSomeDayLabel(fromStr));
// 		alert("time(계산전) : "+time);

        var time = parseInt($('#' + timeTag).val());

        var ampm = $('#' + ampmTag).val();

        if (ampm == '0' || ampm == '1') {
                time = Math.floor(time / 4);
        } else {
                time = Math.floor(time / 8);
        }

//        	alert("time(계산후) : "+time);

        var nextDay = 0;
        var endDate = new Date();
        var tmpDate = fromDate;
        var tmpStr = fromStr;
        endDate.setMonth(fromDate.getMonth());
//         var endDate = convertStrToDate(fromStr);

//         	alert("tmpDate : "+tmpDate);
//         	alert("tmpStr : "+tmpStr);

        for (var i = 0; i < time ; i++) {
//         	alert("날짜 :"+tmpStr+", 요일 : "+getSomeDayLabel(tmpStr));

                if (getSomeDayLabel(tmpStr) != '토요일' && getSomeDayLabel(tmpStr) != '일요일') {
                        endDate.setDate(tmpDate.getDate());
                        tmpDate.setDate(tmpDate.getDate() + 1);
                } else if (getSomeDayLabel(tmpStr) == '토요일') {
                	endDate.setDate(tmpDate.getDate() + 2);
                	tmpDate.setDate(tmpDate.getDate() + 3);
                } else if (getSomeDayLabel(tmpStr) == '일요일') {
                	endDate.setDate(tmpDate.getDate() + 1);
                	tmpDate.setDate(tmpDate.getDate() + 2);
                }

                tmpStr = convertDateToStr(tmpDate);
//                 alert("endStr  : "+ endDate);
        }

        var endStr = convertDateToStr(endDate);


        $("#" + toTag).val(endStr);


}


/**
 *
 */
function checkSub(obj) {
        if (obj.value != "") {
                $("#subInCourseTable").children().eq(1).children().remove();

                var courseCode = $(obj).val();

                $.getJSON("<%=request.getContextPath()%>/faculty/manage/ingCourse/registFormTmp.do?courseCode="+courseCode,function(data){
                        $("#courseTime").val(data.course.courseTime);
                        $("#courseLimit").val(data.course.courseLimit);
                        $("#courseName").val(data.course.courseName);
                        $("#courseType").val(data.course.courseType);
                        $("#ingCourseCount").val(parseInt(data.ingCourseMaxCount) + 1);
                        $("#subInCourseTable").children().eq(1).append($("<tr>", {}));

                        $.each(data.subInCourseList,function(i, subInCourse) {
                        	$("#subInCourseTable").children().eq(1).append($("<tr>", {}));
                        	for (var j = 0; j < 6; j++) {
                        		$("#subInCourseTable").children().eq(1).children().eq(i).append($("<td>", {}));
                        		}
                            var $input0 = $("<input>", {
	                            	type: "text",
		                            id: "subName" + i,
		                            name: "subName",
		                            value: subInCourse.subName,
		                            class: "form-control",
		                            readonly: "readonly"
                       		});

                            var $input0_1 = $("<input>", {
                                    type: "hidden",
                                    id: "subCode" +
                                            i,
                                    name: "subCode",
                                    class: "form-control",
                                    value: subInCourse.subCode,
                            });

                            var $input2 = $("<input>", {
	                                type: "date",
	                                id: "subBdate" + i,
	                                name: "subBdate",
	                                class: "form-control",
	                                onchange: "calTime('subBdate" + i +"','subEdate" + i +"','subTime" + i + "','subDayTime"+i+"'); addEventMaker('subCode"+i+"','subName"+i+"','subBdate"+i+"','subEdate"+i+"',"+i+");"
                            });
                            var $input3 = $("<input>", {
                                    type: "date",
                                    id: "subEdate" + i,
                                    name: "subEdate",
                                    class: "form-control",
                                    readonly: "readonly",
                                    onchange : "addEventMaker('subCode"+i+"','subName"+i+"','subBdate"+i+"','subEdate"+i+"',"+i+");"
                            });
                            var $select4 = $("<select>", {
                                    id: "subDayTime" +
                                            i,
                                    name: "subDayTime",
                                    class: "form-control",
                                    onchange: "calTime('subBdate" + i +"','subEdate" + i +"','subTime" + i + "','subDayTime"+i+"');"
                            });
                            var $input5 = $("<input>", {
                                    type: "text",
                                    id: "subTime" +
                                            i,
                                    name: "subTime",
                                    class: "form-control",
                                    readonly: "readonly",
                                    value: subInCourse.subTime
                            });

                            var $select1 = $("<select>", {
                                    id: "profId" + i,
                                    name: "profId",
                                    class: "form-control"
                            });

                            $.each(data.professorList,function(j,professor) {
	                            var $obj1 = "<option value='" + professor.usersId + "'>" + professor.profName + "</option>";
                                $select1.append($obj1);
		                    });

                            var $subTime_am = "<option value='0'>오전</option>";
                            var $subTime_pm = "<option value='1'>오후</option>";
                            var $subTime_all = "<option value='2'>종일</option>";

                            $select4.append($subTime_am)
                                    .append($subTime_pm)
                                    .append($subTime_all);

                            $("#subInCourseTable")
                                    .children().eq(1)
                                    .children().eq(i)
                                    .children().eq(0)
                                    .append($input0);
                            $("#subInCourseTable")
                                    .children().eq(1)
                                    .children().eq(i)
                                    .children().eq(0)
                                    .append($input0_1);
                            $("#subInCourseTable")
                                    .children().eq(1)
                                    .children().eq(i)
                                    .children().eq(1)
                                    .append($select1);

                            $("#subInCourseTable")
                                    .children().eq(1)
                                    .children().eq(i)
                                    .children().eq(2)
                                    .append($input2);

                            $("#subInCourseTable")
                                    .children().eq(1)
                                    .children().eq(i)
                                    .children().eq(3)
                                    .append($input3);

                            $("#subInCourseTable")
                                    .children().eq(1)
                                    .children().eq(i)
                                    .children().eq(4)
                                    .append($select4);

                            $("#subInCourseTable")
                                    .children().eq(1)
                                    .children().eq(i)
                                    .children().eq(5)
                                    .append($input5);
                        });
                });

        } else {
                $("#subInCourseTable").children().eq(1).children().remove();
                $("#subInCourseTable").children().eq(1).append($("<p>", { text: "교과목을 선택해주세요" }));
                $("#courseTime").val("");
                $("#courseLimit").val("");
        }


//         addEventInit();


}

</script>
</body>