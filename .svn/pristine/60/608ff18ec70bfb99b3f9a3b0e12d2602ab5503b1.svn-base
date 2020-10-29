package kr.co.soccer.team;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.member.IMemberDao;

@Service
public class TeamServiceImpl implements ITeamService {

	@Inject
	private ITeamDao teamDao;
	
	@Inject
	private IMemberDao memDao;

	@Override
	public List<TeamVO> getTeamList(TeamSearchVO searchVO) {
		// 건수를 구해서 searchVO 설정 -> searchVO.pageSetting() -> list 호출
		int cnt = teamDao.getTeamCount(searchVO);
		searchVO.setTotalRowCount(cnt);
		searchVO.pageSetting();
		List<TeamVO> list = teamDao.getTeamList(searchVO);
		return list;
	}
	
	@Override
	public TeamVO getTeam(int tmId) throws BizNotFoundException {
		TeamVO vo = teamDao.getTeam(tmId);
		if (vo == null) {
			throw new BizNotFoundException("[" + tmId + "] 조회 실패");
		}
		return vo;
	}
	
	@Override
	public TeamVO getTeam2(String memId) throws BizNotFoundException {
		return teamDao.getTeam2(memId);
	}

	@Override
	public void registTeam(TeamVO teamVO)  {
		teamDao.insertTeam(teamVO);
		
		memDao.updateMemberTeam(teamVO);
	}

	@Override
	public void modifyTeam(TeamVO teamVO) throws BizNotFoundException {
		TeamVO vo = teamDao.getTeam(teamVO.getTmId());
		if (vo == null) {
			throw new BizNotFoundException();
		}
		teamDao.updateTeam(teamVO);
		
	}

	@Override
	public void removeTeam(TeamVO teamVO)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {
		// TODO Auto-generated method stub
		
	}

}
