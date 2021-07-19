package com.spring.dao;

import java.sql.SQLException;

import com.spring.dto.AttendanceVO;

public interface AttendanceDAO {
	
	public AttendanceVO selectMemberByQR(String id)throws SQLException;
	
}
