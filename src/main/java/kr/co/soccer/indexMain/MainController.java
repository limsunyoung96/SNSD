package kr.co.soccer.indexMain;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.soccer.league.ILeagueService;
import kr.co.soccer.league.LeagueVO;
import kr.co.soccer.leagueResult.LeagueResultService;
import kr.co.soccer.leagueResult.LeagueResultVO;
import kr.co.soccer.login.UserVO;
import kr.co.soccer.team.ITeamService;
import kr.co.soccer.team.TeamSearchVO;
import kr.co.soccer.team.TeamVO;

@Controller
public class MainController {

	@Inject
	ILeagueService leagueService;

	@Inject
	LeagueResultService service;
	
	@Inject
	ITeamService teamService;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping(value = { "/", "/index.sc" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest req, HttpServletResponse resp) throws Exception {

		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);

		HttpSession session = req.getSession();
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		if (user == null) {
			session.setAttribute("USER_REGION", "Seoul");
		}
		// TODO: 이 지역이 필요한 것인지 확인해야함
//		else {
//			String memRegion = user.getUserRegion();
//			req.setAttribute("memRegion", memRegion);
//		}
		
		List<LeagueResultVO> status = service.getLeagueResultListWithTeam();
		model.addAttribute("status",status);
		logger.info("status={}", status);

		LeagueVO thisLeague = leagueService.getRunningLeague();
		model.addAttribute("thisLeague", thisLeague);
		
		LeagueVO league = leagueService.getRecentLeague();
		model.addAttribute("league", league);
		logger.info("league={}", league);
		
		model.addAttribute("serverTime", formattedDate);
		return "main";
	}
	
	@PostConstruct
	public void started() {
		TimeZone.setDefault(TimeZone.getTimeZone("Asia/Seoul"));
		logger.info("현재시각: {}", new Date());
	}
}
