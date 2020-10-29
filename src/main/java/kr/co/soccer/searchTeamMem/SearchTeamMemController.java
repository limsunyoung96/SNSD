package kr.co.soccer.searchTeamMem;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

import kr.co.soccer.code.CodeVO;
import kr.co.soccer.code.ICommonCodeService;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.login.UserVO;



@Controller
public class SearchTeamMemController {
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	@Inject
	private SearchTeamMemService service;
	
	@Inject
	private ICommonCodeService codeService;
	
	@ModelAttribute("positionList")
	public List<CodeVO> getPositionCategoryList() {
		List<CodeVO> positionList = codeService.getCodeListByParent("PO00");
		return positionList;
	}
	
	@ModelAttribute("ageList")
	public List<CodeVO> getAgeCategoryList() {
		List<CodeVO> ageList = codeService.getCodeListByParent("AG00");
		return ageList;
	}
	
	@ModelAttribute("regionList")
	public List<CodeVO> getRegionCategoryList() {
		List<CodeVO> regionList = codeService.getCodeListByParent("RG00");
		return regionList;
	}
	@ModelAttribute("timeList")
	public List<CodeVO> getTimeCategoryList() {
		List<CodeVO> timeList = codeService.getCodeListByParent("TM00");
		return timeList;
	}
	
//-----------------------------팀 구하기--------------------------------------------------------//	
	
	@RequestMapping(value="/search/searchTeamList.sc", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectSearchTeamList(@ModelAttribute("searchVO") SearchTeamMemSearchVO searchVO,ModelMap model) throws Exception{
		List<SearchTeamMemVO> list = service.selectSearchTeamList(searchVO);
		model.addAttribute("teamList", list);
		return "search/searchTeamList";
		
	}
	
	@GetMapping("/search/searchTeamView.sc")
	public String selectSearchTeamView(@RequestParam(value="schtNo") int schtNo, ModelMap model) throws Exception{
		try {
			SearchTeamMemVO searchTeam = service.selectSearchTeamView(schtNo);
			if(searchTeam != null) {
				service.increaseHitSearchTeam(schtNo);
			}
			System.out.println(searchTeam);
			model.addAttribute("team",searchTeam);
			logger.debug("schtNo={}", schtNo);
			return "search/searchTeamView";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@GetMapping("/search/searchTeam.sc")
	public String register() {
		return "search/searchTeam";
	}
	@PostMapping("/search/searchTeam.sc")
	public RedirectView registerSearchTeamMem(SearchTeamMemVO vo,HttpSession session) throws Exception{
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		vo.setSchtName(user.getUserName());
		vo.setMemId(user.getUserId());
		vo.setMemPass(user.getUserPass());
		service.registerSearchTeam(vo);
		return new RedirectView("/search/searchTeamList.sc");
		
	}
	@GetMapping("/search/searchTeamEdit.sc")
	public String searchTeamModifyForm(int schtNo, ModelMap model) throws Exception{
		SearchTeamMemVO searchTeam = service.selectSearchTeamView(schtNo);
		model.addAttribute("team",searchTeam);
		return "search/searchTeamEdit";
	}
	
	@RequestMapping("/search/searchTeamModify.sc")
	public String searchTeamModify(@ModelAttribute("team") SearchTeamMemVO vo, ModelMap model) throws Exception{
		int schtNo = vo.getSchtNo();
		service.modifySearchTeam(vo);
		return "redirect:/search/searchTeamView.sc?schtNo=" + schtNo;
	}
	@RequestMapping("search/searchTeamDelete.sc")
	public String searchTeamRemove(SearchTeamMemVO vo, ModelMap model ) throws Exception {
		service.removeSearchTeam(vo);
		return "redirect:/search/searchTeamList.sc";
	}
	
//-----------------------------팀원 구하기--------------------------------------------------------//
	
	@RequestMapping(value="/search/searchMemList.sc", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectSearchMemList(@ModelAttribute("searchVO") SearchTeamMemSearchVO searchVO,ModelMap model) throws Exception{
		List<SearchTeamMemVO> list = service.selectSearchMemList(searchVO);
		model.addAttribute("memList", list);
		return "search/searchMemList";
		
	}
	
	@GetMapping("/search/searchMemView.sc")
	public String selectSearchMemView(@RequestParam(value="schmNo") int schmNo, ModelMap model) throws Exception{
		try {
			SearchTeamMemVO searchMem = service.selectSearchMemView(schmNo);
			if(searchMem != null) {
				service.increaseHitSearchMem(schmNo);
			}
			model.addAttribute("mem",searchMem);
			logger.debug("schmNo={}", schmNo);
			return "search/searchMemView";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@GetMapping("/search/searchMem.sc")
	public String registerMem() {
		return "search/searchMem";
	}
	@PostMapping("/search/searchMem.sc")
	public RedirectView registerSearchMem(SearchTeamMemVO vo,HttpSession session) throws Exception{
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
			vo.setMemId(user.getUserId());
			vo.setTmId(user.getUserTeamId());
			vo.setTmName(user.getUserTeamName());
		service.registerSearchMem(vo);
		return new RedirectView("/search/searchMemList.sc");
		
	}
	@GetMapping("/search/searchMemEdit.sc")
	public String searchMemModifyForm(int schmNo, ModelMap model) throws Exception{
		SearchTeamMemVO searchMem = service.selectSearchMemView(schmNo);
		model.addAttribute("mem",searchMem);
		return "search/searchMemEdit";
	}
	
	@RequestMapping("/search/searchMemModify.sc")
	public String searchMemModify(@ModelAttribute("mem") SearchTeamMemVO vo, ModelMap model) throws Exception{
		int schmNo = vo.getSchmNo();
		service.modifySearchMem(vo);
		return "redirect:/search/searchMemView.sc?schmNo=" + schmNo;
	}
	@RequestMapping("search/searchMemDelete.sc")
	public String searchMemRemove(SearchTeamMemVO vo, ModelMap model ) throws Exception {
		service.removeSearchMem(vo);
		return "redirect:/search/searchMemList.sc";
	}
	
	//-------------------------------------------------------------------------------------//
	@RequestMapping(path = "/searchTeamMem/searchMem.ajax",params="schmNo")
	@ResponseBody
	public SearchTeamMemVO searchMemViewAjax(int schmNo, ModelMap model ) throws Exception {
		logger.debug("schmNo={}",schmNo);
		SearchTeamMemVO searchTeam = null;
		try {
//			model.addAttribute("mem", mem);
			searchTeam = service.selectSearchMemView(schmNo);
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(),ex);
		}
		return searchTeam;
	}
	@RequestMapping(path = "/searchTeamMem/searchTeam.ajax",params="schtNo")
	@ResponseBody
	public SearchTeamMemVO searchTeamViewAjax(int schtNo, ModelMap model ) throws Exception {
		logger.debug("schmNo={}",schtNo);
		SearchTeamMemVO searchMem = null;
		try {
//			model.addAttribute("mem", mem);
			searchMem = service.selectSearchTeamView(schtNo);
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(),ex);
		}
		return searchMem;
	}
	
}
















