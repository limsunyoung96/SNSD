package kr.co.soccer.notice.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;
import kr.co.soccer.notice.dao.INoticeBoardDao;
import kr.co.soccer.notice.vo.NoticeBoardSearchVO;
import kr.co.soccer.notice.vo.NoticeBoardVO;

@Service
public class NoticeBoardServiceImpl implements INoticeBoardService {
	
	@Inject
	private INoticeBoardDao noticeBoardDao;


	@Override
	public void registBoard(NoticeBoardVO board) {
		noticeBoardDao.insertBoard(board);
		
		
	}

	@Override
	public void removeBoard(NoticeBoardVO board)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {

		NoticeBoardVO vo = noticeBoardDao.getBoard(board.getBoNo());
		if (vo == null) {
			throw new BizNotFoundException("[" + board.getBoNo() + "]조회 실패");
		}
		int cnt = noticeBoardDao.deleteBoard(board);
		if (cnt < 1) {
			throw new BizNotEffectedException("[" + board.getBoNo() + "]삭제 실패");
		}
	}

	@Override
	public void increaseHit(int boNo) {
		noticeBoardDao.increaseHit(boNo);
	}

	@Override
	public void modifyBoard(NoticeBoardVO board)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {

		NoticeBoardVO vo = noticeBoardDao.getBoard(board.getBoNo());
		if (vo == null) {
			throw new BizNotFoundException("[" + board.getBoNo() + "]조회 실패");
		}

		int cnt = noticeBoardDao.updateBoard(board);
		if (cnt < 1) {
			throw new BizNotEffectedException("[" + board.getBoNo() + "]수정 실패");
		}
	}

	@Override
	public NoticeBoardVO getBoard(int boNo) throws BizNotFoundException {
		NoticeBoardVO vo = noticeBoardDao.getBoard(boNo);
		if (vo == null) {
			throw new BizNotFoundException("[" + boNo + "]조회 실패");
		}
//		// 해당 게시물의 첨부파일 가져오기
//		AttachVO attach = new AttachVO();
//		attach.setAtchCategory("Notice");
//		attach.setAtchParentNo(boNo);
//		
//		vo.setAttaches( attachDao.getAttachByParentNoList(attach)  );
		
		return vo;
	}

	@Override
	public List<NoticeBoardVO> getBoardList(NoticeBoardSearchVO searchVO) {
		// 건수를 구해서 searchVO 설정 -> searchVO.pageSetting() -> list 호출
		int cnt = noticeBoardDao.getBoardCount(searchVO);
		searchVO.setTotalRowCount(cnt);
		searchVO.pageSetting();
		List<NoticeBoardVO> list = noticeBoardDao.getBoardList(searchVO);
		return list;
	}
}
