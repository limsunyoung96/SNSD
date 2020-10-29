package kr.co.soccer.manager;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IManagerDao {

	// public int insertManager(ManagerVO manager);
	// public int updateManager(ManagerVO manager);
	// public int deleteManager(ManagerVO manager);
	public ManagerVO getManager(String manageId);
	// public int getManagerCount(ManagerSearchVO searchVO);
	// public List<ManagerVO> getManagerList(ManagerSearchVO searchVO);
	
	// public String getUserRoleByUserId(String userId) ;
	
	public int updateManagerDelete(String[] checkedMemIds);
}



