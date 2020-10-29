package kr.co.soccer.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class LogoutController {

	private ILoginService loginService = new LoginServiceImpl();
	
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		HttpSession session = req.getSession();
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		loginService.logout(user);
		
		session.invalidate();	//세션을 무효화 시키기 
		return "redirect:/";
	}

}
