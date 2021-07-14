package com.spring.lms.iCourse;

import java.sql.SQLException;
import java.util.List;

public interface ICourseDAO {
	
	public List<ICourseVO> selectiCourseList() throws SQLException;

	public void insertiCourse(ICourseVO icvo) throws SQLException;
	
	public int selectiCourseSeqNext() throws SQLException;
	
	public void deleteiCourse(String icc)throws SQLException;
	
	public void updateiCourse(ICourseVO icvo) throws SQLException;
	
	
}
