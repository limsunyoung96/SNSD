package kr.co.soccer.notice.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.groups.Default;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.soccer.common.ResultMessageVO;
import kr.co.soccer.common.valid.ModifyType;
import kr.co.soccer.common.valid.RegistType;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.exception.DaoDuplicateKeyException;
import kr.co.soccer.notice.service.INoticeBoardService;
import kr.co.soccer.notice.vo.NoticeBoardSearchVO;
import kr.co.soccer.notice.vo.NoticeBoardVO;

@Controller
// @RequestMapping("/notice")
public class NoticeBoardController {

	@Autowired
	private INoticeBoardService noticeBoardService;
	
	/*
	 * @Inject private ICommonCodeService codeService;
	 */
	
	
	
		
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	/*
	 * // @ModelAttribute 를 통해 공통으로 사용되는 모델객체 ( 일반적으로 공통코드 목록) // 요청메서드 진입 전에 호출
	 * 됩니다.
	 * 
	 * @ModelAttribute("cateList") public List<CodeVO> getCetegoryList() {
	 * List<CodeVO> cateList = codeService.getCodeListByParent("BC00"); return
	 * cateList; }
	 */
	
	
	@RequestMapping(value= {"/notice/noticeList.sc", "/notice/"})
	public String noticeList(@ModelAttribute("searchVO") NoticeBoardSearchVO searchVO
			             , ModelMap model ) throws Exception {
		logger.debug("searchVO={}" ,searchVO);
		// 파라미터에 선언한 커멘드 객체는 자동으로 모델에 저장 
		// 이름은 첫글자 소문자 클래스명 
		// 모델정보를 저장 할때는 request 보다는 ModelMap, Model, Map 을 활용 
		
		List<NoticeBoardVO> boards = noticeBoardService.getBoardList(searchVO);
		model.addAttribute("boards", boards);
	 	
	 	return "notice/noticeList";
	}
	
