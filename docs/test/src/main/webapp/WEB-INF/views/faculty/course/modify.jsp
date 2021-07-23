<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="subInCourse" value="${subInCourseList }" />

<title>교육과정 수정</title>

<body>
	<form action="modify.do" method="post" role="form">
		<h1>교육과정 수정</h1>
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">교육과정 등록</h4>
				</div>
				<input name="courseCode" id="courseCode" hidden="" value="${course.courseCode }">
				<div class="row">
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<label class="form-label" for="courseType">사업분류</label> <input id="courseType" name="courseType" class="form-control" type="text" value="${course.courseType }">
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<label class="form-label" for="courseName">과정명</label> <input id="courseName" name="courseName" class="form-control" type="text" value="${course.courseName }">
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<label class="form-label" for="courseTime">시간</label> <input id="courseTime" name="courseTime" class="form-control" type="text" readonly="readonly" value="${course.courseTime }">
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<label class="form-label" for="facId">작성자</label> <input id="facId" type="text" name="facId" class="form-control" readonly="readonly" value="${course.facId }" />
						</div>
					</div>
					<div class="col-md-6 col-12">
						<div class="mb-1">
							<label class="form-label" for="courseLimit">수강인원</label> <input id="courseLimit" name="courseLimit" class="form-control" type="text" value="${course.courseLimit }">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">교과목</h4>
				</div>

				<div id="subInCourseOut" class="row">
					<c:forEach var="subInCourse" items="${subInCourseList }">
						<div id="subInCourseIn" class="subInCourseIn col-md-12 col-12">
							<div class="row">
								<div class="col-md-7">
									<select id="subInCourseSelect" name="subCode" class="subCode form-control" value="" onchange="checkSub(this);">
										<option value="0">선택</option>
										<c:forEach var="subject" items="${subjectList }" varStatus="vs">
											<c:choose>
												<c:when test="${subject.subCode eq subInCourse.subCode }">
													<option selected="selected" value="${subject.subCode }">${subject.subName }</option>
												</c:when>
												<c:otherwise>
													<option value="${subject.subCode }">${subject.subName }</option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</select>
								</div>
								<div class="col-md-3">
									<input type="number" name="subTime" class="subTime form-control" value="${subInCourse.subTime }" onchange="calsum();">
								</div>
								<div class="col-md-1">
									<button type="button" id="minusSub" class="minusSub btn btn-icon btn-primary" onclick="removeSelect(this);"><i data-feather='x-square'></i></button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
<!-- 		<button type="button" class="btn btn-outline-danger" id="type-error">Error</button> -->
		<button type="button" id="addBtn" class="btn btn-primary waves-effect waves-float waves-light" onclick="cloneSelect();">추가</button>
<!-- 		<button type="button" class="btn btn-outline-primary waves-effect waves-float waves-light" id="confirm-text">완료</button> -->
		<button type="button" id="modifyBtn" class="btn btn-primary waves-effect waves-float waves-light" onclick="modify();">완료</button>
		<button type="button" id="cancelBtn" class="btn btn-primary waves-effect waves-float waves-light" onclick="CloseWindow();">취소</button>
	</form>
	<script>
// 	window.onload=function(){
//     $('#type-error').on('click', function () {
//         Swal.fire({
//           title: 'Error!',
//           text: ' You clicked the button!',
//           type: 'error',
//           confirmButtonClass: 'btn btn-primary',
//           buttonsStyling: !1
//         });
//       });

// 	$('#type-error1').on('click', function () {
// 	Swal.fire({
// 	    title: 'Error!',
// 	    text: '아아앙아ㅏ아아아아ㅏ아아',
// 	    type: 'error',
// 	    confirmButtonClass: 'btn btn-primary',
// 	    buttonsStyling: !1
// 	});
// };

// 	}
		function modify() {
			var formObj = $("form[role='form']");
			formObj.submit();
		}

/**
 *  교과목 변경시 : 시간0 변경, 선택안할시 readonly 설정
 */

		function checkSub(obj) {
			$(obj).parents("div#subInCourseIn").find("input[name='subTime']").val(0);
			if (obj.value == "0") {
				$(obj).parents("div#subInCourseIn").find(
						"input[name='subTime']").attr("readonly", true);
			} else {
				$(obj).parents("div#subInCourseIn").find(
						"input[name='subTime']").attr("readonly", false);

			}
			calsum();
		}
/**
 *  교과목 시간 합산 -> 과정 시간 반영
 */
		function calsum() {
			var sum = 0;
			$("input[name='subTime']").each(function(i) {
				sum = sum + parseInt($("input[name='subTime']").eq(i).val())
			});
			$("#courseTime").val(sum);
		}
/**
 *  교과목 삭제 버튼
 */
		function removeSelect(obj) {
			if($("input[name='subTime']").length > 1){
			$(obj).parents("div#subInCourseIn").remove();
			calsum();
			}
		}
/**
 *  교과목 추가버튼
 */
		function cloneSelect() {
			var clone = $('#subInCourseIn').clone();
			clone.find(".subTime").val("0").attr("readonly", true);
			clone.find("select[name=subCode]").val("0");
			clone.find("button").removeAttr("hidden");
			clone.appendTo("#subInCourseOut");
		}
	</script>
</body>