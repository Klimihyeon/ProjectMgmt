package com.spring.lms.iCourse;

import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ICourseServcieImpl implements ICourseService{
	
	private ICourseDAO iCourseDAO;
	public void setICourseDAO(ICourseDAO iCourseDAO) {
		this.iCourseDAO=iCourseDAO;
	}
	
	
	@Override
	public List<ICourseVO> getICourseList() throws SQLException {
		
//		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<ICourseVO> iCourseList = iCourseDAO.selectiCourseList();
//		System.out.println(iCourseList);
//		dataMap.put("iCourseList", iCourseList);
		
		return iCourseList;
	}

	@Override
	public ICourseVO getICourse(String icc) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void regist(ICourseVO icvo) throws SQLException {
		int icc = iCourseDAO.selectiCourseSeqNext();
		icvo.setIngCourseCode("c000"+icc);
		iCourseDAO.insertiCourse(icvo);
	}


	@Override
	public void modify(ICourseVO icvo) throws SQLException {
		iCourseDAO.updateiCourse(icvo);
	}

	@Override
	public void remove(String icc) throws SQLException {
		iCourseDAO.deleteiCourse(icc);
	}

}
