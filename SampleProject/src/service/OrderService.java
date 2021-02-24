package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.JDBCUtil;
import util.ScanUtil;
import util.View;
import dao.CartDao;
import dao.CashDao;
import dao.OrderDao;

public class OrderService {
	
	
	JDBCUtil jdbc = JDBCUtil.getInstance();
	private OrderDao orderDao = OrderDao.getInstance();
	private CashDao cashDao = CashDao.getInstance();
	private CartService cartService = CartService.getInstance();
	private CartDao cartDao = CartDao.getInstance();
	
	List<Map<String, Object>>  templi = new ArrayList<>(); 
	HashMap <String,Object>temphm = new HashMap<>();
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
//		HashMap<String, Object> orderListhm = new HashMap<>();
		System.out.println(orderList);
		System.out.println("======================================");
		System.out.println("================주문번호================");
		System.out.println("==============구매자 정보=================");
		System.out.println("이     름 : " +orderList.get(0).get("MEM_NAME"));
		System.out.println("주     소 : " +orderList.get(0).get("MEM_ADD1"));
		System.out.println("상세주소 : " +orderList.get(0).get("MEM_ADD2"));
		System.out.println("휴대폰번호 : " +orderList.get(0).get("MEM_HP"));
		System.out.println("캐쉬현황 : " +orderList.get(0).get("MEM_CASH")+"\n");
		int count=0;
		
		for(Map<String, Object> order : orderList){
			count++;
			System.out.println("상 품 ["+count+"] : "+order.get("PROD_NAME"));
			System.out.println("상품가격 : " + order.get("PROD_SALE")+"원\n");
			System.out.println("수 량 : " + order.get("CART_QTY")+"개\n");
			}
		
		System.out.println("총 금 액 : "+orderDao.ordercost().get(0).get("ORDERCOST").toString()+"원");
		String ordercost = orderDao.ordercost().get(0).get("ORDERCOST").toString();
		System.out.println("=============구매 상품 정보================");
		
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
			System.out.println("얼마를 충전하시겠습니까?");
			int cash = ScanUtil.nextInt();
			orderDao.chargecash(cash);
			System.out.println(cash+"원 캐쉬충전이 완료되었습니다.");
			break;
			
		case 3 :
			// cart -> order 정보이동 
			System.out.println("변화행~ : "+orderDao.order3()); 		
			System.out.println(orderDao.selectorder().size());	
			int size = orderDao.selectorder().size();
			// cartdetail -> orderdetail  정보이동
			// prodid, cartqty -> 데이터 복붙, orderno
			templi = new ArrayList<>();
			System.out.println(cartService.tempyeongjun().size());
			for(int i=0; i<cartDao.selectCartList().size(); i++){
			temphm = new HashMap<>();	
			temphm.put("PROD_ID",cartDao.selectCartList().get(i).get("PROD_ID"));
			
			cartDao.selectCartList().get(i).get("PROD_ID").toString();
			cartDao.selectCartList().get(i).get("PROD_ID").toString();
			
			temphm.put("CART_QTY",cartDao.selectCartList().get(i).get("CART_QTY"));
				templi.add((temphm));
			}
			System.out.println("cart(prodid, cartqty) -> list,hm 이동완료");
			System.out.println(templi);
			System.out.println(temphm);
			aaa
			
			
			int stock = orderDao.getstock(); // 주문수량
			int cashcash = cashDao.getcash(); //  주문금액
			
			//orderDao.order(stock, cashcash);
		
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
