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

public class OrderService {
	
	
	JDBCUtil jdbc = JDBCUtil.getInstance();
	private OrderDao orderDao = OrderDao.getInstance();
	private CashDao cashDao = CashDao.getInstance();
	
	public OrderService(){}
	private static OrderService instance;
	public static OrderService getInstance(){
		if(instance == null){
			instance = new OrderService();			
			}
			return instance;
		}
	
	public int selectorderdetail(){

	
		List<Map<String, Object>> orderList = orderDao.selectorderdetail();
		
		System.out.println("======================================");
		System.out.println("================주문번호================");
		System.out.println("==============구매자 정보=================");
		for(Map<String, Object> order : orderList){
			System.out.println("\t" + order.get("CARTDETAIL_NO"));
			System.out.println("이름" + order.get("MEM_NAME"));
			System.out.println("주소" + order.get("MEM_ADD1"));
			System.out.println("상세주소" + order.get("MEM_ADD2"));
			System.out.println("휴대폰 번호" + order.get("MEM_HP"));
			System.out.println("캐쉬 현황" + order.get("M.MEM_CASH"));
			System.out.println("상품명" + order.get("PROD_NAME"));
			System.out.println("상품가격" + order.get("PROD_SALE"));}
		System.out.println("=============구매 상품 정보================");
	//		System.out.println("상품 수량" + order.get("CD.CART_QTY"));
		
		System.out.println("1.배송지 변경\t2.캐쉬 충전\t3.주문\t0.돌아가기");
		System.out.println("입력>");
		
		int input = ScanUtil.nextInt();
		switch (input) {
		case 1 : 
			System.out.println("주소를 입력해주세요(상세주소 제외)>");
			String add1  = ScanUtil.nextLine();
			System.out.println("상세주소를 입력해주세요>");
			String add2  = ScanUtil.nextLine();
			orderDao.modifyshipping(add1, add2);
			break;
			
		case 2 :
			int cash = ScanUtil.nextInt();
			orderDao.chargecash(cash);
			System.out.println("캐쉬충전이 완료되었습니다.");
			break;
			
		case 3 :

			int stock = orderDao.getstock();
			int cashcash = cashDao.getcash();
			
			orderDao.order(stock, cashcash);
			System.out.println("주문이 완료되었습니다.");
			return View.HOME;			
			
		case 0 :
			System.out.println("프로그램이 종료되었습니다.");
			System.exit(0);
			break;
	}
		
		return View.ORDERLIST;

	}












}
