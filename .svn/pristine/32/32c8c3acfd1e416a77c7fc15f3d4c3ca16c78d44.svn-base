package kr.co.soccer.login;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.soccer.common.util.CookieUtils;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.manager.ManagerVO;

@Controller
public class LoginController {
	
	@Autowired
	private ILoginService loginService; // = new LoginServiceImpl();
	//Common Logger : private final Log logger = LogFactory.getLog(this.getClass());
	//SLF4J : 조금 더 향상된 LOG 퍼사드 객체
	private final Logger logger = LoggerFactory.getLogger(getClass()); //컨트롤러에 항상 있어야함 
	
	@GetMapping("/login.sc")
	public String loginGet() throws Exception{
		return "/login";
	}
	@PostMapping("/login.sc")
	public String loginPost(UserVO vo
							, ManagerVO manager
							, HttpSession session
							, @RequestParam(name = "rememberMe", required = false) String remember
							, HttpServletResponse resp 
							, ModelMap model) throws Exception{
		logger.debug("UserVO={},remember={}" ,vo ,remember);
		
		try {
			UserVO userVO = loginService.loginCheck(vo);
			ManagerVO managerVO = loginService.loginChec(manager);
			 if("Y".equals(remember)) {
			 	Cookie cookie = CookieUtils.createCookie("SAVE_ID", vo.getUserId(),"/",60*60*24*31);
			 	resp.addCookie(cookie);	 
			 }else{
			 	resp.addCookie(CookieUtils.createCookie("SAVE_ID", "","/",0));	 		 
			 }
			 logger.debug("세션에 정보 저장 = {}", userVO);
			 // 10.14일 배동환 지역 추가
			 String result = "";
			 if(userVO.getUserRegion()==null) {
				 userVO.setUserRegion("서울");
			 }
			 switch(userVO.getUserRegion()){
			    case "대전" : result = "Daejeon"; 
			        break;
			    case "서울" : result = "Seoul";
			        break;  
			    case "경기" : result = "Incheon";
			        break;
			    case "충북" : result = "Cheongju";
			        break;
			    case "충남" : result = "Cheonan";
			        break;
			    case "전남" : result = "Gwangju";
			        break;
			    case "전북" : result = "Jeonju";
			        break;
			    case "경남" : result = "Busan";
			        break;
			    case "경북" : result = "Daegu";
			        break;
			    case "제주" : result = "Jeju";
			        break;
			    case "세종" : result = "Sejong";
			        break;
			    default :result = "Seoul";   
			}
			 session.setAttribute("USER_REGION", result);
			 session.setAttribute("USER_INFO", userVO); 
			 return "redirect:/";
		} catch (BizNotFoundException | BizPasswordNotMatchedException e) {
			logger.error(e.getMessage(),e); //에러처리 이렇게 할 것 waring 또는 error
			String message = "아이디 혹은 비밀번호가 잘못 되었습니다";
			session.setAttribute("message", message);
			return "redirect:/login.sc";
		}
	}
	@RequestMapping("/logout.sc")
	public String logout(HttpSession session) throws Exception{
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		loginService.logout(user);
		logger.debug("로그아웃 = {}",user);
		session.invalidate();	//세션을 무효화 시키기 
		return "redirect:/";
		
	}
}
