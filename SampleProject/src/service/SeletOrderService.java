package service;


import java.util.List;
import java.util.Map;

import util.JDBCUtil;
import util.ScanUtil;
import util.View;
import dao.SelectOrderDao;

public class SeletOrderService {
   
   JDBCUtil jdbc = JDBCUtil.getInstance();
   private SelectOrderDao selectorderDao = SelectOrderDao.getInstance();
   
   public SeletOrderService(){}
   private static SeletOrderService instance;
   public static SeletOrderService getInstance(){
      if(instance == null){
         instance = new SeletOrderService();         
         }
         return instance;
      }
   
   public int selectorderdetail(){

      
      List<Map<String, Object>> SelectOrderList = SelectOrderDao.selectorderdetail();
      
      System.out.println("======================================");
      System.out.println("================주문목록================");
      for(Map<String, Object> selectorder : SelectOrderList){
         System.out.println(selectorder.get("O.ORDER_NO"));}
      for(Map<String, Object> order : SelectOrderList){
         System.out.println(order.get("O.ORDER_COST"));}

      System.out.println("1.주문확정\t2.돌아가기");
      System.out.println("입력>");
      
      int input = ScanUtil.nextInt();
      switch (input) {
      case 1 : 

         break;
         
      case 2 :

         break;
         
         
      case 0 :
         System.out.println("프로그램이 종료되었습니다.");
         System.exit(0);
         break;
   }
      
//      return View.ORDER_LIST;
      return 1;

   }


}