package kr.co.soccer.code;
import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;

 
@Service
//@Repository()
public class CommonCodeServiceImpl implements ICommonCodeService {

	@Inject
	//@Autowired 도 가능
	private ICommonCodeDao codeDao;

	@Override
	public List<CodeVO> getCodeListByParent(String parentCode) {

		List<CodeVO> list = codeDao.getCodeListByParent(parentCode);
		return list;
	}

}
