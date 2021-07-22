package com.spring.controller.student;

import java.io.File;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.command.resume.ResumeModifyCommand;
import com.spring.command.resume.ResumeModifyCommand3;
import com.spring.command.resume.ResumeRegistCommand;
import com.spring.command.subStdBoard.SubStdBoardModifyCommand;
import com.spring.command.subStdBoard.SubStdBoardRegistCommand;
import com.spring.dto.AttachVO;
import com.spring.dto.CareerVO;
import com.spring.dto.CertificationVO;
import com.spring.dto.EducationVO;
import com.spring.dto.LoginUsersVO;
import com.spring.dto.ResAttachVO;
import com.spring.dto.ResumeVO;
import com.spring.dto.SsbAttachVO;
import com.spring.dto.StudentVO;
import com.spring.dto.SubStdBoardVO;
import com.spring.dto.UsersVO;
import com.spring.excel.MakeExcel;
import com.spring.service.career.CareerService;
import com.spring.service.certification.CertificationService;
import com.spring.service.education.EducationService;
import com.spring.service.resume.ResumeService;
import com.spring.service.student.StudentService;
import com.spring.service.users.UsersService;
import com.spring.utils.GetResAttachesAsMultipartFiles;
import com.spring.utils.GetSsbAttachesAsMultipartFiles;

@Controller
@RequestMapping("/student/manage/mypage/resume")
public class StudentResumeController {
	
	@Autowired
	private ResumeService resumeService;
	
	@Autowired
	private EducationService educationService;
	
	@Autowired
	private CareerService careerService;
	
	@Autowired
	private CertificationService certificationService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private UsersService usersService;
	
	@Resource(name = "portfolioInfo")
	private String portfolioInfo;
	
