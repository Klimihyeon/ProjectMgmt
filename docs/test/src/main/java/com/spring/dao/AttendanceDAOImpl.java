package com.spring.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.AttendanceVO;

public class AttendanceDAOImpl implements AttendanceDAO{
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	
	@Override
	public AttendanceVO selectMemberByQR(String id) throws SQLException {
		AttendanceVO aVO = session.selectOne("Attendance-Mapper.selectMemberByQR",id);
		
		return aVO;
	}

}
