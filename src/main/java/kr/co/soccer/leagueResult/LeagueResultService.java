package kr.co.soccer.leagueResult;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class LeagueResultService {
	@Inject
	private ILeagueResultDao leagueResultDao;

	public List<LeagueResultVO> getLeagueResultList() throws Exception {
		return leagueResultDao.getLeagueResultList();
	}

	public List<LeagueResultVO> getLeagueResultListWithTeam() throws Exception {
		return leagueResultDao.getLeagueResultListWithTeam();
	}
	
	public LeagueResultVO getLeagueTopOdd() throws Exception{
		return leagueResultDao.getLeagueTopOdd();
	}
	public LeagueResultVO getLeagueTopWin() throws Exception{
		return leagueResultDao.getLeagueTopWin();
	}
	public LeagueResultVO getLeagueTopPlayed() throws Exception{
		return leagueResultDao.getLeagueTopPlayed();
	}
	
	
}
