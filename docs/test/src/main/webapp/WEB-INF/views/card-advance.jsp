<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- BEGIN: Body-->
<body
	class="pace-done vertical-layout navbar-floating footer-static vertical-overlay-menu menu-hide"
	data-open="click" data-menu="vertical-menu-modern" data-col="">
	<!-- BEGIN: Content-->
	<div class="app-content content ">
		<div class="content-overlay"></div>

		<div class="content-wrapper container-xxl p-0">

			<div class="content-body">
				<!-- Card Advance -->
				<div class="row match-height">
					<!-- Employee Task Card -->
					<!-- Employee Task Card -->
					<div class="col-lg-4 col-md-6 col-12">
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
											<small>suvletwork</small>
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
											<th>
												<div class="avatar bg-light-success me-1">
													<div class="avatar-content">
														<svg xmlns="http://www.w3.org/2000/svg" width="14"
															height="14" viewBox="0 0 24 24" fill="none"
															stroke="currentColor" stroke-width="2"
															stroke-linecap="round" stroke-linejoin="round"
															class="feather feather-monitor font-medium-3">
																<rect x="2" y="3" width="20" height="14" rx="2" ry="2"></rect>
																<line x1="8" y1="21" x2="16" y2="21"></line>
																<line x1="12" y1="17" x2="12" y2="21"></line></svg>
													</div>
												</div> 출석

											</th>
											<td>
											<div class="fw-bolder text-success">71days</div>
											</td>
										</tr>
										<tr>
											<th>
												<div class="avatar bg-light-danger me-1">
													<div class="avatar-content">
														<svg xmlns="http://www.w3.org/2000/svg" width="14"
															height="14" viewBox="0 0 24 24" fill="none"
															stroke="currentColor" stroke-width="2"
															stroke-linecap="round" stroke-linejoin="round"
															class="feather feather-coffee font-medium-3">
															<path d="M18 8h1a4 4 0 0 1 0 8h-1"></path>
															<path d="M2 8h16v9a4 4 0 0 1-4 4H6a4 4 0 0 1-4-4V8z"></path>
															<line x1="6" y1="1" x2="6" y2="4"></line>
															<line x1="10" y1="1" x2="10" y2="4"></line>
															<line x1="14" y1="1" x2="14" y2="4"></line></svg>
													</div>
												</div> 결석
											</th>
											<td>
											<div class="fw-bolder text-danger">1days</div>
											
											</td>
										</tr>
										<tr>
											<th>
												<div class="avatar bg-light-warning me-1">
													<div class="avatar-content">
														<svg xmlns="http://www.w3.org/2000/svg" width="14"
															height="14" viewBox="0 0 24 24" fill="none"
															stroke="currentColor" stroke-width="2"
															stroke-linecap="round" stroke-linejoin="round"
															class="feather feather-watch font-medium-3">
															<circle cx="12" cy="12" r="7"></circle>
															<polyline points="12 9 12 12 13.5 13.5"></polyline>
															<path
																d="M16.51 17.35l-.35 3.83a2 2 0 0 1-2 1.82H9.83a2 2 0 0 1-2-1.82l-.35-3.83m.01-10.7l.35-3.83A2 2 0 0 1 9.83 1h4.35a2 2 0 0 1 2 1.82l.35 3.83"></path></svg>
													</div>
												</div> 지각
											</th>
											<td>
											<div class="fw-bolder text-warning">3days</div>
											</td>
											
											
										</tr>
									</table>
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
	<!-- END: Content-->





</body>