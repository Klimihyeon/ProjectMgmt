package service;

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
	// [[210222]]
	//1. 회원가입시 에러 : 생일(date)(-> 타입이 맞지 않다나), 우편번호(char)(-> String,int로 받아도 계속 
//	                 1글자당 3byte씩 측정됨. 그래서 3글자만 쳐도 에러남)
	//2. 정규화 진행해야 하는 것들(password, 전화번호) -> 구글링 할것.
	//3. 회원가입시 자동으로 카트번호 생성
	
	public int join(){
		System.out.println("=========== 회원가입 =============");
		String userId;
		out : while(true){
			System.out.print("아이디>");
			userId = ScanUtil.nextLine();
			if (regexid(userId) == false) {
				System.out.println("잘못 입력하셨습니다. id는 ~~~~~(5자리)로 정해주세요.");
			} else
				break out;
		}
		String password;
		out : while(true){
			System.out.print("비밀번호>");
			password = ScanUtil.nextLine();
			if (regexid(password) == false) {   // ★(+) paswword 정규화 필요
				System.out.println("잘못 입력하셨습니다. password는 ~~~~~(5자리)로 정해주세요.");
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
		}else{
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
	public int info(){

		System.out.print("아이디>");
		String userId = ScanUtil.nextLine();
		System.out.print("비밀번호>");
		String password = ScanUtil.nextLine();
		
		Map<String, Object> userList = userDao.UserInfo(userId, password);
		
		System.out.println("=======================================");
		System.out.println("이름\t성별\t생일\t주소\t전화번호\t메일\t캐쉬");
		System.out.println("---------------------------------------");
			System.out.println(userList.get("MEM_NAME")
					+ "\t" + userList.get("MEM_SEX")
					+ "\t" + userList.get("MEM_BIR")
			+ "\t" + userList.get("MEM_ZIP")
			+ "\t" + userList.get("MEM_ADD1")
			+ "\t" + userList.get("MEM_ADD2")
			+ "\t" + userList.get("MEM_HP")
			+ "\t" + userList.get("MEM_MAIL")
			+ "\t" + userList.get("MEM_CASH"));

		System.out.println("=======================================");
		System.out.println("1.회원정보수정\t2.캐쉬충전\t3.주문목록확인");
		System.out.print("입력>");
		
		int input = ScanUtil.nextInt();
		switch (input) {
		case 1:
			return View.USERUPDATE;			

		case 2:
			return View.CASHCHARGE;

			
		}
		
		return View.BOARD_LIST;
	}
	
	
	boolean regexid(String str){
		// 아이디 :  [a-z0-9_-]{5,20}
		// 이메일주소 : [a-z0-9_-]{5,20}@[a-zA-Z]+\\.(?i)(com|net|org|([a-z]{2}\\.[a-z]{2}))
		// 전화번호 : ^0\\d{1,3}-\\d{3,4]-\\d{4}
		
		//정규표현식
		String regexid ="[a-z0-9_-]{5,20}"; 		// 
//		String regexemail ="[a-z0-9_-]{5,20}@[a-zA-Z]+\\.(?i)(com|net|org|([a-z]{2}\\.[a-z]{2}))"; 		// 
//		String regexnumber ="^0\\d{1,3}-\\d{3,4]-\\d{4}"; 		//
		
	Pattern p = Pattern.compile(regexid);		// Pattern.conpile(String regex) : 주어진 정규표현식으로부터 패턴을 만들며, 컴파일이라고 한다.
	Matcher m =	p.matcher(str);				// Pattern.matcher(CharSequence input) : 입력된 문자열에서 패턴을 찾는 Matcher 객체를 만듭니다.
	return m.matches();		// Matcher.matches() : 대상이 되는 문자열이 패턴과 일치하는가를 판단(출력 true, false)
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
		System.out.print("아이디>");
		String userId = ScanUtil.nextLine();
		
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
		param.put("MEM_ID", userId);
		
		int result = userDao.updateUser(param);
				
		if(0 < result){
			System.out.println("회원정보 수정 성공");
		}else{
			System.out.println("회원정보 수정 실패");
		}
		return View.HOME;
	}

	
	
	
	
	
	
}














