package com.spring.lms.iCourse;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class ICourseDAOImpl implements ICourseDAO{
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	
	
	@Override
	public List<ICourseVO> selectiCourseList() throws SQLException {
		List<ICourseVO> iCourseList = session.selectList("iCourse-Mapper.selectICourse");
		return iCourseList;
	}


	@Override
	public void insertiCourse(ICourseVO icvo) throws SQLException {
		session.update("iCourse-Mapper.insertiCourse", icvo);
	}


	@Override
	public void deleteiCourse(String icc) throws SQLException {
		session.update("iCourse-Mapper.deleteiCourse", icc);
		
	}


	@Override
	public void updateiCourse(ICourseVO icvo) throws SQLException {
		System.out.println(">>>>>>>>>>"+icvo);
		session.update("iCourse-Mapper.updateiCourse", icvo);
		
	}

	@Override
	public int selectiCourseSeqNext() throws SQLException {
		int ingCourseCode = session.selectOne("iCourse-Mapper.selectiCourseSeqNext");
		return ingCourseCode;
	}

	
	
}
