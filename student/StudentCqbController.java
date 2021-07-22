package com.spring.controller.student;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.command.cqb.CqbBoardModifyCommand;
import com.spring.command.cqb.CqbBoardRegistCommand;
import com.spring.command.pagemaker.SearchCriteria;
import com.spring.dto.CqbAttachVO;
import com.spring.dto.CqbBoardVO;
import com.spring.dto.LoginUsersVO;
import com.spring.dto.MyCardVO;
import com.spring.dto.StudentVO;
import com.spring.service.cqbBoard.CqbBoardService;
import com.spring.service.ingCourse.IngCourseService;
import com.spring.service.ingCourse.IngCourseServiceImpl;
import com.spring.service.myCard.MyCardService;
import com.spring.service.student.StudentService;
import com.spring.utils.GetCqbAttachesAsMultipartFiles;

@Controller
@RequestMapping("/student/manage/board/qna")
public class StudentCqbController {
	
	@Autowired
	private CqbBoardService service;
	
	@Autowired
	private MyCardService myCardService;
	
	@Resource(name = "cqbFileUploadPath")
	private String cqbFileUploadPath;

	@RequestMapping("/list")
	public ModelAndView list(SearchCriteria cri, ModelAndView mnv) throws Exception {
		String url = "student/board/cqb/list";

		Map<String, Object> dataMap = service.getCqbBoardList(cri);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);

		return mnv;
	}

	@RequestMapping("/registForm")
	public ModelAndView registForm(ModelAndView mnv, HttpServletRequest request) throws Exception {
		String url = "student/board/cqb/regist";

		HttpSession session = request.getSession();
		LoginUsersVO loginUsers = (LoginUsersVO) session.getAttribute("loginUser");
		String usersId = loginUsers.getUsersId();
		MyCardVO myCard = myCardService.getIngCourse(usersId); 
		
		mnv.addObject("myCard", myCard);
		mnv.setViewName(url);
		return mnv;
	}

	@RequestMapping(value="/regist", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String regist(CqbBoardRegistCommand registReq, Model model, HttpServletRequest request) throws Exception {
		String url = "student/board/cqb/regist_success";

		CqbBoardVO cqbBoard = registReq.toCqbBoardVO();
		
		List<CqbAttachVO> cqbAttachList = GetCqbAttachesAsMultipartFiles.save(registReq.getUploadFile(), cqbFileUploadPath);
		cqbBoard.setCqbTitle((String)request.getAttribute("XSScqbTitle"));
		cqbBoard.setCqbAttachList(cqbAttachList);

		service.regist(cqbBoard);

		return url;
	}

	@RequestMapping("/detail")
	public ModelAndView detail(ModelAndView mnv, String cqbNo, HttpServletRequest request, String from) throws Exception {
		String url = "student/board/cqb/detail";
		
		CqbBoardVO cqbBoard = null;
		
		if(from != null && from.equals("modify")) {
			cqbBoard = service.getCqbBoard(cqbNo);
		} else {
			cqbBoard = service.read(cqbNo);
		}

		// 파일명 재정의
		List<CqbAttachVO> cqbAttachList = cqbBoard.getCqbAttachList();
		if(cqbAttachList != null) {
			for (CqbAttachVO cqbAttach : cqbAttachList) {
				String fileName = cqbAttach.getFileName().split("\\$\\$")[1];
				cqbAttach.setFileName(fileName);
			}
		}
		
		mnv.addObject("cqbBoard", cqbBoard );
		mnv.setViewName(url);

		return mnv;
	}

	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(ModelAndView mnv, String cqbNo) throws Exception {
		String url = "student/board/cqb/modify";

		CqbBoardVO cqbBoard = service.getCqbBoard(cqbNo);

		// 파일명 재정의
		List<CqbAttachVO> cqbAttachList = cqbBoard.getCqbAttachList();
		if(cqbAttachList != null) {
			for (CqbAttachVO cqbAttach : cqbAttachList) {
				String fileName = cqbAttach.getFileName().split("\\$\\$")[1];
				cqbAttach.setFileName(fileName);
			}
		}

		mnv.addObject("cqbBoard", cqbBoard);
		mnv.setViewName(url);

		return mnv;
	}
	
	@RequestMapping("/modify")
	public String modifyPOST(CqbBoardModifyCommand modifyReq, Model model, HttpServletRequest request) throws Exception {
		String url = "student/board/cqb/modify_success";		

		// 삭제된 파일 삭제
		if (modifyReq.getDeleteFile() != null && modifyReq.getDeleteFile().length > 0) {
			for (String cqbAno : modifyReq.getDeleteFile()) {
				String fileName = service.getAttachByCqbAno(cqbAno).getFileName();
				File deleteFile = new File(cqbFileUploadPath, fileName);
				service.removeAttachByCqbAno(cqbAno);; // DB 삭제
				if (deleteFile.exists()) {
					deleteFile.delete(); // File 삭제
				}
			}
		}
		
		// 추가 혹은 변경된 파일 저장
		List<CqbAttachVO> cqbAttachList = GetCqbAttachesAsMultipartFiles.save(modifyReq.getUploadFile(),cqbFileUploadPath);
		
	
		// CqbVO settting
		CqbBoardVO cqbBoard = modifyReq.toCqbBoardVO();
		
		cqbBoard.setCqbAttachList(cqbAttachList);
		cqbBoard.setCqbTitle((String)request.getAttribute("XSScqbTitle"));

		// DB에 해당 데이터 추가
		service.modify(cqbBoard);
		
		model.addAttribute("cqbBoard",cqbBoard);
		
		return url;
		
	}
	
	@RequestMapping("/remove")
	public String remove(String cqbNo) throws Exception {

		String url="student/board/cqb/remove_success";
		
		//첨부파일 삭제
		List<CqbAttachVO> cqbAttachList = service.getCqbBoard(cqbNo).getCqbAttachList();
		if (cqbAttachList != null) {
			for (CqbAttachVO cqbAttach : cqbAttachList) {
				File target = new File(cqbAttach.getUploadPath(), cqbAttach.getFileName());
				if (target.exists()) {
					target.delete();
				}
			}
		}
		
		//DB삭제
		service.remove(cqbNo);

		return url;

	}
	
	@RequestMapping("/getFile")
	public String getFile(String cqbAno,Model model) throws Exception {
		String url="downloadFile";
		
		CqbAttachVO cqbAttach = service.getAttachByCqbAno(cqbAno);
		
		model.addAttribute("savedPath", cqbAttach.getUploadPath());
		model.addAttribute("fileName", cqbAttach.getFileName());
		
		return url;		
	}
	
	
}
