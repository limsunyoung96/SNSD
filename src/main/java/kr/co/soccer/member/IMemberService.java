package kr.co.soccer.member;

import java.util.List;

import kr.co.soccer.exception.BizDuplicateKeyException;
import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;

public interface IMemberService {
	
	public void registMember(MemberVO member) throws BizDuplicateKeyException ;
	public void modifyMember(MemberVO member) throws BizNotEffectedException, BizNotFoundException ;
	public void removeMember(String memId) throws BizNotEffectedException, BizNotFoundException ;
	public MemberVO getMember(String memId) throws BizNotFoundException  ;
	public List<MemberVO> getMemberList();
	
	public void checkedMemberDelete(String[] checkedMemIds);
	
}
