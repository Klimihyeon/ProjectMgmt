package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import controller.Controller;
import util.JDBCUtil;
import util.ScanUtil;

public class SelectProdDao {
 
	private SelectProdDao(){}
	private static SelectProdDao instance;
	public static SelectProdDao getInstance(){
		if(instance == null){
			instance = new SelectProdDao();
		}
		return instance;
		
	}
	
	ScanUtil su = new ScanUtil();
	private JDBCUtil jdbc = JDBCUtil.getInstance();
	
	
	public Map<String, Object> selectrecommend (){ // 첫화면 (추천상품 조회) 운영자가 게시글 선택하여
	//String syschoose[] = {"S0200001"};	
		String sql = "select SALE_NO, SALE_TITLE FROM SALE WHERE SALE_NO = ?";
		List<Object> param = new ArrayList<>();
//		for(int i=0; i<syschoose.length; i++){
//		param.add(syschoose[i]); // syschoose 배열 값 순서대로 param값에 넣기
//		}
		param.add("S0100002");
		return jdbc.selectOne(sql, param);
	}
	
	public List<Map<String, Object>> selectList() {   // 다중행 
		String sql = "SELECT P.PROD_NAME, P.PROD_TOTALSTOCK, P.PROD_SALE, P.PROD_ID, S.SALE_TITLE, S.SALE_NO "
				+ "FROM SALEDETAIL SD "
				+ "INNER JOIN PROD P ON P.PROD_ID = SD.PROD_ID "
				+ "INNER JOIN SALE S ON S.SALE_NO = SD.SALE_NO "
				+ "WHERE S.SALE_NO = ?"; // TEST 
		List<Object> param = new ArrayList<>();
		param.add("S0100002");   //  (SALE_NO 지정해놨음)
		return jdbc.selectList(sql, param);
	}
	
	public List<Map<String, Object>> selectSaleNo(String input) {   // 게시글에 따른 상품들 검색 (다중행) 
		String sql = "SELECT P.PROD_NAME, P.PROD_TOTALSTOCK, P.PROD_SALE, P.PROD_ID, S.SALE_TITLE, S.SALE_NO "
				+ "FROM SALEDETAIL SD "
				+ "INNER JOIN PROD P ON P.PROD_ID = SD.PROD_ID "
				+ "INNER JOIN SALE S ON S.SALE_NO = SD.SALE_NO "
				+ "WHERE S.SALE_NO = ?"; // TEST 
		List<Object> param = new ArrayList<>();
		param.add(input);   //  
		return jdbc.selectList(sql, param);
	}
	
	// 
	public List<Map<String, Object>> selectList(String input) {   // 상품명검색(다중행 (조건))  
		String sql = "SELECT * "
				+ "FROM PROD P "
				+ "INNER JOIN SALEDETAIL SD ON (P.PROD_ID = SD.PROD_ID) "
				+ "INNER JOIN SALE S ON (S.SALE_NO = SD.SALE_NO) "
				+ "WHERE SALE_TITLE LIKE '%'||?||'%'";  // ★시발 이렇게 해야함
		List<Object> param = new ArrayList<>();
		param.add(input);    // ★  해결!
		return jdbc.selectList(sql, param);
	}
	
	public List<Map<String, Object>> searchdesc() {   // 가격내림차순검색(다중행 (조건))  
		String sql = "SELECT P.PROD_NAME, P.PROD_TOTALSTOCK, P.PROD_SALE "
				+ "FROM PROD P "
				+ "INNER JOIN SALEDETAIL SD ON (P.PROD_ID = SD.PROD_ID) "
				+ "INNER JOIN SALE S ON (S.SALE_NO = SD.SALE_NO) "
				+ "ORDER BY 3 DESC";
		return jdbc.selectList(sql);
	}
	
	public List<Map<String, Object>> searchasc() {   // 가격오름차순검색(다중행 (조건))  
		String sql = "SELECT P.PROD_NAME, P.PROD_TOTALSTOCK, P.PROD_SALE "
				+ "FROM PROD P "
				+ "INNER JOIN SALEDETAIL SD ON (P.PROD_ID = SD.PROD_ID) "
				+ "INNER JOIN SALE S ON (S.SALE_NO = SD.SALE_NO) "
				+ "ORDER BY 3 ASC";
		return jdbc.selectList(sql);
	}
	
//	public List<Map<String, Object>> selectList() {   // 별점순검색(다중행))  ★ 존나어렵
//		String sql = "SELECT P.PROD_NAME, P.PROD_TOTALSTOCK, P.PROD_SALE, REVIEW_NO"
//				+ "FROM PROD P "
//				+ "INNER JOIN SALEDETAIL SD ON (P.PROD_ID = SD.PROD_ID) "
//				+ "INNER JOIN SALE S ON (S.SALE_NO = SD.SALE_NO) "
//				+ "ORDER BY ";  
//		List<Object> param = new ArrayList<>();
//		param.add(input);     
//		return jdbc.selectList(sql, param);
//	}
	
	
	public List<Map<String, Object>> searchcategory(String input) {   // 카테고리별 검색(다중행 (조건))  
		String sql = "select p.prod_name, p.prod_totalstock, p.prod_sale, s.sale_no, s.sale_title "
				+ "from lprod l "
				+ "inner join prod p on (l.lprod_gu = p.lprod_gu)"
				+ "inner join saledetail sd on (sd.prod_id = p.prod_id) "
				+ "inner join sale s on (s.sale_no = sd.sale_no)"
				+ "where l.lprod_id = ?";
		List<Object> param = new ArrayList<>();
		param.add(input);    // ★  ? 와 % 이거 어떻게 해야 잘했다고 소문나냐
		return jdbc.selectList(sql,param);
	}
	
	public Map<String, Object> selectOne3 (String input){ // 1행
		String sql = "SELECT PROD_ID FROM PROD WHERE PROD_NAME=?";
		List<Object> param = new ArrayList<>();
		param.add(input);
		return jdbc.selectOne(sql, param);
	}
	

	public Map<String, Object> selectOne2 (){ // 게시글 번호 눌렀을때
		String sql = "SELECT SALE_DETAIL FROM SALE WHERE SALE_NO=?";
		List<Object> param = new ArrayList<>();
		param.add("S100010");
		return jdbc.selectOne(sql, param);
	}
	
	
// cart_qty 설정, prodid, 	
	
	public int addcart(Map<String, Object> param){ 
		String sql = "INSERT INTO CARTDETAIL"
				+ "(CARTDETAIL_NO, CART_ID, CART_QTY, PROD_ID) "
				+ "VALUES (CARTDETAIL_SEQ.NEXTVAL,?,?,?)";
		List<Object> p = new ArrayList<>();
		p.add(Controller.LoginUser.get("MEM_ID").toString()+"cart");
		p.add(param.get("CART_QTY"));
		p.add(param.get("PROD_ID"));
		return jdbc.update(sql, p);
	}
	
	
	
	
	
	
	
	
	
	
	
		}