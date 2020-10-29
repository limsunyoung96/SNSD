package kr.co.soccer.free.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.free.dao.IFreeBoardDao;
import kr.co.soccer.free.vo.FreeBoardSearchVO;
import kr.co.soccer.free.vo.FreeBoardVO;

@Service
public class FreeBoardServiceImpl implements IFreeBoardService {
	
	@Inject
	private IFreeBoardDao freeBoardDao;


	@Override
	public void registBoard(FreeBoardVO board) {
		freeBoardDao.insertBoard(board);
		
	}


	@Override
	public void removeBoard(FreeBoardVO board)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {

		FreeBoardVO vo = freeBoardDao.getBoard(board.getBoNo());
		if (vo == null) {
			throw new BizNotFoundException("[" + board.getBoNo() + "]조회 실패");
		}
		int cnt = freeBoardDao.deleteBoard(board);
		if (cnt < 1) {
			throw new BizNotEffectedException("[" + board.getBoNo() + "]삭제 실패");
		}
	}

	@Override
	public void increaseHit(int boNo) {
		freeBoardDao.increaseHit(boNo);
	}

	@Override
	public void modifyBoard(FreeBoardVO board)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {

		FreeBoardVO vo = freeBoardDao.getBoard(board.getBoNo());
		if (vo == null) {
			throw new BizNotFoundException("[" + board.getBoNo() + "]조회 실패");
		}

		int cnt = freeBoardDao.updateBoard(board);
		if (cnt < 1) {
			throw new BizNotEffectedException("[" + board.getBoNo() + "]수정 실패");
		}
	}

	@Override
	public FreeBoardVO getBoard(int boNo) throws BizNotFoundException {
		FreeBoardVO vo = freeBoardDao.getBoard(boNo);
		if (vo == null) {
			throw new BizNotFoundException("[" + boNo + "]조회 실패");
		}
		
//		// 해당 게시물의 첨부파일 가져오기
//		AttachVO attach = new AttachVO();
//		attach.setAtchCategory("FREE");
//		attach.setAtchParentNo(boNo);
//		
//		vo.setAttaches( attachDao.getAttachByParentNoList(attach)  );
		
		return vo;
	}

	@Override
	public List<FreeBoardVO> getBoardList(FreeBoardSearchVO searchVO) {
		// 건수를 구해서 searchVO 설정 -> searchVO.pageSetting() -> list 호출
		int cnt = freeBoardDao.getBoardCount(searchVO);
		searchVO.setTotalRowCount(cnt);
		searchVO.pageSetting();
		List<FreeBoardVO> list = freeBoardDao.getBoardList(searchVO);
		return list;
	}
}
