package controller;

import java.util.Map;

import dao.CashDao;
import service.BoardService;
import service.CartService;
import service.CashService;
import service.OrderService;
import service.SelectProdService;
import service.UserService;
import util.ScanUtil;
import util.View;

public class Controller {

	public static void main(String[] args) {
		/*
		 * 발표순서 : 조 소개 > 주제 소개 > 주제 선정 이유 > 메뉴 구조 > 시연
		 * 발표인원 : 발표자 1명, ppt 및 시연 도우미 1명
		 * 
		 * Controller : 화면 이동
		 * Service : 화면 기능
		 * Dao(Data Access Object) : 쿼리작성
		 */
		// [[210222]] 
		//1. (임시)view.main -> 상품조회 첫화면으로 이동
//		    -> 중간에 화면 하나 더 만들어야함(1.내정보, 2.장바구니, 3.상품조회)
		new Controller().start();
	}
	
	public static Map<String, Object> LoginUser; //로그인
	
	
	private UserService userService = UserService.getInstance();
	private BoardService boardService = BoardService.getInstance();
	private CartService cartService = CartService.getInstance();
	private SelectProdService selectProdService = SelectProdService.getInstance();
	private CashService cashService = CashService.getInstance();
	private OrderService orderService = OrderService.getInstance();
	
	private void start() {
		int view = View.HOME;
		
		while(true){
			switch (view) {
				case View.HOME: view = home(); break;
				case View.LOGIN: view = userService.login(); break;
				case View.JOIN: view = userService.join(); break;
				case View.MAIN: view = boardService.boardList(); break;
				case View.SEARCH : view = selectProdService.selectprod1(); break;
				case View.DELMEM : view = userService.delete(); break;
				case View.CART_LIST: view = cartService.cartList(); break;
				case View.DEL_CART : view = cartService.delete(); break;
				case View.SEARCHPROD : view = selectProdService.searchprod(); break;
				case View.CHOOSENUMBER : view = selectProdService.choosenumber(); break;
				case View.SEARCHNAME : view = selectProdService.searchname(); break;
				case View.SEARCHCATEGORY : view = selectProdService.searchcategory(); break;
				case View.SEARCHRATE : view = selectProdService.searchrate(); break;
				case View.SEARCHDESC : view = selectProdService.searchdesc(); break;
				case View.SEARCHASC : view = selectProdService.searchasc(); break;
				case View.ADDCART : view = selectProdService.addcart(); break;
				case View.USERINFO : view = userService.info(); break;
				case View.USERUPDATE : view = userService.update(); break;
				case View.CASHMAIN : view = cashService.selectorderdetail(); break;
				case View.ORDERLIST : view = orderService.selectorderdetail(); break;
				case View.ADD_CART : view = selectProdService.addcart(); break;
				case View.ORDERMAIN : view = orderService.selectorderdetail(); break;
			
			
			}
		}
	}

	private int home() { //홈화면
		System.out.println("--------------------------------------");
		System.out.println("1.로그인\t2.회원가입\t3.유저삭제\t4.유저인포\t0.프로그램 종료");
		System.out.println("--------------------------------------");
		System.out.print("번호 입력>");
		
		
		int input = ScanUtil.nextInt();
		
		switch (input) {
			case 1: return View.LOGIN;
			case 2: return View.JOIN;
			case 3: return View.DELMEM;
			case 4: return View.USERINFO;
			case 5: return View.ADD_CART;
			case 0:
				System.out.println("프로그램이 종료되었습니다.");
				System.exit(0);
		}
		
		return View.HOME;
	}


	
}













