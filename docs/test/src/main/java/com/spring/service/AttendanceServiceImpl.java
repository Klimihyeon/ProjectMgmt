package com.spring.service;

import java.sql.SQLException;

import com.spring.dao.AttendanceDAO;
import com.spring.dto.AttendanceVO;

public class AttendanceServiceImpl implements AttendanceService{
	
	private AttendanceDAO attdDAO;
	public void setAttendanceDAO(AttendanceDAO attdDAO) {
		this.attdDAO = attdDAO;
	}
	@Override
	public AttendanceVO getInfoById(String id) throws SQLException {
		AttendanceVO aVO = attdDAO.selectMemberByQR(id);
		return aVO;
	}
	
	
}
