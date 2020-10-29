package kr.co.soccer.apply;

import java.util.List;

import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;
import kr.co.soccer.exception.BizPasswordNotMatchedException;

public interface IApplyService {

	public List<ApplyVO> getApplyList(ApplySearchVO searchVO);
	public List<ApplyVO> getApplyPassList(ApplySearchVO searchVO);
	public ApplyVO getApply(int boNo) throws BizNotFoundException; // int 매개변수였음
	public void registApply(ApplyVO apply); // throws BizDuplicateKeyException;
	public void modifyApply(ApplyVO apply)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException;
	public void removeApply(ApplyVO apply)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException;
}
