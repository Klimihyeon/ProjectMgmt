package service;

import java.util.HashMap;
import java.util.Map;

import controller.Controller;
import util.ScanUtil;
import util.View;
import dao.UserDao;

public class UserService {

	private UserService(){}
	private static UserService instance;
	public static UserService getInstance(){
		if(instance == null){
			instance = new UserService();
		}
		return instance;
	}
	
	private UserDao userDao = UserDao.getInstance();
	
	public int join(){
		System.out.println("=========== 회원가입 =============");
		System.out.print("아이디>");
		String userId = ScanUtil.nextLine();
		System.out.print("비밀번호>");
		String password = ScanUtil.nextLine();
		System.out.print("이름>");
		String userName = ScanUtil.nextLine();
		System.out.print("성별>");
		String userSex = ScanUtil.nextLine();
		System.out.print("생일>");
		String userBir = ScanUtil.nextLine();
		System.out.print("우편번호>");
		String userZip = ScanUtil.nextLine();
		System.out.print("주소1>");
		String userAdd1 = ScanUtil.nextLine();
		System.out.print("주소2>");
		String userAdd2 = ScanUtil.nextLine();
		System.out.print("집전화>");
		String userHomeTel = ScanUtil.nextLine();
		System.out.print("핸드폰>");
		String userHp = ScanUtil.nextLine();
		System.out.print("이메일>");
		String userMail = ScanUtil.nextLine();
		int userCash = 0;
		//아이디 중복 확인 생략
		//비밀번호 확인 생략
		//정규표현식(유효성 검사) 생략
		
		
		
		Map<String, Object> param = new HashMap<>();
		param.put("MEM_ID", userId);
		param.put("MEM_PASS", password);
		param.put("MEM_NAME", userName);
		param.put("MEM_SEX", userSex);
		param.put("MEM_BIR", userBir);
		param.put("MEM_ZIP", userZip);
		param.put("MEM_ADD1", userAdd1);
		param.put("MEM_ADD2",userAdd2);
		param.put("MEM_HOMETEL",userHomeTel);
		param.put("MEM_HP", userHp);
		param.put("MEM_MAIL", userMail);
		param.put("MEM_CASH", userCash);
		
		
		
		
		int result = userDao.insertUser(param);
		
		if(0 < result){
			System.out.println("회원가입 성공");
		}else{
			System.out.println("회원가입 실패");
		}
		
		return View.HOME;
	}

	public int login() {
		System.out.println("========== 로그인 =============");
		System.out.print("아이디>");
		String userId = ScanUtil.nextLine();
		System.out.print("비밀번호>");
		String password = ScanUtil.nextLine();
		
		Map<String, Object> user = userDao.selectUser(userId, password);
		
		if(user == null){
			System.out.println("아이디 혹은 비밀번호를 잘못 입력하셨습니다.");
		}else{
			System.out.println("로그인 성공");
			Controller.loginUser = user;
			return View.BOARD_LIST;
		}
		
		return View.HOME;
	}
	
	public int delete(){
		System.out.println("=========== 회원삭제 =============");
		System.out.print("자신의 아이디를 입력해주세요.>");
		String userId = ScanUtil.nextLine();
		System.out.println("캐쉬는 반환되지 않습니다.메롱");
		int userCash = 0;
		
		Map<String, Object> param = new HashMap<>();
		param.put("MEM_ID", userId);
		
		int result = userDao.deleteUser(param);
		
		if(result == 1){
			System.out.println("회원삭제 성공");
		}else{
			System.out.println("회원삭제 실패");
		}
		
		return View.HOME;
	}
	
}














