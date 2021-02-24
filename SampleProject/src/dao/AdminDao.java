package dao;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import util.JDBCUtil;
public class AdminDao {
		private AdminDao(){}
		private static AdminDao instance;
		public static AdminDao getInstance(){
			if(instance == null){
				instance = new AdminDao();
			}
			return instance;
		}
		
		private JDBCUtil jdbc = JDBCUtil.getInstance();
		
		public Map<String, Object> Adminselect(String userId) {
			String sql = "select * from MEMBER where MEM_ID = ?";
			List<Object> param = new ArrayList<>();
			param.add(userId);
			return jdbc.selectOne(sql, param);
		}
		
		
		public List<Map<String, Object>> AdminUserInfo() {
			String sql = "select * from MEMBER";
			
			return jdbc.selectList(sql);
			
		}
		
	}

