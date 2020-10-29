package kr.co.soccer.apply;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;

@Service
public class ApplyServiceImpl implements IApplyService {

	@Inject
	private IApplyDao applyDao;

	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Override
	public List<ApplyVO> getApplyList(ApplySearchVO searchVO) {
		// 건수를 구해서 searchVO 설정 -> searchVO.pageSetting() -> list 호출
		logger.debug("ApplyServiceImpl의 getApplyList 메서드 call");
		int cnt = applyDao.getApplyCount(searchVO);
		searchVO.setTotalRowCount(cnt);
		searchVO.pageSetting();
		List<ApplyVO> list = applyDao.getApplyList(searchVO);
		logger.debug("ApplyServiceImpl의 List 출력");
		logger.debug("ApplyList={}", list); 
		return list;
	}
	
	@Override
	public List<ApplyVO> getApplyPassList(ApplySearchVO searchVO) {
		// 건수를 구해서 searchVO 설정 -> searchVO.pageSetting() -> list 호출
		logger.debug("ApplyServiceImpl의 getApplyPassList 메서드 call");
		int cnt = applyDao.getApplyCount(searchVO);
		searchVO.setTotalRowCount(cnt);
		searchVO.pageSetting();
		List<ApplyVO> list = applyDao.getApplyPassList(searchVO);
		logger.debug("ApplyServiceImpl의 PassList 출력");
		logger.debug("ApplyPassList={}", list); 
		return list;
	}

	@Override
	public ApplyVO getApply(int boNo) throws BizNotFoundException {
		ApplyVO vo = applyDao.getApply(boNo);
		if (vo == null) {
			throw new BizNotFoundException("[" + boNo + "] 조회 실패");
		}
		
//		// 해당 게시물의 첨부파일 가져오기
//		AttachVO attach = new AttachVO();
//		attach.setAtchCategory("FREE");
//		attach.setAtchParentNo(boNo);
//		
//		vo.setAttaches(attachDao.getAttachByParentNoList(attach));

		return vo;
	}

	@Override
	public void registApply(ApplyVO board) {
		applyDao.insertApply(board); // 여기 구문에서 freeboard.xml의 insert 내의 selectKey 구문에서 boNo에 값이 담긴다
	}

	@Override
	public void modifyApply(ApplyVO board)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {

		ApplyVO vo = applyDao.getApply(board.getBoNo());
		if (vo == null) {
			throw new BizNotFoundException();
		}
		int cnt = applyDao.updateApply(board);
		if (cnt < 1) {
			throw new BizNotEffectedException();
		}
	}

	@Override
	public void removeApply(ApplyVO board)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {

		ApplyVO vo = applyDao.getApply(board.getBoNo());
		if (vo == null) {
			throw new BizNotFoundException();
		}
		int cnt = applyDao.deleteApply(board);
		if (cnt < 1) {
			throw new BizNotEffectedException();
		}
	}
}
