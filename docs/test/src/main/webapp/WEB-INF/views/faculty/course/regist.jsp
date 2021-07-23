<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>교육과정 등록</title>

<body>
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">교육과정 등록</h4>
			</div>
			<div class="card-body">
				<form action="regist.do" method="post" role="form">
					<div class="row">
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<label class="form-label" for="courseType">사업분류</label> <input id="courseType" class="form-control" name="courseType" type="text" value="국가기간.전략산업직종훈련"><br>
							</div>
						</div>

						<div class="col-md-6 col-12">
							<div class="mb-1">
								<label class="form-label" for="courseType">과정명</label> <input id="courseName" class="form-control" name="courseName" type="text"><br>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<label class="form-label" for="courseType">시간</label> <input id="courseTime" class="form-control" name="courseTime" type="text" value="" readonly="readonly"><br>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<label class="form-label" for="courseType">작성자</label>
								<input id="facName" class="form-control" type="text"  readonly="readonly"name="facName" value="${loginUser.facName}" />
								<input id="facId" class="form-control" type="text" name="facId" hidden="" readonly="readonly" value="${loginUser.usersId}" /><br>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="mb-1">
								<label class="form-label" for="courseType">수강인원</label> <input id="courseLimit" class="form-control" name="courseLimit" type="text"><br>
							</div>
						</div>
						<div id="subInCourseOut" class="col-md-12 col-12">
							<h4>교과목</h4>
							<div id="subInCourseIn" class="subInCourseIn row">
								<div class="row">
									<div class="col-md-8">
										<select id="subInCourseSelect" name="subCode" class="subCode select2 form-select" value="" onchange="checkSub(this);">
											<option value="0">선택</option>
											<c:forEach var="subject" items="${subjectList }">
												<option value="${subject.subCode }">${subject.subName }</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-md-4">
										<div class="row">
											<div class="col-md-10">
												<input type="number" name="subTime" class="subTime form-control" value="0" readonly="readonly" onchange="calsum();">
											</div>
											<div class="col-md-2">
												<button type="button" id="minusSub" class="minusSub btn" onclick="removeSelect(this);">
													<i data-feather='x'></i>
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="row">&nbsp;</div>
							</div>

						</div>
						<div class="col-12">
							<button type="button" class="btn btn-primary me-1" onclick="cloneSelect();">추가</button>
							<button type="button" id="registBtn" class="btn btn-primary me-1" onclick="regist_go();">완료</button>
							<button type="button" id="cancelBtn" class="btn btn-outline-secondary" onclick="javascript:window.close();">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/resources/js/course/regist.js"></script>
	<script>
		function checkSub(obj) {
			if (obj.value == "0") {
				$(obj).parents(".subInCourseIn").find(".subTime").val(0);
				calsum();
				$(obj).parents(".subInCourseIn").find(".subTime").attr("readonly", true);
			} else {
				$(obj).parents(".subInCourseIn").find(".subTime").attr("readonly", false);
			}
		}

		function calsum() {
			var sum = 0;
			$("input[name='subTime']").each(function(i) {
				sum = sum + parseInt($("input[name='subTime']").eq(i).val())
			});
			$("#courseTime").val(sum);
		}

		function removeSelect(obj) {
			if ($(".subInCourseIn").length > 1) {
				$(obj).parents(".subInCourseIn").remove();
				calsum();
			}

		}

		function cloneSelect() {
			var clone = $('#subInCourseIn').clone();
			clone.find(".subTime").val("0").attr("readonly", true);
			clone.find("select[name=subCode]").val("0");
			clone.find("button").removeAttr("hidden");
			$("#subInCourseOut").append(clone);
		}
	</script>
</body>