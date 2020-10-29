package kr.co.soccer.league;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.soccer.code.CodeVO;
import kr.co.soccer.code.ICommonCodeService;
import kr.co.soccer.leagueResult.LeagueResultVO;

@Controller
public class LeagueController {

	@Inject
	ICommonCodeService codeService;
	@Inject
	ILeagueService leagueService;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@ModelAttribute("joinTeamList") 
	public List<CodeVO> getCodeListByParentJT() {
		 List<CodeVO> joinTeamList = codeService.getCodeListByParent("JT00"); 
		 return joinTeamList;
	}
	
	@ModelAttribute("regionList") 
	public List<CodeVO> getCodeListByParentRG() {
		List<CodeVO> regionList = codeService.getCodeListByParent("RG00"); 
		return regionList;
	}
	
	@GetMapping("league/leagueForm.sc")
	public String leagueForm(ModelMap model) {
		List<LeagueVO> leagues = leagueService.getLeagueList();
		model.addAttribute("leagues",leagues);
		return "/league/leagueForm";
	}
	
	@PostMapping("league/leagueRegist.sc")
	public String leagueRegist(@ModelAttribute("leagues") LeagueVO league) throws Exception {
		logger.debug("leagueRegist의 leagues={}",league);
		leagueService.registLeague(league);
		return "../../index";
	}
	
	@GetMapping("league/leagueList.sc")
	public void leagueList(ModelMap model) {
		List<LeagueVO> leagues = leagueService.getLeagueList();
		List<LeagueVO> leaguesForGuests = leagueService.getLeagueListForGuests();
		
		model.addAttribute("leagues",leagues);
		model.addAttribute("leaguesForGuests",leaguesForGuests);
	}
	
	@GetMapping(path ="league/leagueView.sc",params="lgCode")
	public void leagueView(String lgCode, ModelMap model) throws Exception {
		List<LeagueVO> leagues = leagueService.getLeagueView(lgCode);
		List<LeagueVO> leaguesForGuests = leagueService.getLeagueListForGuests();
		int isConfirm = leagueService.isLeagueConfirm(lgCode);
		
		model.addAttribute("leaguesForGuests",leaguesForGuests);
		model.addAttribute("lgCode",lgCode);
		model.addAttribute("isConfirm",isConfirm);
		model.addAttribute("leagues",leagues);
	}
	
	@GetMapping(path ="league/leagueResultView.sc",params="lgCode")
	public void leagueResultView(String lgCode, ModelMap model) throws Exception{
		List<LeagueResultVO> leagueResult = leagueService.getLeagueResultView(lgCode);
		model.addAttribute("leagueResult",leagueResult);
	}
	
	
	@GetMapping("/league/leagueConfirm.sc")
	public String leagueConfirm(@ModelAttribute("leagues") LeagueResultVO status) throws Exception {
		logger.debug("leagueConfirm의 status={}",status);
		leagueService.confirmLeague(status);
		leagueService.confirmSetResultLeague(status);
		return "redirect:/index.sc";
	}
	
	@GetMapping(value= {"/league/leagueResult.sc"})
	public String leagueResult(LeagueResultVO status, LeagueResultVO vo) throws Exception {
		
		logger.debug("leagueResult의 status={}",status);
		leagueService.updateLeagueResult(status);
		leagueService.updateHomeResult(status);
		leagueService.updateAwayResult(status);
		
		return "redirect:/league/leagueSchedule.sc?lgCode="+vo.getLgCode();
	}
	
	@GetMapping("league/leagueSchedule.sc")
	public String leagueSchedule(ModelMap model,String lgCode) throws Exception {
		List<LeagueResultVO> schedule = leagueService.getLeagueScheduleList(lgCode);
//		logger.debug("*******schedule={}",schedule);
		model.addAttribute("schedule", schedule);
		return "/league/leagueSchedule";
	}
}
