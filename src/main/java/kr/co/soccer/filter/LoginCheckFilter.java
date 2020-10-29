package kr.co.soccer.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.soccer.login.UserVO;


public class LoginCheckFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		// 요청전에 세션에 "USER_INFO"가 존재하면 들여보내고
		// 없으면 "/login.sc"로 리다이렉트

		HttpServletRequest req = (HttpServletRequest)request;
		HttpSession session = req.getSession();
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		
		if(user == null) {
			((HttpServletResponse)response).sendRedirect(req.getContextPath() + "/login.sc");
		} else {
			chain.doFilter(request, response);
		}

	}// doFilter
}