package kr.co.soccer.searchTeamMem;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class SearchTeamMemService {

	@Inject
	private SearchTeamMemMapper mapper;

	public List<SearchTeamMemVO> selectSearchTeamList(SearchTeamMemSearchVO searchVO) throws Exception {
		int cnt = mapper.selectSearchTeamListCnt(searchVO);
		searchVO.setTotalRowCount(cnt);
		searchVO.pageSetting();

		return mapper.selectSearchTeamList(searchVO);
	}

	public int selectSearchTeamListCnt(SearchTeamMemSearchVO searchVO) throws Exception {
		return mapper.selectSearchTeamListCnt(searchVO);
	}

	public SearchTeamMemVO selectSearchTeamView(int schtNo) throws Exception{
		return mapper.selectSearchTeamView(schtNo);
	}
	
	public int registerSearchTeam(SearchTeamMemVO vo) throws Exception {
		return mapper.registerSearchTeam(vo);
	}
	public int modifySearchTeam(SearchTeamMemVO vo) throws Exception{
		return mapper.modifySearchTeam(vo);
	}
	
	public int removeSearchTeam(SearchTeamMemVO vo) throws Exception{
		return mapper.removeSearchTeam(vo);
	}
	
	public int increaseHitSearchTeam(int schtNo) throws Exception{
		return mapper.increaseHitSearchTeam(schtNo);
	}
	
//--------------------------------------------------------------------------------//
	
	public List<SearchTeamMemVO> selectSearchMemList(SearchTeamMemSearchVO searchVO) throws Exception {
		int cnt = mapper.selectSearchMemListCnt(searchVO);
		searchVO.setTotalRowCount(cnt);
		searchVO.pageSetting();

		return mapper.selectSearchMemList(searchVO);
	}

	public int selectSearchMemListCnt(SearchTeamMemSearchVO searchVO) throws Exception {
		return mapper.selectSearchMemListCnt(searchVO);
	}

	public SearchTeamMemVO selectSearchMemView(int schmNo) throws Exception{
		return mapper.selectSearchMemView(schmNo);
	}
	
	public int registerSearchMem(SearchTeamMemVO vo) throws Exception {
		return mapper.registerSearchMem(vo);
	}
	public int modifySearchMem(SearchTeamMemVO vo) throws Exception{
		return mapper.modifySearchMem(vo);
	}
	
	public int removeSearchMem(SearchTeamMemVO vo) throws Exception{
		return mapper.removeSearchMem(vo);
	}
	
	public int increaseHitSearchMem(int schmNo) throws Exception{
		return mapper.increaseHitSearchMem(schmNo);
	}
	
	
}
