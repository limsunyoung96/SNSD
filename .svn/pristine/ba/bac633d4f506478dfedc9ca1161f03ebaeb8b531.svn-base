package kr.co.soccer.apply;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

@SuppressWarnings("serial")
public class ApplyVO implements Serializable {

	//@Positive(message = "신청번호가 비었습니다.")
	private int boNo;         /* 글번호(신청번호) */
	
	//@NotBlank(message = "팀ID 필수입니다.", groups = {RegistType.class})
	private int tmId;      /* 팀ID */
	
	//@NotBlank(message = "리그 코드 필수입니다.", groups = {RegistType.class})
	private String lgCode;    /* 리그 코드 */
	
	private String result;    /* 최종참가 여부 */
	private String regDate;   /* 신청일 */
	
	// 추가된 필드
	//@NotBlank(message = "팀 이름 필수입니다.", groups = {RegistType.class})
	private String tmName; 				/* 팀 이름 */
	//@NotBlank(message = "리그 이름 필수입니다.", groups = {RegistType.class})
	private String lgName;             /* 리그 이름 */
	private String startDate;          /* 시작날짜 */
	private String endDate;            /* 종료날짜 */
	//@NotBlank(message = "개최지역코드 필수입니다.", groups = {RegistType.class})
	private String lgRegion;           /* 개최지역코드 */
	//@NotBlank(message = "개최지역 필수입니다.", groups = {RegistType.class})
	private String lgRegionNm;         /* 개최지역 */
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

	public int getTmId() {
		return tmId;
	}

	public void setTmId(int tmId) {
		this.tmId = tmId;
	}

	public String getLgCode() {
		return lgCode;
	}

	public void setLgCode(String lgCode) {
		this.lgCode = lgCode;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getBoNo() {
		return boNo;
	}

	public void setBoNo(int boNo) {
		this.boNo = boNo;
	}

	public String getTmName() {
		return tmName;
	}

	public void setTmName(String tmName) {
		this.tmName = tmName;
	}

	public String getLgName() {
		return lgName;
	}

	public void setLgName(String lgName) {
		this.lgName = lgName;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getLgRegion() {
		return lgRegion;
	}

	public void setLgRegion(String lgRegion) {
		this.lgRegion = lgRegion;
	}

	public String getLgRegionNm() {
		return lgRegionNm;
	}

	public void setLgRegionNm(String lgRegionNm) {
		this.lgRegionNm = lgRegionNm;
	}
	
//	@NotNull(message = "글 번호는 필수입니다.", groups = ModifyType.class)
//	@Positive(message = "글 번호가 비었습니다.", groups = ModifyType.class)
//	private int boNo; /* 글 번호 */
//
//	@NotBlank(message = "제목은 필수입니다.")
//	@Size(min = 1, message = "최소 한 글자 이상 입력하세요.")
//	private String boTitle; /* 글 제목 */
//
//	@NotBlank(message = "글 분류는 필수입니다.")
//	private String boCategory; /* 글 분류 코드 */
//
//	@NotBlank(message = "작성자는 필수입니다.")
//	@Pattern(regexp = "[가-힣]{2,}", message = "한글 2글자 이상입니다.")
//	private String boWriter; /* 작성자명 */
//
//	@NotBlank(message = "비밀번호는 필수입니다.")
//	@Pattern(regexp = "\\w{4,16}", message = "알파벳, 숫자, 언더바(_) 4글자 이상 16글자 이하입니다.")
//	private String boPass; /* 비밀번호 */
//	private String boContent; /* 글 내용 */
//	private String boIp; /* 등록자 IP */
//	private int boHit; /* 조회수 */
//	private String boRegDate; /* 등록 일자 */
//	private String boModDate; /* 수정 일자 */
//	private String boDelYn; /* 삭제 여부 */
//
//	// 추가된 필드
//	private String boCategoryNm; /* 글 분류 명 */
//
//	private List<AttachVO> attaches; /* 첨부파일 리스트 */
//
//	private int[] delAtchNos;/* 삭제할 대상 첨부파일 번호 */
//
//	public List<AttachVO> getAttaches() {
//		return attaches;
//	}
//
//	public void setAttaches(List<AttachVO> attaches) {
//		this.attaches = attaches;
//	}
//
//	public int[] getDelAtchNos() {
//		return delAtchNos;
//	}
//
//	public void setDelAtchNos(int[] delAtchNos) {
//		this.delAtchNos = delAtchNos;
//	}
}
