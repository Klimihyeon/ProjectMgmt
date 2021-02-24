package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import util.JDBCUtil;
import controller.Controller;

public class SelectOrderDao {
   
   private SelectOrderDao(){}
   private static SelectOrderDao instance;
   public static SelectOrderDao getInstance(){
      if(instance == null){
         instance = new SelectOrderDao();   
         }
         return instance;
      }
   
   private static JDBCUtil jdbc = JDBCUtil.getInstance();

   
   public static List<Map<String, Object>> selectorderdetail() {
      
      String sql = "SELECT ORDER_NO, ORDER_COST"
            + " FROM ORDER O"
            + " INNER JOIN MENBER M ON O.MEM_ID = M.MEM_ID"
            + " WHERE M.MEM_ID=?";

      List<Object> param = new ArrayList<>();
      param.add(Controller.LoginUser.get("MEM_ID").toString());

      
      return jdbc.selectList(sql, param);

   }

}