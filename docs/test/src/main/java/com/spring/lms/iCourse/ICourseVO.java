package com.spring.lms.iCourse;

import java.util.Date;

public class ICourseVO {
	private String ingCourseCode;
	private String courseCode;
	private Date ingCourseBeginDate;
	private Date ingCourseEndDate;
	private String roomCode;
	private String ingCourseCount;
	private String ingCourseYn;
	private String facId;
	private Date ingCourseRegdate;
	private String courseName;
	private String facName;
	
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getFacName() {
		return facName;
	}
	public void setFacName(String facName) {
		this.facName = facName;
	}
	public String getIngCourseCode() {
		return ingCourseCode;
	}
	public void setIngCourseCode(String ingCourseCode) {
		this.ingCourseCode = ingCourseCode;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public Date getIngCourseBeginDate() {
		return ingCourseBeginDate;
	}
	public void setIngCourseBeginDate(Date ingCourseBeginDate) {
		this.ingCourseBeginDate = ingCourseBeginDate;
	}
	public Date getIngCourseEndDate() {
		return ingCourseEndDate;
	}
	public void setIngCourseEndDate(Date ingCourseEndDate) {
		this.ingCourseEndDate = ingCourseEndDate;
	}
	public String getRoomCode() {
		return roomCode;
	}
	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
	}
	public String getIngCourseCount() {
		return ingCourseCount;
	}
	public void setIngCourseCount(String ingCourseCount) {
		this.ingCourseCount = ingCourseCount;
	}
	public String getIngCourseYn() {
		return ingCourseYn;
	}
	public void setIngCourseYn(String ingCourseYn) {
		this.ingCourseYn = ingCourseYn;
	}
	public String getFacId() {
		return facId;
	}
	public void setFacId(String facId) {
		this.facId = facId;
	}
	public Date getIngCourseRegdate() {
		return ingCourseRegdate;
	}
	public void setIngCourseRegdate(Date ingCourseRegdate) {
		this.ingCourseRegdate = ingCourseRegdate;
	}
	@Override
	public String toString() {
		return "iCourseVO [ingCourseCode=" + ingCourseCode + ", courseCode=" + courseCode + ", ingCourseBeginDate="
				+ ingCourseBeginDate + ", ingCourseEndDate=" + ingCourseEndDate + ", roomCode=" + roomCode
				+ ", ingCourseCount=" + ingCourseCount + ", ingCourseYn=" + ingCourseYn + ", facId=" + facId
				+ ", ingCourseRegdate=" + ingCourseRegdate + ", courseName=" + courseName + ", facName=" + facName
				+ "]";
	}
	
	
	
	
}
