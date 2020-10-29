package kr.co.soccer.login;

import kr.co.soccer.exception.BizException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.manager.ManagerVO;

public interface ILoginService {

	/**
	 * <b>사용자 로그인 체크</b>
	 * @param  user
	 * @return UserVO
	 * @throws BizNotFoundException
	 * @throws BizPasswordNotMatchedException
	 */
	public UserVO loginCheck(UserVO user) throws BizNotFoundException, BizPasswordNotMatchedException;
	
	/**
	 * 로그아웃 할 때 처리 <br>
	 * 로그아웃 기록  
	 * @param user
	 * @throws BizException
	 */
	
	public ManagerVO loginChec(ManagerVO manager) throws BizNotFoundException, BizPasswordNotMatchedException;
	
	
	public void logout(UserVO user);
	
}