	@RequestMapping("/notice/noticeView.sc")
	public String noticeView(@RequestParam(value = "boNo")  int no 
		  , @RequestParam(value = "mode" , required = false, defaultValue = "admin") String mode
		  , ModelMap model) throws Exception {
		logger.debug("boNo={}" ,no);
		try {			
			System.out.println(mode);
			NoticeBoardVO notice = noticeBoardService.getBoard(no);
			if(notice != null){
				noticeBoardService.increaseHit(no);
			}
			model.addAttribute("notice", notice);			
			return "notice/noticeView";	
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage() ,ex);
			ResultMessageVO message = new ResultMessageVO();
			message.setResult(false)
			       .setTitle("조회실패")
			       .setMessage("해당 글이 존재하지 않습니다.")
			       .setUrl("/notice/noticeList.sc")
			       .setUrlTitle("목록으로");
			model.addAttribute("messageVO", message);
			return "common/message";			
		}
	}
	

	@RequestMapping("/notice/noticeForm.sc")
	public void noticeForm(@ModelAttribute("notice") NoticeBoardVO notice,  ModelMap model) throws Exception {
		// 스프링 폼태그 사용시 해당 모델이름으로 속성에 저장이 되어 있어야 하므로 
		// @ModelAttribute 를 사용하여 모델 저장 
	}	
	
	@RequestMapping(path = "/notice/noticeRegist.sc"
			       , method = RequestMethod.POST )
	public ModelAndView noticeRegist( 
						@ModelAttribute("notice") 
						@Validated({Default.class, RegistType.class}) NoticeBoardVO board
	                  , BindingResult errors     
	                  , @RequestParam(name = "boFiles", required = false) MultipartFile[] boFiles
	                  , HttpServletRequest req) throws Exception {
		logger.debug("board={}" ,board);
		ModelAndView mav = new ModelAndView();
		if(errors.hasErrors()) {
			mav.setViewName("notice/noticeForm");
			return mav;
		}
		

		
		ResultMessageVO message = new ResultMessageVO();		
		try {

			noticeBoardService.registBoard(board);	
			// 글 입력 성공시 메시지를 보여줄 필요 없이 바로 목록으로 가고자 한다면 
			// return "redirect:/notice/noticeList.wow";
			mav.setViewName("redirect:/notice/noticeList.sc");
			
		} catch (DaoDuplicateKeyException e) {
			logger.error(e.getMessage(), e);
			message.setResult(false)
			         .setTitle("글 등록 실패")
			         .setMessage("해당 글번호가 존재합니다.")
			         .setUrl("/notice/noticeList.sc")
			         .setUrlTitle("목록으로");
			// 속성에 messageVO 로 저장 
			mav.addObject("messageVO", message);
			mav.setViewName("common/message");
		}	
		
		return mav;
	}
	
	
	// noticeEdit
	@RequestMapping("/notice/noticeEdit.sc")
	public String noticeEdit(int boNo, ModelMap model) {
		logger.debug("boNo={}" ,boNo);
		try {
			NoticeBoardVO notice = noticeBoardService.getBoard(boNo);
			model.addAttribute("notice", notice);
			return "notice/noticeEdit";

		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(), ex);
			ResultMessageVO message = new ResultMessageVO();
			message.setResult(false).setTitle("조회 실패").setMessage("해당 글이 존재하지 않습니다.").setUrl("/notice/noticeList.sc")
					.setUrlTitle("목록으로");
			model.addAttribute("messageVO", message);
			return "common/message";
		}
	}
	
	// noticeModify
	@RequestMapping("/notice/noticeModify.sc")
	public String noticeModify( @ModelAttribute("notice") @Validated({Default.class, ModifyType.class}) NoticeBoardVO board
			                , BindingResult errors
			                , ModelMap model) throws Exception {		
		logger.debug("board={}" ,board);		
		if(errors.hasErrors()) {
			// 검증오류가 있으므로 입력화면으로 뷰 이동   
			logger.debug("errors={}" ,errors);
			return "notice/noticeEdit"; 
		}
		
		ResultMessageVO messageVO = new ResultMessageVO();		
		try {
			noticeBoardService.modifyBoard(board);
			return "redirect:/notice/noticeView.sc?boNo=" + board.getBoNo();  
			
		} catch (BizNotFoundException e) {
			logger.error(e.getMessage(), e);
			messageVO.setResult(false)  
					 .setTitle("글 수정 실패")
					 .setMessage("해당 글이 존재하지 않습니다.")
					 .setUrl("/notice/noticeList.sc")
					 .setUrlTitle("목록으로"); // Method Chaining
		} catch (BizPasswordNotMatchedException e) {
			logger.error(e.getMessage(), e);
			messageVO.setResult(false)  
		     		 .setTitle("글 수정 실패")
		     		 .setMessage("해당 글 비밀번호가 일치하지 않습니다.")
		     		 .setUrl("/notice/noticeList.sc")
		     		 .setUrlTitle("목록으로"); // Method Chaining
		} 
		// 속성에 messageVO로 저장
		model.addAttribute("messageVO", messageVO);
		return "common/message";
	}
	
	@RequestMapping("/notice/noticeDelete.sc")
	public String noticeDelete(NoticeBoardVO board, ModelMap model) throws Exception {
		logger.debug("board={}" ,board);
		ResultMessageVO messageVO = new ResultMessageVO();
		try {
			noticeBoardService.removeBoard(board);
			
			messageVO.setResult(true)  
				     .setTitle("글 삭제 성공")
				     .setMessage("선택하신 목록이 삭제 되었습니다.")
				     .setUrl("/notice/noticeList.sc")
				     .setUrlTitle("목록으로"); // Method Chaining
			
		} catch (BizNotFoundException e) {
			logger.error(e.getMessage(), e);
			messageVO.setResult(false)  
					 .setTitle("글 삭제 실패")
					 .setMessage("해당 글이 존재하지 않습니다.")
					 .setUrl("/notice/noticeList.sc")
					 .setUrlTitle("목록으로"); // Method Chaining
			
		} catch (BizPasswordNotMatchedException e) {
			logger.error(e.getMessage(), e);
			messageVO.setResult(false)  
					 .setTitle("글 삭제 실패")
					 .setMessage("해당 글 비밀번호가 일치하지 않습니다.")
					 .setUrl("/notice/noticeList.sc")
					 .setUrlTitle("목록으로"); // Method Chaining
		}
		// 속성에 messageVO로 저장
		model.addAttribute("messageVO", messageVO);
		return "common/message";
	}
	
}






