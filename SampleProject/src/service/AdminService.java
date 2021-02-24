package service;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import controller.Controller;
import dao.AdminDao;
import dao.UserDao;
import util.ScanUtil;
import util.View;

public class AdminService {

		private AdminService(){}
		private static AdminService instance;
		public static AdminService getInstance(){
			if(instance == null){
				instance = new AdminService();
			}
			return instance;
		}
		public SimpleDateFormat sdf = new SimpleDateFormat("YYYY.MM.DD");		
		private UserDao userDao = UserDao.getInstance();
		private AdminDao adminDao = AdminDao.getInstance();	

		public int mainScreen() { // 메인메뉴
			System.out.println("--------------------------------------");
			System.out.println("1.상품조회\t2.상품메뉴\t3.유저관리\t4.결재관리");
			System.out.println("--------------------------------------");
			System.out.print("번호 입력>");

			int input = ScanUtil.nextInt();
				switch (input) {
				case 1: return View.SEARCHPROD;
				case 2: return View.ADMINPROD; 
				case 3: return View.ADMINUSERMAIN;
				case 4: return View.ADMINORDER;
				case 0: {
					System.out.println("프로그램이 종료되었습니다.");
					System.exit(0);
			}
			}
			return View.SEARCHSCREEN;
		}
		public int AUserScreen() { // 메인메뉴
			System.out.println("--------------------------------------");
			System.out.println("--잊어버리신거 같아서 말하는데 손님은 왕입니다.--");
			System.out.println("1.전체유저조회 \t 2.유저세부검색 \t 3.유저삭제 \t 4.뒤로가기");
			System.out.println("--------------------------------------");
			System.out.print("번호 입력>");

			int input = ScanUtil.nextInt();
				switch (input) {
				case 1: return View.ADMINAUSER;
				case 2: return View.ADMINUSERINFO; 
				case 3: return View.ADMINUSERDEL;
				case 4:	return View.ADMINMAIN;
			}
			return View.ADMINMAIN;
		}
		
		public int AUserinfo(){
		
			List<Map<String, Object>> userList = adminDao.AdminUserInfo();
			
			for(Map<String, Object> user : userList) {
			System.out.println("========================================================================================================================");
			System.out.println("이름\t성별\t생일\t   \t주소   \t\t\t\t전화번호\t\t\t메일\t\t\t캐쉬");
			System.out.println("------------------------------------------------------------------------------------------------------------------------");
				System.out.println(user.get("MEM_NAME")
						+ "\t" + user.get("MEM_SEX")
						+ "\t" + sdf.format(user.get("MEM_BIR"))
				+ "\t" + user.get("MEM_ZIP")
				+ "\t" + user.get("MEM_ADD1")
				+ "\t" + user.get("MEM_ADD2")
				+ "\t" + user.get("MEM_HP")
				+ "\t" + user.get("MEM_MAIL")
				+ "\t" + user.get("MEM_CASH"));}

			System.out.println("========================================================================================================================");
		
			return View.ADMINUSERMAIN;
		}

		public int AdminUserinfo(){
			System.out.print("아이디>");
			String userId = ScanUtil.nextLine();
			Map<String, Object> userList = adminDao.Adminselect(userId);
			
			System.out.println("========================================================================================================================");
			System.out.println("이름\t성별\t생일\t   \t주소   \t\t\t\t전화번호\t\t\t메일\t\t\t캐쉬");
			System.out.println("------------------------------------------------------------------------------------------------------------------------");
				System.out.println(userList.get("MEM_NAME")
						+ "\t" + userList.get("MEM_SEX")
						+ "\t" + userList.get("MEM_BIR")
				+ "\t" + userList.get("MEM_ZIP")
				+ "\t" + userList.get("MEM_ADD1")
				+ "\t" + userList.get("MEM_ADD2")
				+ "\t" + userList.get("MEM_HP")
				+ "\t" + userList.get("MEM_MAIL")
				+ "\t" + userList.get("MEM_CASH"));

				System.out.println("========================================================================================================================");
			
			return View.ADMINUSERMAIN;
		}
		public int Admindelete(){
			System.out.println("=========== 회원삭제 =============");
			System.out.print("삭제할 아이디를 입력해주세요.>");
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
			
			return View.ADMINUSERMAIN;
		}

		
		
		
		
		
		
	}
















