package kr.co.soccer.mypage;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soccer.login.UserVO;
import kr.co.soccer.member.IMemberService;
import kr.co.soccer.member.MemberVO;
import kr.co.soccer.searchTeamMem.SearchTeamMemVO;
import kr.co.soccer.team.ITeamService;
import kr.co.soccer.team.TeamVO;

@Controller
public class MemberMypageController {

	@Inject
	private IMemberService memberService;
	
	@Inject
	private ITeamService teamBoardService;

	@Inject
	private MemberMyPageService service;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping("mypage/memberMypage.sc")
	public String memberMypage(ModelMap model, HttpSession session) throws Exception {
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		String memId = user.getUserId();

		MemberVO mem = memberService.getMember(memId);
		model.addAttribute("mem", mem);
		
		// 팀 정보를 위해
		TeamVO team = teamBoardService.getTeam2(memId);
		
		model.addAttribute("team", team);
		logger.debug("***team={}",team);

		Map<String, Object> map = new HashedMap();
		int tmId = mem.getMemTeamId();
		if(tmId>0) {
			map.put("tmId", tmId);
		}else {
			map.put("memId", memId);
		}
		List<SearchTeamMemVO> list = service.selectSearchTeamMemMatch(map);
		model.addAttribute("list", list);
		return "/mypage/memberMypage";
	}
	
	@RequestMapping("mypage/memberMypageSearch.sc")
	public String selectSearchList(ModelMap model,HttpSession session) throws Exception{
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		String memId = user.getUserId();

		MemberVO mem = memberService.getMember(memId);
		
		model.addAttribute("mem", mem);
		Map<String, Object> map = new HashedMap();
		int tmId = mem.getMemTeamId();
		if(tmId>0) {
			map.put("tmId", tmId);
		}else {
			map.put("memId", memId);
		}
		List<SearchTeamMemVO> list = service.selectSearchTeamMemMatchList(map);
		model.addAttribute("list", list);
		return "/mypage/memberMypageSearch";
		
	}
}
