package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.ScanUtil;
import util.View;
import controller.Controller;
import dao.SelectProdDao;

// [[210223.v1]]
//1. 별점순진행중 (별점은 상품을 기준으로 부여하기에. 상품별로 게시글 1개씩 만들어서 게시글을 출력하게끔 뽑아야 할듯.

public class SelectProdService {
	
	private SelectProdService(){}
	private static SelectProdService instance;
	public static SelectProdService getInstance(){
		if(instance == null){
			instance = new SelectProdService();
		}
		return instance;
	}
	
	List<Map<String,Object>> templi = new ArrayList<>();
	HashMap<String, Object> temphm = new HashMap<>();
	int gnumber;
	int snumber;
	private SelectProdDao selectProdDao = SelectProdDao.getInstance();
	
public int selectprod1(){ // 메인화면(추천상품) 1. 상품검색 2. 글번호검색
//	System.out.println(selectProdDao.selectrecommend());
	
	templi = new ArrayList<>();
	List<String> temp = new ArrayList<>(); // 글번호 연동할 리스트 (게시글 상세조회시) (글번호는 상품별로 달림)
	System.out.println("[글번호]\t\t[제목]");
	for(int i=0; i<selectProdDao.selectrecommend().size()-1; i++){
		temphm = new HashMap<>();
		System.out.print("["+i+"] ");
		for(int j=0; j<1; j++){
			System.out.print("\t"+selectProdDao.selectList().get(i).get("SALE_TITLE"));
			temphm.put("SALE_NO",selectProdDao.selectList().get(i).get("SALE_NO")); // 0번글은 리스트 0번째이고 그에 들어간 hashmap에는 prod_id가 저장되어있다.			
		}
		templi.add(temphm);
		System.out.println();
	}
	System.out.println("1. 상품검색    2. 글번호 선택  0. 뒤로");  // 첫화면
	
	int input = ScanUtil.nextInt();
	switch (input) {
	case 1 : 
		return  View.SEARCHPROD; // 1. 상품검색
	case 2 :
		return View.CHOOSENUMBER; // 2. 글번호검색		
	case 0:
		return View.MAIN;// 뒤로
	}
	return View.MAIN; // 아직 보류
}


public int searchprod(){ // 1.상품검색눌렀을때 
	System.out.println("1. 상품명검색   2. 카테고리별  3. 별점순  4. 가격(내림차순) 5. 가격(오름차순)");  // 첫화면
// 단일행으로 해야할듯? // 운영자가 정한 글번호 글 목록 출력
	int input = ScanUtil.nextInt();
	
	switch (input) {
		case 1 :
			return View.SEARCHNAME; // 1. 상품명검색
		case 2 :
			return View.SEARCHCATEGORY;// 2.카테고리별
		case 3 :
			return View.SEARCHRATE; // 3.별점순
		case 4 :
			return View.SEARCHDESC; // 4.가격내림차순
		case 5 :  
			return View.SEARCHASC; // 5.가격오름차순
		case 0: 
			return View.SEARCHPROD;// 뒤로
		}
	
		return View.MAIN; // 아직 보류
		
	}
public int searchname() {
	System.out.println("상품명을 입력해주세요>");
	String input = ScanUtil.nextLine();
//	System.out.println(selectProdDao.selectList(input));
	
	templi = new ArrayList<>();
	List<String> temp = new ArrayList<>(); // 글번호 연동할 리스트 (게시글 상세조회시) (글번호는 상품별로 달림) 
	for(int i=0; i<selectProdDao.selectList(input).size(); i++){
		temphm = new HashMap<>();
		System.out.print("["+i+"] ");
		for(int j=0; j<1; j++){
			System.out.print(" 제목 : "+selectProdDao.selectList(input).get(i).get("SALE_TITLE"));
			System.out.print("// 가격 : "+selectProdDao.selectList(input).get(i).get("PROD_SALE"));
			System.out.print("// 구매가능수량 : "+selectProdDao.selectList(input).get(i).get("PROD_TOTALSTOCK"));
			temphm.put("SALE_NO",selectProdDao.selectList(input).get(i).get("SALE_NO")); // 0번글은 리스트 0번째이고 그에 들어간 hashmap에는 prod_id가 저장되어있다.			
		}
		templi.add(temphm);
		System.out.println();
//		System.out.println("templi : "+templi);
//		System.out.println("temphm : "+temphm);
	}
	System.out.println("1. 글번호 선택 2. 재검색");
		switch (ScanUtil.nextInt()) {
		case 1: { 
			return View.CHOOSENUMBER;

		}
		}
		return View.MAIN;
	}
public int searchrate(){
	System.out.println(selectProdDao.selectList());	
	return View.MAIN; 
}


public int searchcategory() {
	System.out
			.println("1. TV 2. 컴퓨터제품 3. 노트북 4. 태블릿 \n5. 모바일 6. 카메라 7. 음향기기 ");
	System.out.println("번호를 입력>");
	int input = ScanUtil.nextInt();
//	System.out.println(selectProdDao.searchcategory(Integer.toString(input)));
	
	templi = new ArrayList<>();
	List<String> temp = new ArrayList<>(); // 글번호 연동할 리스트 (게시글 상세조회시) (글번호는 상품별로 달림)
	System.out.println("글번호\t\t제목\t\t");
	for(int i=0; i<selectProdDao.searchcategory(Integer.toString(input)).size()-1; i++){
		temphm = new HashMap<>();
		System.out.print("["+i+"] ");
		// i=1부터 이전게시글과 같으면 건너뛰기 기능
		for(int j=0; j<1; j++){
			System.out.print("\t"+selectProdDao.searchcategory(Integer.toString(input)).get(i).get("SALE_TITLE"));
			temphm.put("SALE_NO",selectProdDao.searchcategory(Integer.toString(input)).get(i).get("SALE_NO")); // 0번글은 리스트 0번째이고 그에 들어간 hashmap에는 prod_id가 저장되어있다.			
		}
		System.out.println();
		templi.add(temphm);
	}
//		System.out.println(templi);
//		System.out.println(temphm);
	System.out.println("1. 글 선택 2. 뒤로");
	switch (ScanUtil.nextInt()) { // ★ 위 1,2 이어서
	case 1:
		return View.CHOOSENUMBER; // VIEW.SEARCHNAME맞는지?
	case 2:
		return View.SEARCHCATEGORY;
	}
	return View.MAIN;
}
	
	
	
// ★ 별점기준 내림차순
//public int searchrate(){  
//	System.out.println("별점기준 내림차순으로 정렬합니다.");
//	System.out.println(selectProdDao.searchrate());
//	System.out.println("1. 글 선택 2. 뒤로");
//	return View.MAIN;
//}

public int searchdesc(){
	templi = new ArrayList<>();
	List<String> temp = new ArrayList<>(); // 글번호 연동할 리스트 (게시글 상세조회시) (글번호는 상품별로 달림)
	System.out.println("[글번호]\t\t[제목]");
	
	for(int i=0; i<selectProdDao.searchdesc().size()-1; i++){
		temphm = new HashMap<>();
		System.out.print("["+i+"] ");
		for(int j=0; j<1; j++){
			System.out.print("\t"+selectProdDao.searchdesc().get(i).get("SALE_TITLE"));
			temphm.put("SALE_NO",selectProdDao.searchdesc().get(i).get("SALE_NO")); // 0번글은 리스트 0번째이고 그에 들어간 hashmap에는 prod_id가 저장되어있다.			
		}
		templi.add(temphm);
		System.out.println();
	}
	System.out.println("1. 글 선택 2. 뒤로");

	return View.SEARCHPROD;
}
public int searchasc(){
	templi = new ArrayList<>();
	List<String> temp = new ArrayList<>(); // 글번호 연동할 리스트 (게시글 상세조회시) (글번호는 상품별로 달림)
	System.out.println("[글번호]\t\t[제목]");
	
	for(int i=0; i<selectProdDao.searchdesc().size()-1; i++){
		temphm = new HashMap<>();
		System.out.print("["+i+"] ");
		for(int j=0; j<1; j++){
			System.out.print("\t"+selectProdDao.searchasc().get(i).get("SALE_TITLE"));
			temphm.put("SALE_NO",selectProdDao.searchasc().get(i).get("SALE_NO")); // 0번글은 리스트 0번째이고 그에 들어간 hashmap에는 prod_id가 저장되어있다.			
		}
		templi.add(temphm);
		System.out.println();
	}
	
	System.out.println("1. 글 선택 2. 뒤로");
	
	return View.SEARCHPROD;
}

public int choosenumber(){   // sale_no에 대한 상품리스트 출력 
	System.out.println("글번호를 선택해주세요");  
	snumber = ScanUtil.nextInt(); // 글넘버
//	System.out.println("SALE_NO  : "+templi.get(snumber).get("SALE_NO")); // test용
	Object stemp = templi.get(snumber).get("SALE_NO");
	selectProdDao.selectSaleNo(templi.get(snumber).get("SALE_NO").toString());
// System.out.println(selectProdDao.selectSaleNo(templi.get(snumber).get("SALE_NO").toString())); // test용
//System.out.println("size : "+selectProdDao.selectSaleNo(stemp.toString()).size());  // for문 i범위  
	templi = new ArrayList<>(); // 글번호 연동할 리스트 (게시글 상세조회시) (글번호는 상품별로 달림) 
	for(int i=0; i<selectProdDao.selectSaleNo(stemp.toString()).size(); i++){
		temphm = new HashMap<>();
		System.out.println("["+i+"] ");
			System.out.println("상품명 : "+selectProdDao.selectSaleNo(stemp.toString()).get(i).get("PROD_NAME"));
			System.out.println("가격 : "+selectProdDao.selectSaleNo(stemp.toString()).get(i).get("PROD_SALE"));
			System.out.println("제원 : "+selectProdDao.selectSaleNo(stemp.toString()).get(i).get("PROD_DETAIL"));
			temphm.put("PROD_ID",selectProdDao.selectSaleNo(stemp.toString()).get(i).get("PROD_ID")); // 0번글은 리스트 0번째이고 그에 들어간 hashmap에는 prod_id가 저장되어있다.			
		}
		templi.add(temphm);
//		System.out.println("templi"+templi); // test용
//		System.out.println("temphm"+temphm); // test용
		System.out.println("1. 장바구니에 담기  2.뒤로");
		int input = ScanUtil.nextInt();
		switch (input) {
		case 1: 
			return View.ADD_CART;
		case 2: 
			return View.SEARCHPROD;
	} 
		return View.CHOOSENUMBER;
}



//public int choosenumber(){ // 2. 글번호 선택 눌렀을때(게시글의 상품명, 수량, 가격, 상품설명 출력)
//	
//	System.out.println("글번호를 선택해주세요");  
//		gnumber = ScanUtil.nextInt(); // 글넘버
//		System.out.println("상품id  : "+templi.get(gnumber).get("PROD_ID"));
////		System.out.println(selectProdDao.selectOne2());		// 게시글의 상세내용 출력
//		System.out.println("1. 장바구니에 담기 2. 뒤로가기");
//		int input2 = ScanUtil.nextInt();
//		switch (input2) {
//		case 1 : return View.ADDCART; // 1. 장바구니에 담기
//		case 2 : return View.SEARCHPROD; // 2. 뒤로가기
//	}	
//	return View.MAIN; // 아직 보류
//}


public int addcart(){ // 장바구니 담기
	System.out.println("수량>");
	int cartqty = ScanUtil.nextInt();
	Map<String, Object> param = new HashMap<>();
	param.put("PROD_ID", templi.get(gnumber).get("PROD_ID").toString());
	param.put("CART_QTY", cartqty);
	String cartid = Controller.LoginUser.get("MEM_ID").toString()+"cart";
//	System.out.println("cartid = "+cartid);
	param.put("CART_ID",cartid);
	selectProdDao.addcart(param);
	System.out.println("장바구니에 담겼습니다.");
	return View.MAIN;
}


public static void main(String[] args) {
	SelectProdService sps = new SelectProdService();
	sps.selectprod1();
//	sps.inputcart();
}
}
