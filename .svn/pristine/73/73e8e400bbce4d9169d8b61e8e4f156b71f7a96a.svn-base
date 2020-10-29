package kr.co.soccer.free.service;

import java.util.List;

import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;

import kr.co.soccer.free.vo.FreeBoardSearchVO;
import kr.co.soccer.free.vo.FreeBoardVO;

public interface IFreeBoardService {
	
	public List<FreeBoardVO> getBoardList(FreeBoardSearchVO searchVO);
	public FreeBoardVO getBoard(int boNo) throws BizNotFoundException;	
	public void registBoard(FreeBoardVO board);	
	public void modifyBoard(FreeBoardVO board) throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException;	
	public void removeBoard(FreeBoardVO board) throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException; 	
	public void increaseHit(int boNo);   
}
