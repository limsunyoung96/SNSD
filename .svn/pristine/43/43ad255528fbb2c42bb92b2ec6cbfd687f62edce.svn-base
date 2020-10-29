package kr.co.soccer.notice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.soccer.notice.vo.NoticeBoardSearchVO;
import kr.co.soccer.notice.vo.NoticeBoardVO;

@Mapper
public interface INoticeBoardDao {
	
	/**
	 * <b>목록건수 리턴</b>
	 * @param searchVO
	 * @return int
	 */
	public int getBoardCount(NoticeBoardSearchVO searchVO);
	
	/**
	 * <b>자유게시판 목록 반환</b> 
	 * @param searchVO 
	 * @return List &lt;NoticeBoardVO&gt;
	 */
	public List<NoticeBoardVO> getBoardList(NoticeBoardSearchVO searchVO) ;
	
	/**
	 * <b>글번호에 해당하는 게시물 반환</b>
	 * @param boNo
	 * @return NoticeBoardVO
	 */
  public NoticeBoardVO getBoard(int boNo);
  
  /**
   * <b>게시물 등록</b>
 * @param board
   * @return 영향받은 행수 
   */
  public int insertBoard(NoticeBoardVO board);
  
  /**
   * <b>해당 게시물 변경</b> 
 * @param board
   * @return 영향받은 행수 
   */
  public int updateBoard(NoticeBoardVO board);
  
  /**
   * <b>해당 게시물의 삭제여부를 "Y" 로 변경 </b> 
 * @param board
   * @return 영향받은 행수 
   */
  public int deleteBoard(NoticeBoardVO board);
  
  /**
   * <b>해당 게시물의 조회수 1 증가</b> 
 * @param boNo
   * @return 영향받은 행수
   */
  public int increaseHit(int boNo);
  
}
