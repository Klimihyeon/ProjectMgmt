package com.spring.controller.student;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.command.cqb.CqbReplyModifyCommand;
import com.spring.command.cqb.CqbReplyRegistCommand;
import com.spring.command.pagemaker.PageMaker;
import com.spring.command.pagemaker.SearchCriteria;
import com.spring.dto.CqbReplyVO;
import com.spring.service.cqbReply.CqbReplyService;

// url : /replies

// bno번 게시글의 페이징 처리된 댓글 목록
// /replies/{bno}/{page} 			page list: GET방식

// /replies/{rno}					modify : PUT,PATCH방식, rno 댓글의 수정 
// /replies/{bno}/{rno}/{page}		remove : DELETE 방식, rno 댓글의 삭제
// /replies 						regist : POST 방식 : 댓글 입력


@RestController
@RequestMapping("/student/manage/board/qna/replies")
public class StudentCqbReplyController {


	@Autowired
	private CqbReplyService service;
	
	
	@RequestMapping(value="/{cqbNo}/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> replyList(@PathVariable("cqbNo") String cqbNo, 
														 @PathVariable("page") int page)throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(page);
		
		try {
			Map<String, Object> dataMap = service.getReplyList(cqbNo, cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap,HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

//		System.out.println("Controller에서 page:"+page);
		return entity;
		
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody CqbReplyRegistCommand registReq)	throws Exception {
		ResponseEntity<String> entity = null;
		
		CqbReplyVO reply = registReq.toCqbReplyVO();	
		try {
			service.registReply(reply);

			SearchCriteria cri = new SearchCriteria();

			Map<String, Object> dataMap = service.getReplyList(reply.getCqbNo(),cri);
			PageMaker pageMaker = (PageMaker) dataMap.get("pageMaker");
			int realEndPage = pageMaker.getRealEndPage();

			entity = new ResponseEntity<String>("SUCCESS,"+realEndPage,HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),
					HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;
	}

	@RequestMapping(value = "/{cqbRno}", method = { RequestMethod.PUT,RequestMethod.PATCH })
	public ResponseEntity<String> modify(@PathVariable("cqbRno") String cqbRno,@RequestBody CqbReplyModifyCommand modifyReq) 
																					throws Exception {
		ResponseEntity<String> entity = null;
		
		CqbReplyVO cqbReply = modifyReq.toCqbReplyVO();
		cqbReply.setCqbRno(cqbRno);
		
		try {
			service.modifyReply(cqbReply);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;
	}
	
	@RequestMapping(value="/{cqbNo}/{cqbRno}/{page}",method=RequestMethod.DELETE)
	public ResponseEntity<String> remove(@PathVariable("cqbRno") String cqbRno,
										 @PathVariable("cqbNo") String cqbNo,
										 @PathVariable("page") int page) throws Exception{
		ResponseEntity<String> entity=null;
		try{
			service.removeReply(cqbRno);
			
			SearchCriteria cri= new SearchCriteria();
						
			Map<String,Object> dataMap=service.getReplyList(cqbNo, cri);
			PageMaker pageMaker = (PageMaker)dataMap.get("pageMaker");
			
			int realEndPage=pageMaker.getRealEndPage();
			if(page>realEndPage){page=realEndPage;}
			
			
			entity=new ResponseEntity<String>(""+page,HttpStatus.OK);
		}catch(SQLException e){
			e.printStackTrace();
			entity=new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
}





