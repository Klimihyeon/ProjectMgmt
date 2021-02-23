package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.JDBCUtil;
import util.View;

public class CartDao {
	
		private CartDao(){}
		private static CartDao instance;
		public static CartDao getInstance(){
			if(instance == null){
				instance = new CartDao();
			}
			return instance;
		}
	
		private JDBCUtil jdbc = JDBCUtil.getInstance();
		
		public List<Map<String, Object>> selectCartList(){
			String sql = "select a.cartdetail_no, a.cart_id, a.cart_qty, a.prod_id"
					+ " from cartdetail a";
/*					+ " left outer join prod b"
					+ " on a.user_id = "
					+ " order by a.board_no desc";
*/			
			return jdbc.selectList(sql);
		}
		public int deleteCartList(Map<String, Object> param){
			String sql = "delete from cartdetail where cartdetail_no = ?";
							
				List<Object> p = new ArrayList<>();
				p.add(param.get("cartdetail_no"));
				
				return jdbc.update(sql, p);
		}
	
}
