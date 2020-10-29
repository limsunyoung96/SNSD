 package kr.co.soccer.login;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.manager.IManagerDao;
import kr.co.soccer.manager.ManagerVO;
import kr.co.soccer.member.IMemberDao;
import kr.co.soccer.member.MemberVO;

@Service
public class LoginServiceImpl implements ILoginService {

	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private IMemberDao memberdao;

	@Inject
	private IManagerDao managerdao;

	@Override
	public UserVO loginCheck(UserVO user) throws BizNotFoundException, BizPasswordNotMatchedException {
		MemberVO vo = memberdao.getMember(user.getUserId());

		ManagerVO manager = managerdao.getManager(user.getUserId());
		// UserVO userVO = new UserVO();
		
		if (manager == null) { // 관리자가 아니라면
			if (vo == null) { // 회원이 아니라면
				throw new BizNotFoundException(user.getUserId() + "회원이 존재하지 않습니다.");
			}
			if (!vo.getMemPass().equals(user.getUserPass())) { // 회원 로그인 성공
				throw new BizPasswordNotMatchedException();
			} // 성공
			
			user.setUserId(vo.getMemId());
			user.setUserPass(vo.getMemPass());
			user.setUserName(vo.getMemName());
			user.setUserTeamName(vo.getMemTeamName());
			user.setUserTeamId(vo.getMemTeamId());
			user.setUserRegion(vo.getMemRegion());
			
			System.out.println("*******************************");
			logger.debug("vo={}", vo);
			
			logger.debug("user={}", user);
			
		} else { // 관리자라면
			if (!manager.getManagerPass().equals(user.getUserPass())) { // 회원 로그인 성공
				throw new BizPasswordNotMatchedException();
			} // 성공
			
			user.setUserId(manager.getManagerId());
			user.setUserPass(manager.getManagerPass());
			user.setUserName(manager.getManagerName());
		}
		
		return user;
	}

	@Override
	public void logout(UserVO user) {
		// TODO 로그인

	}

	@Override
	public ManagerVO loginChec(ManagerVO manager) throws BizNotFoundException, BizPasswordNotMatchedException {
		// TODO Auto-generated method stub
		return null;
	}
	

}
