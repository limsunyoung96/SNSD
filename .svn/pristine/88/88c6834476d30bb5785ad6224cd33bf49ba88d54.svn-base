package kr.co.soccer.manager;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.soccer.exception.BizNotFoundException;

@Service
public class ManagerServiceImpl implements IManagerService {

	@Autowired
	private IManagerDao managerDao;
	
	@Override
	public ManagerVO getManager(String manageId) throws BizNotFoundException {
		ManagerVO vo = managerDao.getManager(manageId);
		if (vo == null) {
			throw new BizNotFoundException("[" + manageId + "] 조회 실패");
		}
		return vo;
	}
	
	@Override
	public void checkedManagerDelete(String[] checkedMemIds) {
		managerDao.updateManagerDelete(checkedMemIds);
	}
	
	
}