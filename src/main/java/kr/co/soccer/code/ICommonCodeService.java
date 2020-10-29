package kr.co.soccer.code;
import java.util.List;


public interface ICommonCodeService {
	
	/**
	 * <b>공통코드에 조회목록을 리턴한다.</b><br>
	 * 사용법 List&lt;CodeVO&gt; list = codeDao.getCodeListByParent("RG00");<br>
	 * <p style="color:blue;"> parentCode는 상위코드 값 입니다.("RG00", "BO00", 등 )</p>
	 * @param parentCode
	 * @return 코드목록 List<CodeVO>
	 */
	List<CodeVO> getCodeListByParent(String parentCode) ;
	
}
