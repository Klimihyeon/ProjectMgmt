package com.spring.lms.iCourse;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


public class ICourseRegistCommand {
	private String title;
	private String start;
	private String end;
	private String ingCourseCount = "1";
	private String courseCode = "COU00001";
	private String roomCode = "ROM001";
	private String ingCourseYn = "1";
	private String facId = "testfa"; 
	private String ingCourseRegdate = "1";
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getIngCourseCount() {
		return ingCourseCount;
	}

	public void setIngCourseCount(String ingCourseCount) {
		this.ingCourseCount = ingCourseCount;
	}

	public String getCourseCode() {
		return courseCode;
	}

	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}

	public String getRoomCode() {
		return roomCode;
	}

	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
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

	public String getIngCourseRegdate() {
		return ingCourseRegdate;
	}

	public void setIngCourseRegdate(String ingCourseRegdate) {
		this.ingCourseRegdate = ingCourseRegdate;
	}



	@Override
	public String toString() {
		return "ICourseRegistCommand [title=" + title + ", start=" + start + ", end=" + end + ", ingCourseCount="
				+ ingCourseCount + ", courseCode=" + courseCode + ", roomCode=" + roomCode + ", ingCourseYn="
				+ ingCourseYn + ", facId=" + facId + ", ingCourseRegdate=" + ingCourseRegdate + ", id=" + id + "]";
	}

	public ICourseVO toiCourseVO() throws ParseException {
		ICourseVO icvo = new ICourseVO();

		String form = null;
		Date start2 = null;
		Date end2 = null;

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		form = this.start;
		System.out.println("start"+start);
		start2 = transFormat.parse(form);
		System.out.println("start2222222");
		System.out.println(start2);
		
		form = this.end;
		System.out.println("end"+end);
		end2 = transFormat.parse(form); 
		System.out.println("end22222222");
		System.out.println(end2);

		icvo.setIngCourseCode(id);
		icvo.setCourseName(title);
		icvo.setIngCourseBeginDate(start2);
		icvo.setIngCourseEndDate(end2);
		icvo.setIngCourseCount(ingCourseCount);
		icvo.setFacId(facId);
		icvo.setIngCourseYn(ingCourseYn);
		icvo.setCourseCode(courseCode);
		icvo.setRoomCode(roomCode);
		return icvo;
	}

}
