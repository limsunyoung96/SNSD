package kr.co.soccer.team;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ITeamDao {

	/**
	 * <b>목록건수 리턴</b>
	 * @param searchVO
	 * @return int
	 */
	public int getTeamCount(TeamSearchVO searchVO);
	
	/**
	 * <b>자유게시판 목록 반환</b> 
	 * @return List &lt;TeamVO&gt;
	 */
	public List<TeamVO> getTeamList(TeamSearchVO searchVO) ;
	
	/**
	 * <b>글번호에 해당하는 게시물 반환</b>
	 * @param boNo
	 * @return TeamVO
	 */
  public TeamVO getTeam(int boNo);
  
	/**
	 * <b>memId에 해당하는 게시물 반환</b>
	 * @param memId
	 * @return TeamVO
	 */
  public TeamVO getTeam2(String memId);
  
  	/**
	 * <b>팀 이름 중복 체크</b>
	 * @param searchVO
	 * @return int
	 */
	public int teamNameCheck(TeamVO team);
	
  /**
   * <b>게시물 등록</b>
   * @param team
   * @return  영향받은 행수 
   */
  public int insertTeam(TeamVO team);
  
  /**
   * <b>해당 게시물 변경</b> 
   * @param team
   * @return  영향받은 행수 
   */
  public int updateTeam(TeamVO team);
  
  /**
   * <b>해당 게시물의 삭제여부를 "Y" 로 변경 </b> 
   * @param team
   * @return 영향받은 행수 
   */
  public int deleteTeam(TeamVO team);
  
}
