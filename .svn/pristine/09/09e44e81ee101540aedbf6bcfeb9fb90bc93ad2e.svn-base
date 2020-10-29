package kr.co.soccer.league;

import java.util.List;

import kr.co.soccer.leagueResult.LeagueResultVO;

public interface ILeagueService {

	public void registLeague(LeagueVO league) throws Exception ;
	public void modifyLeague(LeagueVO league) throws Exception ;
	public void removeLeague(String lgCode) throws Exception ;
	public int isLeagueConfirm(String lgCode);
	public LeagueVO getLeague(String ldCode) throws Exception ;
	public LeagueVO getRecentLeague();
	public LeagueVO getRunningLeague();
	public List<LeagueVO> getLeagueList();
	public List<LeagueVO> getLeagueListForGuests();
	public List<LeagueVO> getLeagueView(String lgCode) throws Exception;
	public List<LeagueResultVO> getLeagueResultView(String lgCode) throws Exception;
	
	public int confirmLeague(LeagueResultVO status) throws Exception;
	public int confirmSetResultLeague(LeagueResultVO status) throws Exception;
	
	public int updateLeagueResult(LeagueResultVO status) throws Exception;
	public List<LeagueResultVO> getLeagueScheduleList(String lgCode) throws Exception;
	public int updateHomeResult(LeagueResultVO vo) throws Exception;
	public int updateAwayResult(LeagueResultVO vo) throws Exception;
	
}
