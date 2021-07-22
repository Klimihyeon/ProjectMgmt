package com.spring.controller.student;

import java.io.File;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.MenuVO;
import com.spring.dto.SubInIngCourseVO;
import com.spring.service.menu.MenuService;
import com.spring.service.subiningcourse.SubInIngCourseService;

@Controller
@RequestMapping("/student")
public class StudentCommonController {

    @Autowired
    private MenuService menuService;
    
	@Autowired
	private SubInIngCourseService subInIngCourseService;


    @RequestMapping(value= {"/manage/index"})
    public ModelAndView indexPage(ModelAndView mnv,
            @RequestParam(defaultValue="M000000")String menuCode,
            HttpServletRequest request, HttpServletResponse response)
                    throws Exception{
        String url = "student/indexPage";

        try {
            List<MenuVO> menuList = menuService.getStudentMainMenuList();
            MenuVO menu = menuService.getStudentMenuByMcode(menuCode);

            mnv.addObject("menuList",menuList);
            mnv.addObject("menu",menu);
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }

        mnv.setViewName(url);
        return mnv;
    }

    @RequestMapping(value="/manage/main", method=RequestMethod.GET)
    public String main() {
    	String url ="student/main";
		return url;
    }


    @RequestMapping("/manage/list")
    public String list() {
        String url="student/list";
        return url;
    }

	/*
	 *  메뉴 관련
	 */


	@RequestMapping("/getMcode")
	@ResponseBody
	public ResponseEntity<MenuVO> getMcode(String menuName)throws Exception{

		ResponseEntity<MenuVO> entity = null;
		try {
				MenuVO menu = menuService.getStudentMenuByMname(menuName);

				entity = new ResponseEntity<MenuVO>(menu, HttpStatus.OK) ;
		}catch(SQLException e) {
				entity = new ResponseEntity<MenuVO>(HttpStatus.INTERNAL_SERVER_ERROR) ;
		}
		return entity;
	}

    @RequestMapping(value="/manage/subMenu")
    @ResponseBody
    public ResponseEntity<List<MenuVO>> subMenu(String menuCode)throws Exception{
        ResponseEntity<List<MenuVO>> entity = null;

        try {
                List<MenuVO> menuList = menuService.getStudentSubMenuList(menuCode);

                entity = new ResponseEntity<List<MenuVO>>(menuList, HttpStatus.OK) ;
        }catch(SQLException e) {
                entity = new ResponseEntity<List<MenuVO>>(HttpStatus.INTERNAL_SERVER_ERROR) ;
        }
        return entity;
    }

	//Fullcalendar
	@RequestMapping(value ="manage/event", method =RequestMethod.POST)
	@ResponseBody
	public List<SubInIngCourseVO> eventSender(@RequestBody Map<String,Object> param)throws SQLException{
		String studentId= (String) param.get("id");
		String ingCourseCode = subInIngCourseService.getIngCourseCodeById(studentId);
		List<SubInIngCourseVO> subInIngCourseList = subInIngCourseService.getSubInIngCourse(ingCourseCode);

		System.out.println(subInIngCourseList);
		return subInIngCourseList;
	}
	
	//QRMaker
	@RequestMapping("manage/createCode.do")
    public ModelAndView createCode(@RequestParam String content){
           return new ModelAndView("qrcodeview", "content", content);
    }
    
    
    
    
    
    
    
    
    
}
