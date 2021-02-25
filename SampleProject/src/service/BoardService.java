package service;

import java.util.List;
import java.util.Map;

import util.ScanUtil;
import util.View;
import dao.BoardDao;
import dao.NoticeDao;

public class BoardService {
	
	private BoardService(){}
	private static BoardService instance;
	public static BoardService getInstance(){
		if(instance == null){
			instance = new BoardService();
		}
		return instance;
	}
	
	private BoardDao boardDao = BoardDao.getInstance();
	private NoticeDao noticeDao = NoticeDao.getInstance();
	
	public int boardList(){
		List<Map<String, Object>> boardList = boardDao.selectBoardList();
		System.out.println("==========================🔔(+"+noticeDao.selectnoticenoread().size()+")=======");
		System.out.println("=======================================");
		System.out.println("-------------오늘의 핫딜!-------------");
		System.out.println("제품\t\t\t가격");
		
		for(Map<String, Object> board : boardList){
			System.out.println(board.get("PROD_NAME"));
			System.out.print("\t" + "\t" + "\t");
			System.out.println(board.get("PROD_SALE"));
		}
		System.out.println("=======================================");
		System.out.println("1.상품조회 \t 2.카트조회 \t 3.유저정보 \t 0.로그아웃");
		System.out.print("입력>");
		
		int input = ScanUtil.nextInt();
		switch (input) {
		case 1:
			return View.SEARCHSCREEN;
		case 2:
			return View.CARTLIST;			
		case 3:
			return View.USERINFO;			
		case 0:
			return View.HOME;
			
		}
		return View.MAIN;
	}
	
}









