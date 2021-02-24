package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import controller.Controller;
import util.JDBCUtil;

public class CashDao {
	private CashDao(){}
	private static CashDao instance;
	public static CashDao getInstance(){
		if(instance == null){
			instance = new CashDao();	
			}
			return instance;
		}
	
	private static JDBCUtil jdbc = JDBCUtil.getInstance();

	public static int CashDetail() {
		
		String sql = " SELECT MEM_CASH  FROM MEMBER WHERE MEM_ID = ?";
		List<Object> param = new ArrayList<>();
		param.add(Controller.LoginUser.get("MEM_ID").toString());
		Map<String, Object> map = jdbc.selectOne(sql, param);	

		int a = Integer.parseInt(String.valueOf(map.get("MEM_CASH")));
		return a;
	}
	
	public int getcash() {
		
		String sql = "select mem_cash from member where mem_id = ?";
		List<Object> param = new ArrayList<>();
		param.add(Controller.LoginUser.get("MEM_ID").toString());
		Map<String, Object> map = jdbc.selectOne(sql, param);	

		int a = Integer.parseInt(String.valueOf(map.get("MEM_CASH")));
		return a;
		
	}
	
	
	public static void chargecash(int membercash) {
		String sql = "UPDATE MEMBER SET MEM_CASH = MEM_CASH + ?  WHERE MEM_ID = ?";
		
		List<Object> param = new ArrayList<>();
		param.add(membercash);
		param.add(Controller.LoginUser.get("MEM_ID").toString());
		
		int update = jdbc.update(sql, param);
		System.out.println(update);
		

		
	}

}
