package kr.co.soccer.team;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.soccer.common.valid.RegistType;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.login.UserVO;

@Controller
// @RequestMapping("/free")
public class TeamController {

	@Autowired
	private ITeamService teamBoardService; // = new TeamServiceImpl();

	@Inject
	private TeamAttachUtils attachUtils;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping(value = { "/team/teamList.sc", "/team/" })
	public String teamList(@ModelAttribute("searchVO") TeamSearchVO searchVO, ModelMap model) throws Exception {
		logger.debug("teamList 메서드 call");
		// System.out.println("teamList 메서드 call");
		// 파라미터에 선언한 커멘드 객체는 자동으로 모델에 저장
		// 이름은 첫글자 소문자 클래스명
		// 모델정보를 저장 할때는 request 보다는 ModelMap, Model, Map 을 활용
		logger.debug("***********teamList의 searchVO={}",searchVO);
		
		List<TeamVO> teams = teamBoardService.getTeamList(searchVO);
		model.addAttribute("teams", teams);

		return "team/teamList";
	}

	@RequestMapping("/team/teamView.sc")
	public String teamView(@RequestParam(value = "tmId") int no,
			@RequestParam(value = "mode", required = false, defaultValue = "sy") String mode, ModelMap model)
			throws Exception {
		try {
			logger.debug("mode :{} ", mode);
			// System.out.println(mode);
			TeamVO team = teamBoardService.getTeam(no);
			model.addAttribute("boardVo", team);
			
			return "team/teamView";
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(), ex);
			
			return "common/message";
		}
	}

	@RequestMapping("/team/teamForm.sc")
	public void teamForm(@ModelAttribute("boardVO") TeamVO teamVO) throws Exception {
		// 스프링 폼태그 사용시 해당 모델이름으로 속성에 저장이 되어 있어야 하므로
		// @ModelAttribute를 사용하여 모델 저장. 아래로 대체할 수 있지만 위의 방법을 추천

	}
	
	@RequestMapping("/team/teamError.sc")
	public void teamError(@ModelAttribute("boardVO") TeamVO teamVO) throws Exception {
		// 스프링 폼태그 사용시 해당 모델이름으로 속성에 저장이 되어 있어야 하므로
		// @ModelAttribute를 사용하여 모델 저장. 아래로 대체할 수 있지만 위의 방법을 추천

	}

	@RequestMapping(path = "/team/teamRegist.sc"
			       , method = RequestMethod.POST )
	public ModelAndView teamRegist(@ModelAttribute("boardVO") @Validated({RegistType.class}) TeamVO teamVO
										, BindingResult errors
										, @RequestParam(name="tmAtch", required = false) MultipartFile file
										, HttpServletRequest req
										, HttpSession session) throws Exception {
		logger.debug("teamVO={}", teamVO);
				
		
		ModelAndView mav = new ModelAndView();
		
		if(errors.hasErrors()){
			mav.setViewName("/team/teamForm");
			return mav;
		}

		if (file != null) {
			String attach = attachUtils.getAttachByMultipart(file, teamVO);
			teamVO.setTmAtchName(attach);
		}

		try {
			UserVO user = (UserVO) session.getAttribute("USER_INFO");
			teamVO.setMemId(user.getUserId());
			teamVO.setMemName(user.getUserName());
			
			teamBoardService.registTeam(teamVO);
			mav.setViewName("redirect:/team/teamList.sc");
		} catch (DuplicateKeyException e) {
			mav.setViewName("redirect:/team/teamError.sc");
		} 
		return mav;

	}

	// teamEdit
	@RequestMapping("/team/teamEdit.sc")
	public String teamEdit(int tmId, ModelMap model) {
		logger.debug("tmId={}", tmId);
		try {
			TeamVO team = teamBoardService.getTeam(tmId);
			model.addAttribute("boardVO", team);
			return "team/teamEdit";
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(), ex);
			
			return "common/message";
		}
	}

	@RequestMapping("/team/teamModify.sc")
	public String teamModify(@ModelAttribute("boardVO") TeamVO team
								, @RequestParam(name="tmAtch", required = false) MultipartFile file
								, BindingResult errors, ModelMap model
								) throws Exception {
		logger.debug("team={}", team);
		
		logger.debug("file={}", file);

		if (errors.hasErrors()) {
			// 검증 오류가 있으므로 입력화면으로 뷰 이동
			return "team/teamEdit";
		}
		
		if (file != null) {
			String attach = attachUtils.getAttachByMultipart(file, team);
			team.setTmAtchName(attach);
		}

		try {
			teamBoardService.modifyTeam(team);
			return "redirect:/team/teamView.sc?tmId=" + team.getTmId();
		} catch (BizNotFoundException e) {
			logger.error(e.getMessage(), e);
		} 
		return "common/message";
	}

}
