package kr.co.soccer.member;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.soccer.exception.BizDuplicateKeyException;
import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;

@Service
public class MemberServiceImpl implements IMemberService {

	@Inject
	private IMemberDao memberDao;

	@Override
	public void registMember(MemberVO member) throws BizDuplicateKeyException {
		// 회원이 존재하는지 먼저 조회
		MemberVO vo = memberDao.getMember(member.getMemId());
		if (vo != null) {
			throw new BizDuplicateKeyException();
		}
		memberDao.insertMember(member);
	}

	@Override
	public void modifyMember(MemberVO member) throws BizNotEffectedException, BizNotFoundException {
		MemberVO vo = memberDao.getMember(member.getMemId());
		if (vo == null) {
			throw new BizNotFoundException("[" + member.getMemId() + "] 조회 실패");
		}
		int cnt = memberDao.updateMember(member);
		if (cnt < 1) {
			throw new BizNotEffectedException("[" + member.getMemId() + "] 수정 실패");
		}
	}

	@Override
	public void removeMember(String memId) throws BizNotEffectedException, BizNotFoundException {
		MemberVO vo = memberDao.getMember(memId);
		if (vo == null) {
			throw new BizNotFoundException("[" + vo.getMemId() + "] 삭제 실패");
		}
		int cnt = memberDao.deleteMember(vo.getMemId());
		if (cnt < 1) {
			throw new BizNotEffectedException("[" + vo.getMemId() + "] 삭제 실패");
		}
	}

	@Override
	public MemberVO getMember(String memId) throws BizNotFoundException {
		MemberVO vo = memberDao.getMember(memId);
		if (vo == null) {
			throw new BizNotFoundException("[" + memId + "] 조회 실패");
		}
		return vo;
	}

	@Override
	public List<MemberVO> getMemberList() {

		List<MemberVO> list = memberDao.getMemberList();
		return list;
	}

	@Override
	public void checkedMemberDelete(String[] checkedMemIds) {
		memberDao.updateMemberDelete(checkedMemIds);
	}
}