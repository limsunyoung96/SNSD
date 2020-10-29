package kr.co.soccer.mypage;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.soccer.searchTeamMem.SearchTeamMemVO;
@Service
public class MemberMyPageService{
	@Inject
	private MemberMyPageMapper mapper;
	
	public List<SearchTeamMemVO> selectSearchTeamMemMatch(Map<String, Object> map) throws Exception {
		return mapper.selectSearchTeamMemMatch(map);
	}
	public List<SearchTeamMemVO> selectSearchTeamMemMatchList(Map<String, Object> map) throws Exception {
		return mapper.selectSearchTeamMemMatchList(map);
	}
}
