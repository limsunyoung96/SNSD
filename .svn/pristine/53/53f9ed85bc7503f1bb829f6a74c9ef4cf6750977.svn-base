package kr.co.soccer.reply.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.soccer.exception.BizAccessFailException;
import kr.co.soccer.exception.BizException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.reply.dao.IReplyDao;
import kr.co.soccer.reply.vo.ReplySearchVO;
import kr.co.soccer.reply.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements IReplyService {

	@Inject
	private IReplyDao replyDao;

	@Override
	public List<ReplyVO> getReplyListByParent(ReplySearchVO searchVO) {
		int rowCount = replyDao.getReplyCountByParent(searchVO);
		searchVO.setTotalRowCount(rowCount);
		searchVO.pageSetting();
		return replyDao.getReplyListByParent(searchVO);
	}

	@Override
	public void registReply(ReplyVO reply) throws BizException {
		replyDao.insertReply(reply);
	}

	@Override
	public void modifyReply(ReplyVO reply) throws BizNotFoundException, BizAccessFailException {
		ReplyVO vo = replyDao.getReply(reply.getReNo());
		if (vo == null) {
			throw new BizNotFoundException("글번호[" + reply.getReNo() + "]을 조회하지 못했습니다.");
		}
		if (!vo.getReMemId().equals(reply.getReMemId())) {
			throw new BizAccessFailException("해당 글의 작성자가 아닙니다.");
		}
		replyDao.updateReply(reply);
	}

	@Override
	public void removeReply(ReplyVO reply) throws BizNotFoundException, BizAccessFailException {
		ReplyVO vo = replyDao.getReply(reply.getReNo());
		if (vo == null) {
			throw new BizNotFoundException("글번호[" + reply.getReNo() + "]을 조회하지 못했습니다.");
		}
		if (!vo.getReMemId().equals(reply.getReMemId())) {
			throw new BizAccessFailException("해당 글의 작성자가 아닙니다.");
		}
		replyDao.deleteReply(reply);

	}

}
