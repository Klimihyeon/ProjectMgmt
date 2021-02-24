package controller;

import java.util.Map;

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
				case View.BOARD_LIST: view = boardService.boardList(); break;
				case View.MAIN : view = mainScreen(); break; // 로그인 후 첫화면
				case View.SEARCHSCREEN : view = selectProdService.searchscreen(); break; // 1. 상품조회
				case View.DELMEM : view = userService.delete(); break;
				case View.CART_LIST: view = cartService.cartList(); break;
				case View.DEL_CART : view = cartService.delete(); break;
				case View.SEARCHPROD : view = selectProdService.searchprod(); break; // 1-1상품검색
				case View.CHOOSENUMBER : view = selectProdService.choosenumber(); break; // 게시글 선택하면 나오는페이지
				case View.SEARCHNAME : view = selectProdService.searchname(); break; // 1-1-1상품명검색 
				case View.SEARCHCATEGORY : view = selectProdService.searchcategory(); break; // 1-1-2카테고리별검색
				case View.SEARCHRATE : view = selectProdService.searchrate(); break; // 1-1-3별점순정렬
				case View.SEARCHDESC : view = selectProdService.searchdesc(); break; // 1-1-4가격 내림차순
				case View.SEARCHASC : view = selectProdService.searchasc(); break; // 1-1-5가격  오름차순
				case View.ADDCART : view = selectProdService.addcart(); break; // 카트에상품추가
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
		System.out.println("1.로그인\t2.회원가입\t0.프로그램 종료");
		System.out.println("--------------------------------------");
		System.out.print("번호 입력>");
		
		
		int input = ScanUtil.nextInt();
		
		switch (input) {
			case 1: return View.LOGIN;
			case 2: return View.JOIN;
			case 0:
				System.out.println("프로그램이 종료되었습니다.");
				System.exit(0);
		}
		
		return View.HOME;
	}
	private int mainScreen() { // 메인메뉴
		System.out.println("--------------------------------------");
		System.out.println("1.상품조회 \t2.장바구니\t3.내정보");
		System.out.println("--------------------------------------");
		System.out.print("번호 입력>");

		int input = ScanUtil.nextInt();
			switch (input) {
			case 1: return View.MAIN;
			case 2: return View.CART_LIST; 
			case 3: return View.USERINFO;
			case 0: {
				System.out.println("프로그램이 종료되었습니다.");
				System.exit(0);
		}
		}
		return View.SEARCHSCREEN;
	}
}












