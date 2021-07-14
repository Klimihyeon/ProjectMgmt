package com.spring.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
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
	public ModelAndView home(Locale locale, ModelAndView mnv)throws SQLException {
		String url="/list";
		
		Map<String,Object> dataMap = service.getICourseList();
		
		mnv.addObject("dataMap", dataMap);
		System.out.println(dataMap);
		mnv.addObject("url", url);
		return mnv;
	}
	
	@RequestMapping(value="/regist", method =RequestMethod.POST)
	public String regist(ICourseRegistCommand regReq)throws Exception{
		String url="/regist_success";
		System.out.println("regReq");
		System.out.println(regReq);
		
		ICourseVO iCourseVO = regReq.toiCourseVO();
		service.regist(iCourseVO); 

		return url;
	}
	
	@RequestMapping(value="/modify",method=RequestMethod.POST)
 	public Map<String, String> modifyPost(ICourseRegistCommand modifyReq,HttpServletRequest request) throws Exception{
		
		String url = "/modify_success";
		ICourseVO iCourseVO = modifyReq.toiCourseVO();				
		
		service.modify(iCourseVO);
		Map<String, String> map = new HashMap<String, String>();
		map.put("result","ok");
		
		return map;
	}
	
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	public String remove(@RequestParam String icc) throws Exception{
		String url = "/remove_success";
		service.remove(icc);		
		return url;		
	}
	
	
}
