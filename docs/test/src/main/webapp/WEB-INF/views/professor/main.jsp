<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

${loginUser.usersId }
<!-- 
시간표 o
교육진도 x
일일 출석현황 x
qna x

 -->
<body
	class="vertical-layout vertical-menu-modern navbar-floating footer-static"
	data-open="click" data-menu="vertical-menu-modern" data-col="">
	<style>
</style>
	<div class="container">
		<!-- Full calendar start -->
		<section>

			<div class="app-calendar overflow-hidden border row match-height">

				<!-- 캘린더 전체 -->
				<div class="col-sm-8">
					<div class="g-0 row match-height">

						<!-- Calendar -->
						<div class="col position-relative">
							<div class="card shadow-none border-0 mb-0 rounded-0">
								<div class="card-body pb-0">
									<div id="calendar"></div>
								</div>
							</div>
						</div>
						<!-- Sidebar -->
						<div
							class="col app-calendar-sidebar flex-grow-0 overflow-hidden d-flex flex-column"
							id="app-calendar-sidebar">
							<div class="sidebar-wrapper">
								<div class="card-body d-flex justify-content-center">
									<button class="btn btn-primary">
										<span class="align-middle">한글</span>
									</button>
								</div>
								<div class="card-body pb-0">
									<h5 class="section-label mb-1">
										<span class="align-middle">Filter</span>
									</h5>
									<div class="form-check mb-1">
										<input type="checkbox" class="form-check-input select-all"
											id="select-all" checked /> <label class="form-check-label"
											for="select-all">View All</label>
									</div>
									<div class="calendar-events-filter">
										<div class="form-check form-check-danger mb-1">
											<input type="checkbox" class="form-check-input input-filter"
												id="personal" data-value="personal" checked /> <label
												class="form-check-label" for="personal">Personal</label>
										</div>
										<div class="form-check form-check-primary mb-1">
											<input type="checkbox" class="form-check-input input-filter"
												id="business" data-value="business" checked /> <label
												class="form-check-label" for="business">Business</label>
										</div>
										<div class="form-check form-check-warning mb-1">
											<input type="checkbox" class="form-check-input input-filter"
												id="family" data-value="family" checked /> <label
												class="form-check-label" for="family">Family</label>
										</div>
										<div class="form-check form-check-success mb-1">
											<input type="checkbox" class="form-check-input input-filter"
												id="holiday" data-value="holiday" checked /> <label
												class="form-check-label" for="holiday">Holiday</label>
										</div>
										<div class="form-check form-check-info">
											<input type="checkbox" class="form-check-input input-filter"
												id="etc" data-value="etc" checked /> <label
												class="form-check-label" for="etc">ETC</label>
										</div>
									</div>
								</div>
							</div>
							<div class="mt-auto">
								<img
									src="<%=request.getContextPath()%>/resources/vuexy/app-assets/images/pages/calendar-illustration.png"
									alt="Calendar illustration" class="img-fluid" />
							</div>
						</div>
						<!-- /Sidebar -->
						<!-- /Calendar -->


					</div>
				</div>

				<!-- 출석확인 -->
				<div class="col-lg-4 card card-statistics">
					<div class="content-wrapper container-xxl p-0">
						<div class="content-body">
							<!-- Card Advance -->
							<div class="row match-height">
								<!-- Employee Task Card -->
								<!-- Employee Task Card -->
								<div class="col-12">
									<div class="card card-employee-task">
										<div class="card-header">
											<h4 class="card-title">과목별 진도확인</h4>
											<i data-feather="more-vertical"
												class="font-medium-3 cursor-pointer"></i>
										</div>
										<div class="card-body">
											<div
												class="employee-task d-flex justify-content-between align-items-center">
												<div class="d-flex flex-row">
													<div class="avatar me-75">
														<img
															src="<%=request.getContextPath()%>/resources/vuexy/app-assets/images/portrait/small/spring.png"
															class="rounded" width="42" height="42" alt="Avatar" />
													</div>
													<div class="my-auto">
														<h6 class="mb-0">Spring framework</h6>
														<small>annotation</small>
													</div>
												</div>
												<div class="d-flex align-items-center">
													<small class="text-muted me-75">9hr 20m</small>
													<div class="employee-task-chart-primary-1"></div>
												</div>
											</div>
											<div
												class="employee-task d-flex justify-content-between align-items-center">
												<div class="d-flex flex-row">
													<div class="avatar me-75">
														<img
															src="<%=request.getContextPath()%>/resources/vuexy/app-assets/images/portrait/small/js_img.png"
															class="rounded" width="42" height="42" alt="Avatar" />
													</div>
													<div class="my-auto">
														<h6 class="mb-0">JavaScript</h6>
														<small>JSTL</small>
													</div>
												</div>
												<div class="d-flex align-items-center">
													<small class="text-muted me-75">4hr 17m</small>
													<div class="employee-task-chart-danger"></div>
												</div>
											</div>
											<div
												class="employee-task d-flex justify-content-between align-items-center">
												<div class="d-flex flex-row">
													<div class="avatar me-75">
														<img
															src="<%=request.getContextPath()%>/resources/vuexy/app-assets/images/portrait/small/java.jpg"
															class="rounded" width="42" height="42" alt="Avatar" />
													</div>
													<div class="my-auto">
														<h6 class="mb-0">Java</h6>
														<small>ServletWork</small>
													</div>
												</div>
												<div class="d-flex align-items-center">
													<small class="text-muted me-75">4hr 17m</small>
													<div class="employee-task-chart-danger"></div>
												</div>
											</div>
											<div
												class="employee-task d-flex justify-content-between align-items-center">
												<div class="d-flex flex-row">
													<div class="avatar me-75">
														<img
															src="<%=request.getContextPath()%>/resources/vuexy/app-assets/images/portrait/small/html5.png"
															class="rounded" width="42" height="42" alt="Avatar" />
													</div>
													<div class="my-auto">
														<h6 class="mb-0">HTML</h6>
														<small>Bootstrap,Css</small>
													</div>
												</div>
												<div class="d-flex align-items-center">
													<small class="text-muted me-75">4hr 17m</small>
													<div class="employee-task-chart-danger"></div>
												</div>
											</div>

											<div class="car card-company-table">
												<table class="table">
													<tr>
														<td>
														</td>
													</tr>
													<tr>
														<th>
														</th>
														<td>
														</td>
													</tr>
													<tr>
														<th>
														</th>
														<td>
														</td>


													</tr>
												</table>
											</div>
											<div class="d-flex justify-content-center">
												<img id="qrImg"
													src="<%=request.getContextPath()%>/resources/vuexy/app-assets/images/portrait/small/qrcode.png"
													class="rounded" width="200" height="200" alt="Qr"
													style="visibility: hidden;" />
											</div>
										</div>
									</div>
								</div>
								<!--/ Employee Task Card -->

							</div>



							<!--/ Card Advance -->

						</div>
					</div>

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
									<label for="start-date" class="form-label">Start Date</label> <input
										type="text" class="form-control" id="start-date" name="start"
										placeholder="Start Date" />
								</div>
								<div class="mb-1 position-relative">
									<label for="end-date" class="form-label">End Date</label> <input
										type="text" class="form-control" id="end-date" name="end"
										placeholder="End Date" />
								</div>
								<div class="mb-1">
									<div class="form-check form-switch">
										<input type="checkbox" class="form-check-input allDay-switch"
											id="customSwitch3" /> <label class="form-check-label"
											for="customSwitch3">All Day</label>
									</div>
								</div>
								<div class="mb-1">
									<label for="event-url" class="form-label">Event URL</label> <input
										type="url" class="form-control" id="event-url"
										placeholder="https://www.google.com" />
								</div>
								<div class="mb-1 select2-primary">
									<label for="event-guests" class="form-label">Add Guests</label>
									<select class="select2 select-add-guests form-select w-100"
										id="event-guests" multiple>
										<option data-avatar="1-small.png" value="Jane Foster">Jane
											Foster</option>
										<option data-avatar="3-small.png" value="Donna Frank">Donna
											Frank</option>
										<option data-avatar="5-small.png" value="Gabrielle Robertson">Gabrielle
											Robertson</option>
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
		<!-- BEGIN: Content-->
		<!-- Full calendar js-->
		<script>
			var events = [ {
				id : 1,
				title : 'Design Review',
				start : '2009-07-01',
				end : '2009-07-10',
				extendedProps : {
					calendar : 'Business'
				}
			} ];
			var id = '${loginUser.usersId }';
			function eventMaker(id) {
				$.ajax({
					type : 'POST',
					url : 'event',
					dataType : "json",
					data : JSON.stringify({
						"id" : id
					}),
					contentType : "application/json",
					success : function(result) {
						console.log(result);
						console.log(calendar);
						var id;
						var title;
						var start;
						var end;
						var even;

						id = result[0].subInIngCourseCode;
						title = result[0].subName;
						start = result[0].subBDateString;
						end = result[0].subEDateString;
						even = {
							"id" : id,
							"title" : title,
							"start" : start,
							"end" : end,
							extendedProps : {
								calendar : 'Business'
							}
						}
						console.log(even);
						calendar.addEvent(even);
						calendar.refetchEvents();

						id = result[1].subInIngCourseCode;
						title = result[1].subName;
						start = result[1].subBDateString;
						end = result[1].subEDateString;
						even = {
							"id" : id,
							"title" : title,
							"start" : start,
							"end" : end,
							extendedProps : {
								calendar : 'Family'
							}
						}
						console.log(even);
						calendar.addEvent(even);
						calendar.refetchEvents();

						id = result[2].subInIngCourseCode;
						title = result[2].subName;
						start = result[2].subBDateString;
						end = result[2].subEDateString;
						even = {
							"id" : id,
							"title" : title,
							"start" : start,
							"end" : end,
							extendedProps : {
								calendar : 'Holiday'
							}
						}
						console.log(even);
						calendar.addEvent(even);
						calendar.refetchEvents();

						id = result[3].subInIngCourseCode;
						title = result[3].subName;
						start = result[3].subBDateString;
						end = result[3].subEDateString;
						even = {
							"id" : id,
							"title" : title,
							"start" : start,
							"end" : end,
							extendedProps : {
								calendar : 'Personal'
							}
						}
						console.log(even);
						calendar.addEvent(even);
						calendar.refetchEvents();

						id = result[4].subInIngCourseCode;
						title = result[4].subName;
						start = result[4].subBDateString;
						end = result[4].subEDateString;

						even = {
							"id" : id,
							"title" : title,
							"start" : start,
							"end" : end,
							extendedProps : {
								calendar : 'ETC'
							}
						}
						console.log(even);
						calendar.addEvent(even);
						calendar.refetchEvents();

						id = result[5].subInIngCourseCode;
						title = result[5].subName;
						start = result[5].subBDateString;
						end = result[5].subEDateString;
						even = {
							"id" : id,
							"title" : title,
							"start" : start,
							"end" : end,
							extendedProps : {
								calendar : 'Family'
							}
						}
						console.log(even);
						calendar.addEvent(even);
						calendar.refetchEvents();
					}
				});
			}
			eventMaker(id);
		</script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/app-assets/js/scripts/pages/app-calendar.js"></script>
		<!-- Full calendar js-->
	</div>
</body>
