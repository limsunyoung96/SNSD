package kr.co.soccer.free.web;

import java.util.List;

import javax.inject.Inject;
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

import kr.co.soccer.code.ICommonCodeService;
import kr.co.soccer.common.ResultMessageVO;
import kr.co.soccer.common.valid.ModifyType;
import kr.co.soccer.common.valid.RegistType;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.exception.DaoDuplicateKeyException;
import kr.co.soccer.free.service.IFreeBoardService;
import kr.co.soccer.free.vo.FreeBoardSearchVO;
import kr.co.soccer.free.vo.FreeBoardVO;

@Controller
// @RequestMapping("/free")
public class FreeBoardController {

	@Autowired
	private IFreeBoardService freeBoardService;
	
	@Inject
	private ICommonCodeService codeService;

			
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	// @ModelAttribute 를 통해 공통으로 사용되는 모델객체 ( 일반적으로 공통코드 목록)
	// 요청메서드 진입 전에 호출 됩니다.
	
	@RequestMapping(value= {"/free/freeList.sc", "/free/"})
	public String freeList(@ModelAttribute("searchVO") FreeBoardSearchVO searchVO
			             , ModelMap model ) throws Exception {
		logger.debug("searchVO={}" ,searchVO);
		// 파라미터에 선언한 커멘드 객체는 자동으로 모델에 저장 
		// 이름은 첫글자 소문자 클래스명 
		// 모델정보를 저장 할때는 request 보다는 ModelMap, Model, Map 을 활용 
		
		List<FreeBoardVO> boards = freeBoardService.getBoardList(searchVO);
		model.addAttribute("boards", boards);
	 	
	 	return "free/freeList";	
	}
	
