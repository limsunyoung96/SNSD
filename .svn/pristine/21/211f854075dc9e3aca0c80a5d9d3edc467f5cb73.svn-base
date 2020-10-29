package kr.co.soccer.notice.service;

import java.util.List;

import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.notice.vo.NoticeBoardSearchVO;
import kr.co.soccer.notice.vo.NoticeBoardVO;

public interface INoticeBoardService {
	
	public List<NoticeBoardVO> getBoardList(NoticeBoardSearchVO searchVO);
	public NoticeBoardVO getBoard(int boNo) throws BizNotFoundException;	
	public void registBoard(NoticeBoardVO board);	
	public void modifyBoard(NoticeBoardVO board) throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException;	
	public void removeBoard(NoticeBoardVO board) throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException; 	
	public void increaseHit(int boNo);   
}
