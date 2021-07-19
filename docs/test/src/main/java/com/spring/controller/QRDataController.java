package com.spring.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spring.commandVO.QRSaveCommand;
import com.spring.dto.AttendanceVO;
import com.spring.service.AttendanceService;

@RestController
@RequestMapping("/qrcheck")
public class QRDataController {
	
	@Autowired
	private AttendanceService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home() {
		String url = "/main";
		
		return url;
	}
	
	@RequestMapping(value="/attd")
	@ResponseBody
	public Map<String, Object> save(QRSaveCommand qrReq) throws SQLException {	
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(qrReq);
		AttendanceVO aVO = qrReq.toAttendanceVO();
		System.out.println("stid>>>>>>>>>>>>");
		System.out.println(aVO.getStudentId());
		aVO = service.getInfoById(aVO.getStudentId());
		
		map.put("info", aVO);
		
		return map;
	}
	
	
}
