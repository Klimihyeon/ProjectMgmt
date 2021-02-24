package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import service.OrderService;
import util.JDBCUtil;
import controller.Controller;

public class OrderDao {

	
	private OrderDao(){}
	private static OrderDao instance;
	public static OrderDao getInstance(){
		if(instance == null){
			instance = new OrderDao();	
			}
			return instance;
		}
	
	private static JDBCUtil jdbc = JDBCUtil.getInstance();
	private static OrderService orderservice = OrderService.getInstance();
	

	
	public List<Map<String, Object>> selectorderdetail() {
		String sql = " SELECT CD.CARTDETAIL_NO, M.MEM_NAME, M.MEM_ADD1, "
				+ " M.MEM_ADD2, M.MEM_HP, M.MEM_CASH, P.PROD_NAME, P.PROD_SALE, CD.CART_QTY "
				+ " FROM CARTDETAIL CD,  MEMBER M, CART C, PROD P "
				+ " WHERE  CD.CART_ID(+) = C.CART_ID AND M.MEM_ID  = C.MEM_ID "
				+ " AND P.PROD_ID = CD.PROD_ID AND C.MEM_ID = 'cdw34'";
//		List<Object> param = new ArrayList<>();
//		param.add(Controller.LoginUser.get("MEM_ID").toString());
		return jdbc.selectList(sql);

	}
	
	
	
	
	public List<Map<String, Object>> ordercost() { // 주문 총금액 구하는 메서드
		String sql = "SELECT SUM(CD.CART_QTY*P.PROD_SALE) ORDERCOST FROM   CARTDETAIL CD,  MEMBER M, CART C, PROD P WHERE  CD.CART_ID = C.CART_ID  AND M.MEM_ID  = C.MEM_ID AND P.PROD_ID = CD.PROD_ID  AND C.MEM_ID = ?";
		List<Object> param = new ArrayList<>();
		param.add(Controller.LoginUser.get("MEM_ID").toString());
		return jdbc.selectList(sql, param);
	}
	
	
	
	   public void modifyshipping(String add1, String add2) {
		      String sqladd1 = "UPDATE MEMBER SET MEM_ADD1 = ?  WHERE MEM_ID = ?";
		      
		      List<Object> paramADD1 = new ArrayList<>();
		      paramADD1.add(add1);
		      paramADD1.add(Controller.LoginUser.get("MEM_ID").toString());
		      
		      int updateADD1 = jdbc.update(sqladd1, paramADD1);
		      System.out.println(updateADD1);
		      
		      String sqladd2 = "UPDATE MEMBER SET MEM_ADD2 = ?  WHERE MEM_ID = ?";
		      
		      List<Object> paramADD2 = new ArrayList<>();
		      paramADD2.add(add2);
		      paramADD2.add(Controller.LoginUser.get("MEM_ID").toString());
		      
		      int updateADD2 = jdbc.update(sqladd2, paramADD2);
		      System.out.println(updateADD2);
		         
		   }
	   
	public void chargecash(int membercash) {
		String sql = "UPDATE MEMBER SET MEM_CASH = NVL(MEM_CASH,0) + ?  WHERE MEM_ID = ?";
		List<Object> param = new ArrayList<>();
		param.add(membercash);
		param.add(Controller.LoginUser.get("MEM_ID").toString());
		
		int update = jdbc.update(sql, param);
//		System.out.println(update);
		
	}
	
	

	

	public int getstock() {
		
		String sql = " SELECT CART_QTY"
				+ " FROM CARTDETAIL CD INNER JOIN CART C ON(C.CART_ID = CD.CART_ID)"
				+ " INNER JOIN MEMBER M ON(M.MEM_ID = C.MEM_ID"
				+ " AND M.MEM_ID = ?)";
                  
                   
		List<Object> param = new ArrayList<>();
		param.add(Controller.LoginUser.get("MEM_ID").toString());
		Map<String, Object> map = jdbc.selectOne(sql, param);
		System.out.println("map : " + map);
		
		int a = Integer.parseInt(String.valueOf(map.get("CART_QTY")));
		return a;
	}


	public void order1(int stock, int cash) {
	      
	      String sqlstock = "UPDATE PROD SET PROD_TOTALSTOCK = (PROD_TOTALSTOCK - ?)  WHERE PROD_ID = 'P101000001'";
	      
	      List<Object> paramstock = new ArrayList<>();
	      paramstock.add(stock);
	      
	      int updatestock = jdbc.update(sqlstock, paramstock);
	      System.out.println(updatestock);
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public void order2(int stock, int cash) {
	      String sqlcash = "UPDATE PROD SET PROD_TOTALSTOCK = (PROD_TOTALSTOCK - ?)  WHERE PROD_ID = 'P101000001'";
	      
	      List<Object> paramcash = new ArrayList<>();
	      paramcash.add(cash);
	      
	      int updatecash = jdbc.update(sqlcash, paramcash);
	      System.out.println(updatecash);
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	      
	     //
	public int order3() {
	      String sqlorder = "INSERT INTO ORDER1(ORDER1_NO, MEM_ID, ORDER1_STATUS, ORDER1_COST) "
	      		+ " VALUES(CONCAT(TO_CHAR(SYSDATE,'YYMMDD')),ORDER_SEQ.NEXTVAL),? , '결제완료', ?)";
	      List<Object> paramorder = new ArrayList<>();
	      paramorder.add(Controller.LoginUser.get("MEM_ID").toString());
	      paramorder.add((int)ordercost().get(0).get("ORDERCOST")); // 주문총금액
	 return jdbc.update(sqlorder,paramorder); 
	}
	
	public Map<String, Object> selectorder() {
	      String sql = "SELECT ORDER1_NO FROM ORDER1 WHERE MEM_ID = ?";
	      List<Object> paramorder = new ArrayList<>();
	      paramorder.add(Controller.LoginUser.get("MEM_ID").toString());
	 return jdbc.selectOne(sql);
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	      
	public void order4(int stock, int cash) {  
	String sqlorderdetail = "INSERT INTO ORDERDETAIL(ORDERDETAIL_NO, ORDER1_NO, PROD_ID, ORDERDETAIL_QTY) "
	                     + " VALUES(ORDERDETAIL_SEQ.NEXTVAL, (SELECT O.ORDER1_NO FROM ORDER1 O WHERE MEM_ID = ?), "
	                     + " (SELECT P.PROD_ID FROM PROD P INNER JOIN CARTDETAIL CD ON(P.PROD_ID = CD.PROD_ID)), ?) ";

	      List<Object> paramorderdetail = new ArrayList<>();
	      paramorderdetail.add(Controller.LoginUser.get("MEM_ID").toString());
	      paramorderdetail.add(stock);
	      
	      int updateorderdetail = jdbc.update(sqlorderdetail, paramorderdetail);
	      System.out.println(updateorderdetail);
	}

	
//	public void carttoorder() {
//		String sql = "UPDATE MEMBER SET MEM_CASH = NVL(MEM_CASH,0) + ?  WHERE MEM_ID = ?";
//		List<Object> param = new ArrayList<>();
//		param.add(membercash);
//		param.add(Controller.LoginUser.get("MEM_ID").toString());
//		
//		int update = jdbc.update(sql, param);
//
//		
//	}
	
	
	
	   }


	




