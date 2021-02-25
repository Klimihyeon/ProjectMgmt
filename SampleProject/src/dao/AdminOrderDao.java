package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import controller.Controller;
import util.JDBCUtil;


public class AdminOrderDao {
	private AdminOrderDao(){}
	private static AdminOrderDao instance;
	public static AdminOrderDao getInstance(){
		if(instance == null){
			instance = new AdminOrderDao();
		}
		return instance;
	}
	private JDBCUtil jdbc = JDBCUtil.getInstance();
	

	   public  List<Map<String, Object>> adminOrderSelect() {  // 주문조회(order) 
			String sql = "SELECT ORDER1_NO, MEM_ID, ORDER1_STATUS, ORDER1_COST "
					+ " FROM ORDER1 "
					+ " ORDER BY 1 DESC";
			List<Object> param = new ArrayList<>();
			return jdbc.selectList(sql);
		}

	   public  List<Map<String, Object>> adminSelectDate() {  // 로그인멤버의 주문조회(order) 
			String sql = "SELECT SUBSTR(ORDER1_NO,1,2)||'-'||SUBSTR(ORDER1_NO,3,2)||'-'||SUBSTR(ORDER1_NO,5,2) PRODDATE "
					+ " FROM ORDER1 "
					+ " ORDER BY 1 DESC";
			List<Object> param = new ArrayList<>();
			return jdbc.selectList(sql);
		}
	   
	   public List<Map<String, Object>> adminSelectOrderdetail(String orderno) {
		      String sql = "SELECT O.ORDER1_NO, O.ORDER1_COST, OD.PROD_ID, P.PROD_NAME, OD.ORDERDETAIL_QTY, P.PROD_SALE "
		      		+ " FROM ORDER1 O "
		      		+ " INNER JOIN ORDERDETAIL OD ON OD.ORDER1_NO = O.ORDER1_NO"
		      		+ " INNER JOIN PROD P ON P.PROD_ID = OD.PROD_ID "
		      		+ " WHERE O.ORDER1_NO = ? ";
		      List<Object> param = new ArrayList<>();
		      param.add(orderno);
		      return jdbc.selectList(sql, param);
		   }
	   
	   public List<Map<String, Object>> analysismonth() {
	   String sql = "SELECT SUBSTR(ORDER1_NO,1,2) 기간, SUM(ORDER1_COST) 매출, COUNT(ORDER1_NO) 주문수, AVG(ORDER1_COST) 주문평균금액, ROUND(COUNT(O.ORDER1_NO)/30,2) 회원당주문수 "
	   		+ " FROM ORDER1 O "
	   		+ " GROUP BY SUBSTR(ORDER1_NO,1,2)";
	      return jdbc.selectList(sql);
	   }
	   
	   public List<Map<String, Object>> analysisyear() {
		   String sql = "SELECT SUBSTR(ORDER1_NO,1,4) 기간, SUM(ORDER1_COST) 매출, COUNT(ORDER1_NO) 주문수, AVG(ORDER1_COST) 주문평균금액, ROUND(COUNT(O.ORDER1_NO)/30,2) 회원당주문수 "
		   		+ " FROM ORDER1 O "
		   		+ " GROUP BY SUBSTR(ORDER1_NO,1,4)";
		   List<Object> param = new ArrayList<>();
		      return jdbc.selectList(sql);
		   }
	   
	   public List<Map<String, Object>> analysismemnum() {
		   String sql = "SELECT MEM_ID 회원수"
		   		+ " FROM MEMBER ";
		      return jdbc.selectList(sql);
		   }
	   
	   public int modifydeliverstatus(String orderno, String status) {        // 배송상태변경 
		      String sql = "UPDATE ORDER1 "
		      		+ "SET ORDER1_STATUS = ?  "
		      		+ "WHERE ORDER1_NO = ?";
		      
		      List<Object> param = new ArrayList<>();
		      param.add(orderno);
		    return jdbc.update(sql, param);		         
		   }
	   
	   public int modifydeliverstatus2(int ordercost, String memid) {   //  환불완료시 캐시돌려줌  
		      String sql = "UPDATE MEMBER "
		      		+ "SET MEM_CASH = (MEM_CASH +  ?) "
		      		+ "WHERE MEM_ID = ? ";
		      List<Object> param = new ArrayList<>();
		      param.add(ordercost);
		      param.add(memid);
		    return jdbc.update(sql, param);		         
		   }
}
