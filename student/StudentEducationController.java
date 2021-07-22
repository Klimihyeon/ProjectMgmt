package com.spring.controller.student;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.IngCourseVO;
import com.spring.dto.LoginUsersVO;
import com.spring.dto.SubInIngCourseVO;
import com.spring.service.ingCourse.IngCourseService;
import com.spring.service.subiningcourse.SubInIngCourseService;

@Controller
@RequestMapping("/student/manage/education")
public class StudentEducationController {
	
	@Autowired 
	private IngCourseService ingCourseService;
	
	@Autowired
	private SubInIngCourseService subInIngCourseService;
	
	 @RequestMapping(value= "/classtime/main", method=RequestMethod.GET)
	    public ModelAndView indexPage(ModelAndView mnv, HttpServletRequest request) throws Exception{
	        String url = "student/education/classtime/main";
	        
	        HttpSession session = request.getSession();
			LoginUsersVO studentId = (LoginUsersVO) session.getAttribute("loginUser");
			
			String ingCourseCode = subInIngCourseService.getIngCourseCodeById(studentId.getUsersId());
			List<SubInIngCourseVO> subInIngCourseList = subInIngCourseService.getSubInIngCourse(ingCourseCode);
	        
			List<IngCourseVO> ingCourseList = ingCourseService.getIngCourseListById(studentId.getUsersId());

			mnv.addObject("subInIngCourseList",subInIngCourseList);
			mnv.addObject("ingCourseList", ingCourseList);
	        mnv.setViewName(url);
	        return mnv;
	    }
	
		//Fullcalendar
		@RequestMapping(value ="classtime/event", method =RequestMethod.POST)
		@ResponseBody
		public List<SubInIngCourseVO> eventSender(@RequestBody Map<String,Object> param)throws SQLException{
			String studentId= (String) param.get("id");
			String ingCourseCode = subInIngCourseService.getIngCourseCodeById(studentId);
			List<SubInIngCourseVO> subInIngCourseList = subInIngCourseService.getSubInIngCourse(ingCourseCode);

			System.out.println(subInIngCourseList);
			return subInIngCourseList;
		}
}
