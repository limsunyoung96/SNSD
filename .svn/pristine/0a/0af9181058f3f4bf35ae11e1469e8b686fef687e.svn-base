package kr.co.soccer.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.soccer.team.TeamVO;


@Mapper
public interface IMemberDao {

	public int insertMember(MemberVO member);
	public int updateMember(MemberVO member);
	public int deleteMember(String memId);
	public MemberVO getMember(String memId);
	public int getMemberCount();
	public List<MemberVO> getMemberList();
	
	public String getUserRoleByUserId(String userId) ;
	
	public int updateMemberDelete(String[] checkedMemIds);
	public void updateMemberTeam(TeamVO teamVO);
	// public void deleteMemberTeam(TeamVO teamVO);
}



