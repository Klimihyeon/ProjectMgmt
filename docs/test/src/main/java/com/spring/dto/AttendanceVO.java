package com.spring.dto;

import java.util.Date;

public class AttendanceVO {
	//attd check table
	private Date attdDate;
	private Date attdIntime;
	private Date attdOuttime;
	private String attdType;
	private String attdIcon;
	private String ingCourseCode;	
	
	//students table
	private String studentId;
	private String stuProfileImg;
	private String stuStatus;
	
	//ing_course table
	private String ingCourseName;
	
	//webMember Table
	private String name;

	public Date getAttdDate() {
		return attdDate;
	}

	public void setAttdDate(Date attdDate) {
		this.attdDate = attdDate;
	}

	public Date getAttdIntime() {
		return attdIntime;
	}

	public void setAttdIntime(Date attdIntime) {
		this.attdIntime = attdIntime;
	}

	public Date getAttdOuttime() {
		return attdOuttime;
	}

	public void setAttdOuttime(Date attdOuttime) {
		this.attdOuttime = attdOuttime;
	}

	public String getAttdType() {
		return attdType;
	}

	public void setAttdType(String attdType) {
		this.attdType = attdType;
	}

	public String getAttdIcon() {
		return attdIcon;
	}

	public void setAttdIcon(String attdIcon) {
		this.attdIcon = attdIcon;
	}

	public String getIngCourseCode() {
		return ingCourseCode;
	}

	public void setIngCourseCode(String ingCourseCode) {
		this.ingCourseCode = ingCourseCode;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStuProfileImg() {
		return stuProfileImg;
	}

	public void setStuProfileImg(String stuProfileImg) {
		this.stuProfileImg = stuProfileImg;
	}

	public String getStuStatus() {
		return stuStatus;
	}

	public void setStuStatus(String stuStatus) {
		this.stuStatus = stuStatus;
	}

	public String getIngCourseName() {
		return ingCourseName;
	}

	public void setIngCourseName(String ingCourseName) {
		this.ingCourseName = ingCourseName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "AttendanceVO [attdDate=" + attdDate + ", attdIntime=" + attdIntime + ", attdOuttime=" + attdOuttime
				+ ", attdType=" + attdType + ", attdIcon=" + attdIcon + ", ingCourseCode=" + ingCourseCode
				+ ", studentId=" + studentId + ", stuProfileImg=" + stuProfileImg + ", stuStatus=" + stuStatus
				+ ", ingCourseName=" + ingCourseName + ", name=" + name + "]";
	}

	
}
