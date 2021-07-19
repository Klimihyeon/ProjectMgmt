package com.spring.commandVO;

import com.spring.dto.AttendanceVO;

public class QRSaveCommand {
	
	private String data;

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		return "QRSaveCommand [data=" + data + "]";
	}

	public AttendanceVO toAttendanceVO() {
		AttendanceVO aVO = new AttendanceVO();
		aVO.setStudentId(data);
		
		return aVO;
	}

}
