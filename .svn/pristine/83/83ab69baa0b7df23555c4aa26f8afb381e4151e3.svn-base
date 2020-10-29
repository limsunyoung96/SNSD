package kr.co.soccer.apply;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.validation.groups.Default;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.soccer.code.CodeVO;
import kr.co.soccer.code.ICommonCodeService;
import kr.co.soccer.common.valid.ModifyType;
import kr.co.soccer.common.valid.RegistType;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.league.ILeagueService;
import kr.co.soccer.league.LeagueVO;
import kr.co.soccer.login.UserVO;

@Controller
// @RequestMapping("/apply")
public class ApplyController {

	@Autowired
	private IApplyService applyService; // = new ApplyServiceImpl();

	@Inject
	ILeagueService leagueService;
	
	@Inject
	private ICommonCodeService codeService; // = new CommonCodeServiceImpl();

	private final Logger logger = LoggerFactory.getLogger(getClass()); 

	// @ModelAttribute 를 통해 공통으로 사용되는 모델객체 ( 일반적으로 공통코드 목록)
	// 요청메서드 진입 전에 호출 됩니다.
	@ModelAttribute("categoryList")
	public List<CodeVO> getCetegoryList() {
		logger.debug("getCetegoryList call");
		// System.out.println("getCetegoryList call");
		List<CodeVO> categoryList = codeService.getCodeListByParent("RG00");
		return categoryList;
	}

	@RequestMapping(value = { "/apply/applyList.sc", "/apply/" })
	public String applyList(@ModelAttribute("searchVO") ApplySearchVO searchVO, ModelMap model) throws Exception {
		logger.debug("applyList 메서드 call");

		List<ApplyVO> applys = applyService.getApplyPassList(searchVO);
		model.addAttribute("applys", applys);
		return "apply/applyList";
	}

	@RequestMapping("/apply/applyView.sc")
	public String applyView(@RequestParam(value = "boNo") int no,
			@RequestParam(value = "mode", required = false, defaultValue = "sy") String mode, ModelMap model)
			throws Exception {
		try {
			logger.debug("boNo :{} ", no);
			// System.out.println(mode);
			ApplyVO apply = applyService.getApply(no);
			/*
			 * if (apply != null) { applyService.increaseHit(no); }
			 */
			model.addAttribute("applyVo", apply);
			return "apply/applyView";
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(), ex);

			return "common/message";
		}
	}

	@RequestMapping("/apply/applyForm.sc")
	public void applyForm(@ModelAttribute("applyVO") ApplyVO apply, HttpSession session, ModelMap model ) throws Exception {
		// 스프링 폼태그 사용시 해당 모델이름으로 속성에 저장이 되어 있어야 하므로
		// @ModelAttribute를 사용하여 모델 저장. 아래로 대체할 수 있지만 위의 방법을 추천
		
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		apply.setTmId(user.getUserTeamId());
		apply.setTmName(user.getUserTeamName());
		
		// 리그 설정
		LeagueVO league = leagueService.getRecentLeague();
		apply.setLgCode(league.getLgCode());
		apply.setLgName(league.getLgName());
		apply.setLgRegion(league.getLgRegion());
		logger.debug("applyForm의 apply={}", apply);
		model.addAttribute("categorylist", getCetegoryList());
		
		
	}
	
	@RequestMapping("/apply/applyError.sc")
	public void applyError(@ModelAttribute("applyVO") ApplyVO apply) throws Exception {
		// 스프링 폼태그 사용시 해당 모델이름으로 속성에 저장이 되어 있어야 하므로
		// @ModelAttribute를 사용하여 모델 저장. 아래로 대체할 수 있지만 위의 방법을 추천

	}

	@RequestMapping(path = "/apply/applyRegist.sc"
			       , method = RequestMethod.POST )
	public ModelAndView applyRegist(@ModelAttribute("applyVO") @Validated({RegistType.class}) ApplyVO apply
										, BindingResult errors
										, HttpSession session ) throws Exception {
		logger.debug("apply1={}", apply);
				
		ModelAndView mav = new ModelAndView();
		
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		
//		TODO team 세팅해야함
		LeagueVO league = leagueService.getRecentLeague();
		apply.setTmId(user.getUserTeamId());
		apply.setLgCode(league.getLgCode());
		
		
		mav.addObject("vo", apply);
		
		
		if(errors.hasErrors()){
			mav.setViewName("/apply/applyForm");
			return mav;
		}

		
		try {
			applyService.registApply(apply);
			// 글 입력 성공시 메시지를 보여줄 필요 없이 바로 목록으로 가고자 한다면
			// return "redirect:/apply/applyList.sc";
			mav.setViewName("redirect:/apply/applyList.sc");

		} catch (DuplicateKeyException e) {
			logger.error(e.getMessage(), e);
			// 속성에 messageVO 로 저장
			
			mav.setViewName("redirect:/apply/applyError.sc");
		} 
		return mav;

	}

	// applyEdit
	@RequestMapping("/apply/applyEdit.sc")
	public String applyEdit(int boNo, ModelMap model) {
		logger.debug("boNo={}", boNo);
		try {
			ApplyVO apply = applyService.getApply(boNo);
			model.addAttribute("applyVO", apply);
			model.addAttribute("categorylist", getCetegoryList());
			return "apply/applyEdit";

		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(), ex);
			
			return "common/message";
		}
	}

	// applyModify
	// @ModelAttribute는 별칭을 주는 기능이 있고,
	// validated({ModifyType.class})만 쓰면 다른거 있어도 안하고 modifyType.class를 groups로 갖는
	// boNo만 확인함. 따라서 Defalut.calss 필요
	
	@RequestMapping("/apply/applyModify.sc")
	public Map<String, Object> applyModify(
			@ModelAttribute("applyVO") @Validated({ Default.class, ModifyType.class }) ApplyVO apply,
			ModelMap model) throws Exception {
		logger.debug("apply={}", apply);
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			applyService.modifyApply(apply);
			map.put("result", true);
			map.put("msg", "삭제 되었습니다");
		} catch (BizNotFoundException e) {
			logger.error(e.getMessage(), e);
			map.put("result", false);
			map.put("msg", "실패하였습니다.");
			return map;
		} catch (BizPasswordNotMatchedException e) {
			logger.error(e.getMessage(), e);
			map.put("result", false);
			map.put("msg", "실패하였습니다.");
			return map;
		}
		return map;
	}

	@RequestMapping("/apply/applyDelete.sc")
	public String applyDelete(ApplyVO apply, ModelMap model) throws Exception {
		logger.debug("apply={}", apply);
		try {
			applyService.removeApply(apply);

		} catch (BizNotFoundException e) {
			logger.error(e.getMessage(), e);

		} catch (BizPasswordNotMatchedException e) {
			logger.error(e.getMessage(), e);
		}
		return "common/message";
	}

}
