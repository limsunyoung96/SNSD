package kr.co.soccer.league;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.soccer.leagueResult.LeagueResultVO;

@Mapper
public interface ILeagueDao {

	public int insertLeague(LeagueVO league);
	public int updateLeague(LeagueVO league);
	public int deleteLeague(String lgCode);
	public LeagueVO getLeague(String lgCode);
	public LeagueVO getRecentLeague();
	public LeagueVO getRunningLeague();
	public int getLeagueCount(String lgCode);
	public int isLeagueConfirm(String lgCode);
	public List<LeagueVO> getLeagueList();
	public List<LeagueVO> getLeagueListForGuests();
	
	public List<LeagueVO> getLeagueView(String lgCode);
	public List<LeagueResultVO> getLeagueResultView(String lgCode);
	
	public int insertConfirmLeague(LeagueResultVO status);
	public int confirmSetResultLeague(LeagueResultVO status);
	
	public int updateLeagueResult(LeagueResultVO status);
	public List<LeagueResultVO> getLeagueScheduleList(String lgCode);
	public int updateHomeResult(LeagueResultVO vo);
	public int updateAwayResult(LeagueResultVO vo);
}
