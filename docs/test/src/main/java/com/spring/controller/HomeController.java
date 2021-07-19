package com.spring.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.lms.iCourse.ICourseRegistCommand;
import com.spring.lms.iCourse.ICourseService;
import com.spring.lms.iCourse.ICourseVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private ICourseService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void home(Locale locale, ModelAndView mnv)throws SQLException {
		
	}
	
	
	@RequestMapping(value = "/indexOpen", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView open(Locale locale, ModelAndView mnv)throws SQLException {
		String url = "/card-advance";		
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping(value ="/event", method =RequestMethod.POST)
	@ResponseBody
	public List<ICourseVO> eventSender()throws SQLException{
		List<ICourseVO> iCourseList = service.getICourseList();
		
		System.out.println(iCourseList);
		return iCourseList;
	}
	
	@RequestMapping(value = "/qr", method = RequestMethod.GET)
	public ModelAndView qrOpen(Locale locale, ModelAndView mnv)throws SQLException {
		String url="/qr_open";
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping(value="/regist", method =RequestMethod.POST)
	public Map<String, Object> regist(ICourseRegistCommand regReq)throws Exception{
		ICourseVO iCourseVO = regReq.toiCourseVO();
		service.regist(iCourseVO); 

		Map<String, Object> result = new HashMap<String, Object>();
		result.put("resultData", "success");
		return  result;
	}
	
	@RequestMapping(value="/modify",method=RequestMethod.POST) 
	@ResponseBody
 	public Map<String, Object> modifyPost(ICourseRegistCommand modifyReq, ModelAndView mnv) throws Exception{
		ICourseVO iCourseVO = modifyReq.toiCourseVO();				
		service.modify(iCourseVO);
		 
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("resultData", "success");
		return  result;
	}
	
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> remove(@RequestParam("eventId") String icc) throws Exception{
		service.remove(icc);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("resultData", "success");
		return result;
		
		
	}
	
	
}
