package kr.co.soccer.code;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ICommonCodeDao {
	/**
	 * <b>공통코드에 조회목록을 리턴한다.</b>
	 * @param code
	 *  
	 * @return 코드목록 List<CodeVO>
	 * @throws DaoException
	 */
	public List<CodeVO> getCodeListByParent(String parentCode);
	
}