	@RequestMapping("/list")
	public ModelAndView list(HttpServletRequest request, ModelAndView mnv) throws SQLException {
		String url = "student/mypage/resume/list";
		
		HttpSession session = request.getSession();
		LoginUsersVO loginUsers = (LoginUsersVO) session.getAttribute("loginUser");

		String usersId = loginUsers.getUsersId();
		List<ResumeVO> resumeList = resumeService.getResumeList(usersId);

		mnv.addObject("resumeList", resumeList);
		mnv.setViewName(url);
		
		return mnv;
	}
	@RequestMapping("/detail")
	public ModelAndView detail(HttpServletRequest request, ModelAndView mnv, String resumeCode, String from) throws Exception {
		String url="student/mypage/resume/detail";
		
		HttpSession session = request.getSession();
		LoginUsersVO loginUsers = (LoginUsersVO) session.getAttribute("loginUser");

		String usersId = loginUsers.getUsersId();
		StudentVO student = studentService.getStudent(usersId);
		ResumeVO resume = resumeService.getResume(resumeCode);
		List<EducationVO> educationList = educationService.getEducationList(resumeCode);
		List<CareerVO> careerList = careerService.getCareerList(resumeCode);
		List<CertificationVO> certificationList = certificationService.getCertificationList(resumeCode);
				
		// 파일명 재정의
		List<ResAttachVO> resAttachList = resume.getResAttachList();
		if(resAttachList != null) {
			for (ResAttachVO resAttach : resAttachList) {
				String fileName = resAttach.getFileName().split("\\$\\$")[1];
				resAttach.setFileName(fileName);
			}
		}
		
		mnv.addObject("resume", resume);
		mnv.addObject("educationList",educationList);
		mnv.addObject("careerList",careerList);
		mnv.addObject("certificationList",certificationList);
		mnv.addObject("student", student);
		
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping(value="/regist", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String regist(ResumeRegistCommand registReq, Model model, HttpServletRequest request) throws Exception {
		String url = "student/mypage/resume/regist_success";

		ResumeVO resume = registReq.toResumeVO();
		
		List<ResAttachVO> resAttachList = GetResAttachesAsMultipartFiles.save(registReq.getUploadFile(), portfolioInfo);
		resume.setResAttachList(resAttachList);
		resume.setResumeTitle((String)request.getAttribute("XSSresumeTitle"));
		
		String resumeCode = resumeService.regist(resume);
		
		List<EducationVO> educationList = registReq.toEducationVO();
		if(educationList.size() > 0) {
			for(EducationVO education : educationList) {
				education.setResumeCode(resumeCode);
				educationService.regist(education);
			}
		}
		
		
		List<CareerVO> careerList = registReq.toCareerVO();
		if(careerList.size() > 0) {
			for(CareerVO career : careerList) {
				career.setResumeCode(resumeCode);
				career.setCareerContent((String)request.getAttribute("XSScareerContent"));
				careerService.regist(career);
			}
		}
		
		List<CertificationVO> certificationList = registReq.toCertificationVO();
		if(certificationList.size() > 0) {
			for(CertificationVO certification : certificationList) {
				certification.setResumeCode(resumeCode);
				certificationService.regist(certification);
			}
		}
		return url;
	}
	@RequestMapping("/getFile")
	public String getFile(String resAno,Model model) throws Exception {
		String url="downloadFile";
		
		ResAttachVO attach = resumeService.getAttachByAno(resAno);
		
		model.addAttribute("savedPath", attach.getUploadPath());
		model.addAttribute("fileName", attach.getFileName());
		
		return url;		
	}
	
	@RequestMapping("/remove")
	public String remove(String resumeCode) throws Exception {

		String url="student/mypage/resume/remove_success";
		
		//첨부파일 삭제
		List<ResAttachVO> resAttachList = resumeService.getResume(resumeCode).getResAttachList();
		if (resAttachList != null) {
			for (ResAttachVO resAttach : resAttachList) {
				File target = new File(resAttach.getUploadPath(), resAttach.getFileName());
				if (target.exists()) {
					target.delete();
				}
			}
		}
		
		educationService.remove(resumeCode);
		
		careerService.remove(resumeCode);
		
		certificationService.remove(resumeCode);
		
		//DB삭제
		resumeService.remove(resumeCode);

		return url;

	}
	@RequestMapping("/registForm")
	public ModelAndView registForm(ModelAndView mnv, HttpServletRequest request) throws Exception {
		String url = "student/mypage/resume/regist";
		
		HttpSession session = request.getSession();
		LoginUsersVO loginUsers = (LoginUsersVO) session.getAttribute("loginUser");
		
		String usersId = loginUsers.getUsersId();
		StudentVO student = studentService.getStudent(usersId);
		
		mnv.addObject("student", student);
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(ModelAndView mnv, String resumeCode, HttpServletRequest request) throws Exception {
		String url = "student/mypage/resume/modify";

		HttpSession session = request.getSession();
		LoginUsersVO loginUsers = (LoginUsersVO) session.getAttribute("loginUser");
		
		String usersId = loginUsers.getUsersId();
		StudentVO student = studentService.getStudent(usersId);
		
		ResumeVO resume = resumeService.getResume(resumeCode);
		List<EducationVO> educationList = educationService.getEducationList(resumeCode);
		List<CareerVO> careerList = careerService.getCareerList(resumeCode);
		List<CertificationVO> certificationList = certificationService.getCertificationList(resumeCode);
		
		// 파일명 재정의
		List<ResAttachVO> resAttachList = resume.getResAttachList();
		if(resAttachList != null) {
			for (ResAttachVO ssbAttach : resAttachList) {
				String fileName = ssbAttach.getFileName().split("\\$\\$")[1];
				ssbAttach.setFileName(fileName);
			}
		}
		
		mnv.addObject("student", student);
		mnv.addObject("educationList",educationList);
		mnv.addObject("careerList",careerList);
		mnv.addObject("certificationList",certificationList);
		mnv.addObject("resume", resume);
		mnv.setViewName(url);

		return mnv;
	}
	
	@RequestMapping("/modify")
	public String modifyPOST(ResumeModifyCommand modifyReq, Model model, HttpServletRequest request) throws Exception {
		String url = "student/mypage/resume/modify_success";		

		// 삭제된 파일 삭제
		if (modifyReq.getDeleteFile() != null && modifyReq.getDeleteFile().length > 0) {
			for (String resAno : modifyReq.getDeleteFile()) {
				String fileName = resumeService.getAttachByAno(resAno).getFileName();
				File deleteFile = new File(portfolioInfo, fileName);
				resumeService.removeAttachByResAno(resAno);// DB 삭제
				if (deleteFile.exists()) {
					deleteFile.delete(); // File 삭제
				}
			}
		}
		
		// 추가 혹은 변경된 파일 저장
		List<ResAttachVO> resAttachList = GetResAttachesAsMultipartFiles.save(modifyReq.getUploadFile(),portfolioInfo);
		
		// PdsVO settting
		ResumeVO resume = modifyReq.toResumeVO();
		resume.setResAttachList(resAttachList);
		resume.setResumeTitle((String)request.getAttribute("XSSresumeTitle"));
		
		String resumeCode = resume.getResumeCode();
		
		List<EducationVO> educationList_old = educationService.getEducationList(resumeCode);
		List<EducationVO> educationList_new = modifyReq.toEducationVO();
		if(educationList_old.size() > 0 && educationList_old.size() > 0) {
			if(educationList_old.size() == educationList_new.size()) {
				for(EducationVO education : educationList_new) {
					educationService.modify(education);
				}
			}else {
				educationService.remove(resumeCode);
				for(EducationVO education : educationList_new) {
					educationService.regist(education);
				}
			}
		}
		if(educationList_old.size() > 0 && educationList_new == null) {
			for(EducationVO education : educationList_old) {
				String educationCode = education.getEducationCode();
				educationService.remove(educationCode);
			}
		}
		
		
		List<CareerVO> careerList_old = careerService.getCareerList(resumeCode);
		List<CareerVO> careerList_new = modifyReq.toCareerVO();
		if(careerList_old.size() > 0 && careerList_old.size() > 0) {
			if(careerList_old.size() == careerList_new.size()) {
				for(CareerVO career : careerList_new) {
					careerService.modify(career);
				}
			} else {
				careerService.remove(resumeCode);
				for(CareerVO career : careerList_new) {
					careerService.regist(career);
				}
			}
		}
		if(careerList_old.size() > 0 && careerList_new == null) {
			for(CareerVO career : careerList_old) {
				String careerCode = career.getCareerCode();
				careerService.remove(careerCode);
			}
		}
		
		List<CertificationVO> certificationList_old = certificationService.getCertificationList(resumeCode);
		List<CertificationVO> certificationList_new = modifyReq.toCertificationVO();
		if(certificationList_old.size() > 0 && certificationList_old.size() > 0) {
			if(certificationList_old.size() == certificationList_new.size()) {
				for(CertificationVO certification : certificationList_new) {
					certificationService.modify(certification);
				}
			} else {
				certificationService.remove(resumeCode);
				for(CertificationVO certification : certificationList_new) {
					certificationService.regist(certification);
				}
			}
		}
		if(certificationList_old.size() > 0 && certificationList_new == null) {
			for(CertificationVO certification : certificationList_old) {
				String certificationCode = certification.getCertCode();
				certificationService.remove(certificationCode);
			}
		}
		
		
		List<EducationVO> educationList = educationService.getEducationList(resumeCode);
		List<CareerVO> careerList = careerService.getCareerList(resumeCode);
		List<CertificationVO> certificationList= certificationService.getCertificationList(resumeCode);
		
		if(educationList != null) {
			model.addAttribute("educationList",educationList);
		}
		if(careerList != null) {
			model.addAttribute("careerList",careerList);
		}
		if(certificationList != null) {
			model.addAttribute("certificationList",certificationList);
		}
		
		resumeService.modify(resume);
		model.addAttribute("resume",resume);
		
		
		
		return url;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/downExcel")
    public void listExcel(HttpServletRequest request,
            HttpServletResponse response, UsersVO vo,
            ModelMap modelMap) throws Exception {

        // 그냥 평소에 마이바티스에서 데이터 뽑는 방법으로 데이터를 가져온다.
        List<UsersVO> usersList = usersService.getUsersList();
       
        // 받은 데이터를 맵에 담는다.
        Map<String, Object> beans = new HashMap<String, Object>();
        beans.put("usersList", usersList);
        
        // 엑셀 다운로드 메소드가 담겨 있는 객체
        MakeExcel me = new MakeExcel();

        me.download(request, response, beans, "a123", "sampleExcel.xlsx", "무시해도됨");
    }
	
}
