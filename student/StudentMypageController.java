package com.spring.controller.student;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.command.student.StudentModifyCommand;
import com.spring.command.student.StudentPwdCheckCommand;
import com.spring.dto.LoginUsersVO;
import com.spring.dto.MyCardVO;
import com.spring.dto.StudentVO;
import com.spring.service.myCard.MyCardService;
import com.spring.service.student.StudentService;
import com.spring.utils.MakeFileName;
import com.sun.java.swing.plaf.windows.resources.windows;

@Controller
@RequestMapping("/student/manage/mypage")
public class StudentMypageController {

	@Autowired
	private StudentService service;

	@Autowired
	private MyCardService myCardservice;

	@Resource(name = "studentImg")
	private String studentImg;

	@RequestMapping("/main")
	public ModelAndView main(HttpServletRequest request, ModelAndView mnv) throws SQLException {
		String url_success = "student/mypage/main";
		String url_fail = "student/mypage/main_fail";

		try {
			HttpSession session = request.getSession();
			LoginUsersVO loginUsers = (LoginUsersVO) session.getAttribute("loginUser");

			String usersId = loginUsers.getUsersId();
			StudentVO student = service.getStudent(usersId);
			MyCardVO ingCourse = myCardservice.getIngCourse(usersId);

			mnv.addObject("student", student);
			mnv.addObject("ingCourse", ingCourse);
			mnv.setViewName(url_success);

		} catch (Exception e) {
			mnv.setViewName(url_fail);
		}



		return mnv;
	}


	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(StudentModifyCommand modifyReq,HttpSession session,Model model) throws Exception {
		String url="student/mypage/modify_success";

		StudentVO student = modifyReq.toStudentVO();

		// 신규 파일 변경 및 기존 파일 삭제
		String fileName = savePicture(modifyReq.getOldPicture(), modifyReq.getStuProfileImg());
		student.setStuProfileImg(fileName);


		//파일변경 없을시 기존 파일명 유지
		if (modifyReq.getStuProfileImg().isEmpty()) {
			student.setStuProfileImg(modifyReq.getOldPicture());
		}

		service.modifyStuStudent(student);

		service.modifyWebStudent(student);

		// 로그인한 사용자의 경우 수정된 정보로 session 업로드
		LoginUsersVO loginUser_old = (LoginUsersVO) session.getAttribute("loginUser");

		service.modifyUserStudent(student);

		LoginUsersVO loginUser_new = modifyReq.toUsersVO();

		if (loginUser_old != null && student.getUsersId().equals(loginUser_old.getUsersId())) {
			session.setAttribute("loginUser", loginUser_new);
		}

		model.addAttribute("student", service.getStudent(modifyReq.getUsersId()));

		return url;

	}

	private String savePicture(String oldPicture, MultipartFile multi) throws Exception {
		String fileName = null;

		/* 파일유무확인 */
		if (!(multi == null || multi.isEmpty() || multi.getSize() > 1024 * 1024 * 5)) {

			/* 파일저장폴더설정 */
			String uploadPath = studentImg;
			fileName = MakeFileName.toUUIDFileName(multi.getOriginalFilename(), "$$");
			File storeFile = new File(uploadPath, fileName);

			storeFile.mkdirs();

			// local HDD 에 저장.
			multi.transferTo(storeFile);

			if (oldPicture !=null && !oldPicture.isEmpty()) {
				File oldFile = new File(uploadPath, oldPicture);
				if (oldFile.exists()) {
					oldFile.delete();
				}
			}

		}

		return fileName;
	}

	@RequestMapping("/checkForm")
	public String checkForm(String id, Model model) throws Exception {
		String url = "student/mypage/check";

		StudentVO student = service.getStudent(id);

		model.addAttribute("student",student);

		return url;
	}

	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public String check(StudentPwdCheckCommand checkReq, HttpSession session, Model model ) throws Exception {
		String url_success = "student/mypage/check_success";
		String url_fail = "student/mypage/check_fail";

		LoginUsersVO users = checkReq.toPwdCheck();

		String usersId = users.getUsersId();
		String checkPwd = users.getUsersPwd();
		StudentVO student = service.getStudent(usersId);
		String usersPwd = student.getUsersPwd();

		model.addAttribute("student", student);

		if(checkPwd.equals(usersPwd)) {
			return url_success;
		} else {
			return url_fail;
		}

	}
	@RequestMapping(value = "/modifyForm", method = RequestMethod.GET)
	public String modifyForm(String id, Model model) throws Exception {
		String url = "student/mypage/modify";

		StudentVO student = service.getStudent(id);
		model.addAttribute("student", student);

		return url;
	}

	@RequestMapping(value = "/getPicture", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String picture) throws Exception {
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		String imgPath = this.studentImg;
		try {

			in = new FileInputStream(new File(imgPath, picture));

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.CREATED);
		} catch (IOException e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.INTERNAL_SERVER_ERROR);
		} finally {
			in.close();
		}
		return entity;
	}
	
	@RequestMapping(value = "/getPictureById/{id}",method=RequestMethod.GET, produces = "text/plain;charset=utf-8")
	@ResponseBody
	public ResponseEntity<byte[]> getPictureById(@PathVariable("id") String id) throws Exception {
		ResponseEntity<byte[]> entity = null;
		
		String picture = service.getStudent(id).getStuProfileImg();
		entity = getPicture(picture);		
		
		return entity;		
	}

}
