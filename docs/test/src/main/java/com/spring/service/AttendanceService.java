package com.spring.service;

import java.sql.SQLException;

import com.spring.dto.AttendanceVO;

public interface AttendanceService {

	public AttendanceVO getInfoById(String id) throws SQLException;
}
