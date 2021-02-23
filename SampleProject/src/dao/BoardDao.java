package dao;

import java.util.List;
import java.util.Map;

import controller.Controller;
import util.JDBCUtil;
import util.ScanUtil;
import util.View;

public class BoardDao { 

	private BoardDao(){}
	private static BoardDao instance;
	public static BoardDao getInstance(){
		if(instance == null){
			instance = new BoardDao();
		}
		return instance;
	}
	
	private JDBCUtil jdbc = JDBCUtil.getInstance();
	
	public List<Map<String, Object>> selectBoardList(){

//		Controller.loginUser.get("MEM_ID").toString();
		String sql = "select PROD_id, PROD_NAME, PROD_SALE, PROD_DETAIL"
				+ " from PROD";
		return jdbc.selectList(sql);
	}
	
}












