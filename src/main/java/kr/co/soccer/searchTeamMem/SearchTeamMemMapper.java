package kr.co.soccer.searchTeamMem;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SearchTeamMemMapper {
	
	List<SearchTeamMemVO>selectSearchTeamList(SearchTeamMemSearchVO searchVO) throws Exception;
	int selectSearchTeamListCnt(SearchTeamMemSearchVO searchVO) throws Exception;
	
	SearchTeamMemVO selectSearchTeamView(int schtNo) throws Exception; 
	
	int registerSearchTeam(SearchTeamMemVO vo) throws Exception;
	
	int modifySearchTeam(SearchTeamMemVO vo) throws Exception;
	
	int removeSearchTeam(SearchTeamMemVO vo) throws Exception;
	
	int increaseHitSearchTeam(int schtNo) throws Exception;
	
//-------------------------------------------------------------------------//
	
	List<SearchTeamMemVO>selectSearchMemList(SearchTeamMemSearchVO searchVO) throws Exception;
	int selectSearchMemListCnt(SearchTeamMemSearchVO searchVO) throws Exception;
	
	SearchTeamMemVO selectSearchMemView(int schtNo) throws Exception; 
	
	int registerSearchMem(SearchTeamMemVO vo) throws Exception;
	
	int modifySearchMem(SearchTeamMemVO vo) throws Exception;
	
	int removeSearchMem(SearchTeamMemVO vo) throws Exception;
	
	int increaseHitSearchMem(int schtNo) throws Exception;
	
}
