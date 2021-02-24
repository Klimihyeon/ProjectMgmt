package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

import util.JDBCUtil;
import util.ScanUtil;
import util.View;
import controller.Controller;
import dao.CashDao;
import dao.OrderDao;

public class CashService {
	
	
	public CashService(){}
	private static CashService instance;
	public static CashService getInstance(){
		if(instance == null){
			instance = new CashService();			
			}
			return instance;
		}
	
	private CashDao cashDao = CashDao.getInstance();
	
	
	/*
	 * Map<String, Object> mapUserId = Controller.LoginUser; String url =
	 * "jdbc:oracle:thin:@localhost:1521:xe"; String user = "iu"; String password =
	 * "java";
	 * 
	 * Connection con = null; PreparedStatement ps = null; ResultSet rs = null;
	 */	

	
	public int selectorderdetail(){

	
		int CashInfo = cashDao.CashDetail();
		
		System.out.println("======================================");
		System.out.println("=============보유캐쉬정보=================");
		System.out.println("현재 보유 캐쉬 : " +CashInfo);
		
		System.out.println("1.캐쉬 충전\t2.돌아가기");
		System.out.println("입력>");
		
		int input = ScanUtil.nextInt();
		switch (input) {
		case 1 : 
			System.out.println("======================================");
			System.out.println("무통장입금할 캐쉬를 입력해주세요>");
			int cashadd  = ScanUtil.nextInt();
			cashDao.chargecash(cashadd);
			
			System.out.println("계좌번호를 입력해주세요>"); 
			String tongjang = ScanUtil.nextLine();
			System.out.println(tongjang + "계좌에서 "+cashadd + "원 만큼 인출합니다.");
			System.out.println("캐쉬충전이 완료되었습니다.");
			break;
		case 2 :
			return View.USERINFO;
		}
		
		return View.CASHMAIN;

	}












}
