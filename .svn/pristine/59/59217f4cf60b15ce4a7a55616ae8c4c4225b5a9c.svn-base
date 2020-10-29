package kr.co.soccer.team;

import java.util.List;

import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;

public interface ITeamService {

	public List<TeamVO> getTeamList(TeamSearchVO searchVO);

	public TeamVO getTeam(int tmId) throws BizNotFoundException;

	public TeamVO getTeam2(String memId) throws BizNotFoundException;

	public void registTeam(TeamVO teamVO); // throws BizDuplicateKeyException;

	public void modifyTeam(TeamVO teamVO) throws BizNotFoundException;

	public void removeTeam(TeamVO teamVO) throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException;
}
