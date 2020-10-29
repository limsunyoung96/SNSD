package kr.co.soccer.apply;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IApplyDao {

	/**
	 * <b>목록건수 리턴</b>
	 * @param searchVO
	 * @return int
	 */
	public int getApplyCount(ApplySearchVO searchVO);
	
	/**
	 * <b>신청 목록 전체 반환</b> 
	 * @return List &lt;ApplyVO&gt;
	 */
	public List<ApplyVO> getApplyList(ApplySearchVO searchVO) ;
	
	/**
	 * <b>리그 신청팀 중에서 합격자만 목록 반환</b> 
	 * @return List &lt;ApplyVO&gt;
	 */
	public List<ApplyVO> getApplyPassList(ApplySearchVO searchVO) ;
	
	/**
	 * <b>글번호에 해당하는 게시물 반환</b>
	 * @param boNo
	 * @return ApplyVO
	 */
	public ApplyVO getApply(int boNo);
	//public ApplyVO getApply(String getTmId);
  
  /**
   * <b>게시물 등록</b>
 * @param apply
   * @return  영향받은 행수 
   */
  public int insertApply(ApplyVO apply);
  
  /**
   * <b>해당 게시물 변경</b> 
 * @param apply
   * @return  영향받은 행수 
   */
  public int updateApply(ApplyVO apply);
  
  /**
   * <b>해당 게시물의 삭제여부를 "Y" 로 변경 </b> 
 * @param apply
   * @return 영향받은 행수 
   */
  public int deleteApply(ApplyVO apply);
  
}
