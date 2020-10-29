package kr.co.soccer;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soccer.league.ILeagueService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	ILeagueService leagueService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */ 
//	@RequestMapping(value = {"/","/index.sc"}, method = RequestMethod.GET)
//	public String home(Locale locale, Model model, HttpServletRequest req, HttpServletResponse resp) { 
//		
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		String formattedDate = dateFormat.format(date);
//		
//		
//		HttpSession session = req.getSession();
//		UserVO user = (UserVO) session.getAttribute("USER_INFO");
//		String memRegion = user.getUserRegion();
//		req.setAttribute("memRegion", memRegion);
//		
//		LeagueVO league = leagueService.getRecentLeague();
//		model.addAttribute("league", league);
//		logger.info("league={}", league);
//		
//		model.addAttribute("serverTime", formattedDate );
//		return "index";
//	}

	@RequestMapping(value = "/template.sc")
	public String template(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "template";
	}

}
