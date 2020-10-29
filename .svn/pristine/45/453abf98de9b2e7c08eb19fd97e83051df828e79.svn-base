package kr.co.soccer.league;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.soccer.leagueResult.LeagueResultVO;

@Service
public class LeagueServiceImpl implements ILeagueService{

	@Inject
	private ILeagueDao leagueDao;
	
	@Override
	public void registLeague(LeagueVO league) throws Exception {
		leagueDao.insertLeague(league);
	}

	@Override
	public void modifyLeague(LeagueVO league) throws Exception {
		leagueDao.updateLeague(league);
	}

	@Override
	public void removeLeague(String lgCode) throws Exception {
		leagueDao.deleteLeague(lgCode);
	}

	@Override
	public LeagueVO getLeague(String ldCode) throws Exception {
		return leagueDao.getLeague(ldCode);
	}

	@Override
	public List<LeagueVO> getLeagueList() {
		return leagueDao.getLeagueList();
	}

	@Override
	public List<LeagueVO> getLeagueListForGuests() {
		return leagueDao.getLeagueListForGuests();
	}
	
	@Override
	public int isLeagueConfirm(String lgCode) {
		return leagueDao.isLeagueConfirm(lgCode);
	}
	
	@Override
	public LeagueVO getRecentLeague() {
		return leagueDao.getRecentLeague();
	}
	
	@Override
	public LeagueVO getRunningLeague() {
		return leagueDao.getRunningLeague();
	}

	@Override
	public List<LeagueVO> getLeagueView(String lgCode) throws Exception {
		return leagueDao.getLeagueView(lgCode);
	}

	@Override
	public int confirmLeague(LeagueResultVO status) throws Exception {
		return leagueDao.insertConfirmLeague(status);
	}

	@Override
	public int updateLeagueResult(LeagueResultVO status) throws Exception {
		return leagueDao.updateLeagueResult(status);
	}

	@Override
	public List<LeagueResultVO> getLeagueScheduleList(String lgCode) throws Exception {
		return leagueDao.getLeagueScheduleList(lgCode);
	}
	
	public int updateHomeResult(LeagueResultVO vo) throws Exception{
		return leagueDao.updateHomeResult(vo);
	}
	public int updateAwayResult(LeagueResultVO vo) throws Exception{
		return leagueDao.updateAwayResult(vo);
	}

	@Override
	public int confirmSetResultLeague(LeagueResultVO status) throws Exception {
		return leagueDao.confirmSetResultLeague(status);
	}

	@Override
	public List<LeagueResultVO> getLeagueResultView(String lgCode) throws Exception {
		return leagueDao.getLeagueResultView(lgCode);
	}

}
