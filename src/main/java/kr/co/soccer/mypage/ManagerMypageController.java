package kr.co.soccer.mypage;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soccer.apply.ApplySearchVO;
import kr.co.soccer.apply.ApplyVO;
import kr.co.soccer.apply.IApplyService;
import kr.co.soccer.league.ILeagueService;
import kr.co.soccer.league.LeagueVO;
import kr.co.soccer.manager.IManagerService;
import kr.co.soccer.member.IMemberService;
import kr.co.soccer.member.MemberVO;
import kr.co.soccer.team.ITeamService;
import kr.co.soccer.team.TeamSearchVO;
import kr.co.soccer.team.TeamVO;

@Controller
public class ManagerMypageController {

	@Inject
	private IManagerService managerService;
	@Inject
	private IMemberService memberService;
	@Inject
	private IApplyService applyService;
	@Inject
	private ITeamService teamService;
	@Inject
	ILeagueService leagueService;
	
	private final Logger logger = LoggerFactory.getLogger(getClass()); 
	
	@RequestMapping("mypage/managerMypage.sc")
	public String managerMypage(@ModelAttribute("searchVO") ApplySearchVO searchVO,TeamSearchVO tmSeatchVO, HttpServletRequest req, HttpServletResponse resp, ModelMap model) throws Exception {
		/*
		 * HttpSession session = req.getSession(); UserVO user = (UserVO)
		 * session.getAttribute("USER_INFO"); String manageId = user.getUserId();
		 * ManagerVO vo = managerService.getManager(manageId);
		 * req.setAttribute("manage", vo);
		 */
		
		List<ApplyVO> applys = applyService.getApplyList(searchVO);
		List<TeamVO> teams = teamService.getTeamList(tmSeatchVO);
		List<MemberVO> members = memberService.getMemberList();
		List<LeagueVO> leagues = leagueService.getLeagueList();
		model.addAttribute("leagues",leagues);
		model.addAttribute("members", members);
		model.addAttribute("applys", applys);
		model.addAttribute("teams", teams);
		return "/mypage/managerMypage";
	}
	
	
}
