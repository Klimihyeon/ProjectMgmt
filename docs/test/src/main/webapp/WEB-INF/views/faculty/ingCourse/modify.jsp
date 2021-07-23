<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="subInCourse" value="${subInCourseList }" />

<title>교육과정 수정</title>

<body>
	<form action="modify.do" method="post" role="form">
	<input name="courseCode" id="courseCode" hidden="" value="${course.courseCode }">
		사업분류 : <input id="courseType" name="courseType" type="text" value="${course.courseType }"><br>
		과정명 : <input id="courseName" name="courseName" type="text" value="${course.courseName }"><br>
		시간 : <input id="courseTime" name="courseTime" type="text" readonly="readonly" value="${course.courseTime }"><br>
		작성자 : <input id="facId" type="text" name="facId" readonly="readonly" value="${course.facId }" /><br>
		수강인원 : <input id="courseLimit" name="courseLimit" type="text" value="${course.courseLimit }"><br>
		교과목
		<div id="subInCourseOut">
			<c:forEach var="subInCourse" items="${subInCourseList }">
				<div id="subInCourseIn" class="subInCourseIn">
					<select id="subInCourseSelect" name="subCode" class="subCode" value="" onchange="checkSub(this);">
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
					<input type="number" name="subTime" class="subTime" value="${subInCourse.subTime }" onchange="calsum();">
					<button type="button" id="minusSub" class="minusSub" onclick="removeSelect(this);">X</button>
				</div>
			</c:forEach>
		</div>
		<input type="button" value="TMP" onclick="cloneSelect();">
		<button type="button" id="modifyBtn" onclick="modify();">완료</button>
		<button type="button" id="cancelBtn" onclick="CloseWindow();">취소</button>
	</form>
	<script>
		function modify() {
			var formObj = $("form[role='form']");
			formObj.submit();
		}

		function checkSub(obj) {
			if (obj.value == "0") {
				$(obj).next().val(0);
				calsum();
				$(obj).next().attr("readonly", true);
			} else {
				$(obj).next().attr("readonly", false);
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
			$(obj).parent().remove();
			calsum();

		}

		function cloneSelect() {
			var clone = $('#subInCourseIn').clone();
			clone.children(".subTime").val("0").attr("readonly", true);
			clone.children("select[name=subCode]").val("0");
			clone.children("button").removeAttr("hidden");
			clone.appendTo("#subInCourseOut");
		}
	</script>
</body>