	@RequestMapping("/free/freeView.sc")
	public String freeView(@RequestParam(value = "boNo")  int no 
		  , @RequestParam(value = "mode" , required = false, defaultValue = "soccer") String mode
		  , ModelMap model) throws Exception {
		logger.debug("boNo={}" ,no);
		try {			
			System.out.println(mode);
			FreeBoardVO free = freeBoardService.getBoard(no);
			if(free != null){
				freeBoardService.increaseHit(no);
			}
			model.addAttribute("free", free);			
			return "free/freeView";	
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage() ,ex);
			ResultMessageVO message = new ResultMessageVO();
			message.setResult(false)
			       .setTitle("조회실패")
			       .setMessage("해당 글이 존재하지 않습니다.")
			       .setUrl("/free/freeList.sc")
			       .setUrlTitle("목록으로");
			model.addAttribute("messageVO", message);
			return "common/message";			
		}
	}
	

	@RequestMapping("/free/freeForm.sc")
	public void freeForm(@ModelAttribute("free") FreeBoardVO free,  ModelMap model) throws Exception {
		// 스프링 폼태그 사용시 해당 모델이름으로 속성에 저장이 되어 있어야 하므로 
		// @ModelAttribute 를 사용하여 모델 저장 
	}	
	
	@RequestMapping(path = "/free/freeRegist.sc"
			       , method = RequestMethod.POST )
	public ModelAndView freeRegist( 
						@ModelAttribute("free") 
						@Validated({Default.class, RegistType.class}) FreeBoardVO board
	                  , BindingResult errors     
	                  , @RequestParam(name = "boFiles", required = false) MultipartFile[] boFiles
	                  , HttpServletRequest req) throws Exception {
		logger.debug("board={}" ,board);
		ModelAndView mav = new ModelAndView();
		if(errors.hasErrors()) {
			mav.setViewName("free/freeForm");
			return mav;
		}
		
			
		
		ResultMessageVO message = new ResultMessageVO();		
		try {
			freeBoardService.registBoard(board);	
			// 글 입력 성공시 메시지를 보여줄 필요 없이 바로 목록으로 가고자 한다면 
			// return "redirect:/free/freeList.wow";
			mav.setViewName("redirect:/free/freeList.sc");
			
		} catch (DaoDuplicateKeyException e) {
			logger.error(e.getMessage(), e);
			message.setResult(false)
			         .setTitle("글 등록 실패")
			         .setMessage("해당 글번호가 존재합니다.")
			         .setUrl("/free/freeList.sc")
			         .setUrlTitle("목록으로");
			// 속성에 messageVO 로 저장 
			mav.addObject("messageVO", message);
			mav.setViewName("common/message");
		}	
		
		return mav;
	}
	
	
	// freeEdit
	@RequestMapping("/free/freeEdit.sc")
	public String freeEdit(int boNo, ModelMap model) {
		logger.debug("boNo={}" ,boNo);
		try {
			FreeBoardVO free = freeBoardService.getBoard(boNo);
			model.addAttribute("free", free);
			return "free/freeEdit";

		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(), ex);
			ResultMessageVO message = new ResultMessageVO();
			message.setResult(false).setTitle("조회 실패").setMessage("해당 글이 존재하지 않습니다.").setUrl("/free/freeList.sc")
					.setUrlTitle("목록으로");
			model.addAttribute("messageVO", message);
			return "common/message";
		}
	}
	
	// freeModify
	@RequestMapping("/free/freeModify.sc")
	public String freeModify( @ModelAttribute("free") @Validated({Default.class, ModifyType.class}) FreeBoardVO board
			                , BindingResult errors
			                , ModelMap model) throws Exception {		
		logger.debug("board={}" ,board);		
		if(errors.hasErrors()) {
			// 검증오류가 있으므로 입력화면으로 뷰 이동   
			logger.debug("errors={}" ,errors);
			return "free/freeEdit"; 
		}
		
		ResultMessageVO messageVO = new ResultMessageVO();		
		try {
			freeBoardService.modifyBoard(board);
			return "redirect:/free/freeView.sc?boNo=" + board.getBoNo();  
			
		} catch (BizNotFoundException e) {
			logger.error(e.getMessage(), e);
			messageVO.setResult(false)  
					 .setTitle("글 수정 실패")
					 .setMessage("해당 글이 존재하지 않습니다.")
					 .setUrl("/free/freeList.sc")
					 .setUrlTitle("목록으로"); // Method Chaining
		} catch (BizPasswordNotMatchedException e) {
			logger.error(e.getMessage(), e);
			messageVO.setResult(false)  
		     		 .setTitle("글 수정 실패")
		     		 .setMessage("해당 글 비밀번호가 일치하지 않습니다.")
		     		 .setUrl("/free/freeList.sc")
		     		 .setUrlTitle("목록으로"); // Method Chaining
		}
		// 속성에 messageVO로 저장
		model.addAttribute("messageVO", messageVO);
		return "common/message";
	}
	
	@RequestMapping("/free/freeDelete.sc")
	public String freeDelete(FreeBoardVO board, ModelMap model) throws Exception {
		logger.debug("board={}" ,board);
		ResultMessageVO messageVO = new ResultMessageVO();
		try {
			freeBoardService.removeBoard(board);
			
			messageVO.setResult(true)  
				     .setTitle("글 삭제 성공")
				     .setMessage("선택하신 목록이 삭제 되었습니다.")
				     .setUrl("/free/freeList.sc")
				     .setUrlTitle("목록으로"); // Method Chaining
			
		} catch (BizNotFoundException e) {
			logger.error(e.getMessage(), e);
			messageVO.setResult(false)  
					 .setTitle("글 삭제 실패")
					 .setMessage("해당 글이 존재하지 않습니다.")
					 .setUrl("/free/freeList.sc")
					 .setUrlTitle("목록으로"); // Method Chaining
			
		} catch (BizPasswordNotMatchedException e) {
			logger.error(e.getMessage(), e);
			messageVO.setResult(false)  
					 .setTitle("글 삭제 실패")
					 .setMessage("해당 글 비밀번호가 일치하지 않습니다.")
					 .setUrl("/free/freeList.sc")
					 .setUrlTitle("목록으로"); // Method Chaining
		}
		// 속성에 messageVO로 저장
		model.addAttribute("messageVO", messageVO);
		return "common/message";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}