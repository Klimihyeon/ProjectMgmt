package com.spring.lms.iCourse;

import java.sql.SQLException;
import java.util.Map;

public interface ICourseService {

	public Map<String, Object> getICourseList()throws SQLException;
	public ICourseVO  getICourse(String icc)throws SQLException;
	public void regist(ICourseVO icvo)throws SQLException;
	public void modify(ICourseVO icvo)throws SQLException;
	public void remove(String icc)throws SQLException;
	
	
}
