package kr.co.soccer.team;

import java.io.File;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class TeamAttachUtils {

	@Value("#{app['file.upload.path']}")
	private String uploadPath;

	private String uploadServerPath;

	@Inject
	private ServletContext context;

	private final Logger logger = LoggerFactory.getLogger(getClass());

	/** MultipartFile에서 VO 설정 및 업로드 파일 처리 후 리턴, 없는 경우 null */
	public String getAttachByMultipart(MultipartFile multipart, TeamVO teamVO) throws IOException {

		if (!multipart.isEmpty()) {
			uploadServerPath = context.getRealPath("/uploads");
			String fileName = Integer.toString(teamVO.getTmId()) + ".png";
			logger.debug("teamVO.getTmId()={}", teamVO.getTmId());

			// TeamVO vo = new TeamVO();
			// vo.setTmAtchName(fileName);
			String filePath = uploadPath;// + File.separatorChar; // + vo.getTmAtch();
			String fileServerPath = uploadServerPath;// + File.separatorChar; // + path;

			logger.debug("filePath = {}, fileName = {}", filePath, fileName);

			// multipart.transferTo(new File(filePath, fileName));
			FileUtils.copyInputStreamToFile(multipart.getInputStream(), new File(filePath, fileName));
			FileUtils.copyInputStreamToFile(multipart.getInputStream(), new File(fileServerPath, fileName));
			return fileName;
		} else {
			return null;
		}
	}

}