package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.BoardDao;
import dao.CartDao;
import util.ScanUtil;
import util.View;

public class CartService {

	private CartService(){}
	private static CartService instance;
	public static CartService getInstance(){
		if(instance == null){
			instance = new CartService();
		}
		return instance;
	}
	
	private CartDao cartDao = CartDao.getInstance();
	
	public int cartList(){
		List<Map<String, Object>> cartList = cartDao.selectCartList();
		
		System.out.println("=======================================");
		System.out.println("카트넘버\t카트ID\t수량\t제품");
		System.out.println("---------------------------------------");
		for(Map<String, Object> cart : cartList){
			System.out.println(cart.get("cartdetail_no")
					+ "\t" + cart.get("cart_id")
					+ "\t" + cart.get("cart_qty")
					+ "\t" + cart.get("prod_id"));
			if(cart.get("cartdetail_no") == null) {
				System.out.println("카트에 담긴 상품이 없습니다.");
				
			}
		}
	
		System.out.println("=======================================");
		System.out.println("1.물품등록\t2.등록\t3.물품삭제");
		System.out.print("입력>");
		
		int input = ScanUtil.nextInt();
		switch (input) {
		case 1:
		return View.BOARD_LIST;
		case 2:
		break;
		case 3:
//		return View.CART_D_LIST;
		}
		return View.CART_LIST;
	}
	
	public int delete(){
		System.out.println("지우고 싶은 목록 버튼을 눌러주세요.");
		int cartNo = ScanUtil.nextInt();
		
		Map<String, Object> param = new HashMap<>();
		
		param.put("Cartdetailno", cartNo);
		
		int result = cartDao.deleteCartList(param);
		
		if(0 < result){
			System.out.println("장바구니 비우기 성공");
		}else{
			System.out.println("장바구니 비우기 실패");
		}
		
		return View.CART_LIST;         
	}
	
	
	
	
}
