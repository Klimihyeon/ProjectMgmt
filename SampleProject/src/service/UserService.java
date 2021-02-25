package service;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import controller.Controller;
import dao.UserDao;
import util.ScanUtil;
import util.View;

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
	public SimpleDateFormat sdf = new SimpleDateFormat("YYYY.MM.DD");	
	
	public int join(){
		System.out.println("=========== 회원가입 =============");
		String userId;
		out : while(true){
			System.out.print("아이디>");
			userId = ScanUtil.nextLine();
			if (regexid(userId) == false) {
				System.out.println("잘못 입력하셨습니다. id는 영문혼합 5자리 이상으로 정해주세요.");
			} else
				break out;
		}
		String password;
		out : while(true){
			System.out.print("비밀번호>");
			password = ScanUtil.nextLine();
			if (regexid(password) == false) { 
				System.out.println("잘못 입력하셨습니다. password는 영문혼합 5자리 이상으로 정해주세요.");
			} else
				break out;
		}
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
		
		Map<String, Object> param2 = new HashMap<>();
		param2.put("MEM_ID", userId);
		param2.put("CART_ID", userId+"cart");
		
		int result2 = userDao.insertCartId(param2);
		
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
		}else if(userId.equals("admin")) {
			System.out.println("관리자 ID로 접속하셨습니다.");
			return View.ADMINMAIN;
		}
		else{
			System.out.println("로그인 성공");
			Controller.LoginUser = user;
			return View.MAIN;
		}
		Map<String, Object> user2 = userDao.UserInfo(userId, password);
		return View.HOME;
	}
	
	public int delete(){
		System.out.println("=========== 회원삭제 =============");
		System.out.print("자신의 아이디를 입력해주세요.>");
		String userId = ScanUtil.nextLine();
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
	public int info(){

		String userId = Controller.LoginUser.get("MEM_ID").toString();
		String password = Controller.LoginUser.get("MEM_PASS").toString();
		
		Map<String, Object> userList = userDao.UserInfo(userId, password);
		
		System.out.println("========================================================================================================================");
		System.out.println("이름\t성별\t생일\t   우편번호 \t주소  \t\t\t전화번호\t\t메일\t캐쉬");
		System.out.println("------------------------------------------------------------------------------------------------------------------------");
			System.out.println(userList.get("MEM_NAME")
					+ "\t" + userList.get("MEM_SEX")
					+ "\t" + sdf.format(userList.get("MEM_BIR"))
			+ "\t" + userList.get("MEM_ZIP")
			+ "\t" + userList.get("MEM_ADD1")
			+ "\t" + userList.get("MEM_ADD2")
			+ "\t" + userList.get("MEM_HP")
			+ "\t" + userList.get("MEM_MAIL")
			+ "\t" + userList.get("MEM_CASH"));

			System.out.println("========================================================================================================================");
		      System.out.println("1.회원정보수정 \t 2.캐쉬충전 \t 3.주문목록확인 \t 4.리뷰관리 \t 5.알림확인 \t 0.뒤로");
		      System.out.print("입력>");
		      
		      int input = ScanUtil.nextInt();
		      switch (input) {
		      case 1:
		         return View.USERUPDATE;         
		      case 2:
		         return View.CASHMAIN;
		      case 3:
		         return View.SELECTORDER;
		      case 4:
		         return View.CHOICEREVIEW;
		      case 5:
		         return View.SELECTNOTICEALL;
		      case 0:
		         return View.MAIN;
		      }
		      
		      return View.BOARD_LIST;
		   }
	
	
	boolean regexid(String str){
		String regexid ="[a-z0-9_-]{5,20}"; 
	Pattern p = Pattern.compile(regexid);		
	Matcher m =	p.matcher(str);				
	return m.matches();
	}
	
	public int update(){
		System.out.println("=========== 회원정보수정 =============");

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
		
		Map<String, Object> param = new HashMap<>();

		param.put("MEM_NAME", userName);
		param.put("MEM_SEX", userSex);
		param.put("MEM_BIR", userBir);
		param.put("MEM_ZIP", userZip);
		param.put("MEM_ADD1", userAdd1);
		param.put("MEM_ADD2",userAdd2);
		param.put("MEM_HOMETEL",userHomeTel);
		param.put("MEM_HP", userHp);
		param.put("MEM_MAIL", userMail);
		param.put("MEM_ID", Controller.LoginUser.get("MEM_ID").toString());
		
		int result = userDao.updateUser(param);
				
		if(0 < result){
			System.out.println("회원정보 수정 성공");
		}else{
			System.out.println("회원정보 수정 실패");
		}
		return View.USERINFO;
	}

	
	
	
	
	
	
}














