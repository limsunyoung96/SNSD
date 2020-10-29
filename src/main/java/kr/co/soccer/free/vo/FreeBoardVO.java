package kr.co.soccer.free.vo;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import kr.co.soccer.common.valid.ModifyType;

@SuppressWarnings("serial")
public class FreeBoardVO implements Serializable {	
	// Serializable 구현, toString, get/set
	
	@NotNull(message = "글번호가 비었습니다." , groups = ModifyType.class )
	@Positive(message = "글번호가 비었습니다.", groups = ModifyType.class )
	private int boNo;                  /* 글 번호 */
	
	@NotBlank(message = "제목은 필수입니다." )
	@Size(min = 1, message =  "최소 한글자 이상 입력하세요")
	private String boTitle;            /* 글 제목 */
	
	@NotBlank(message = "작성자는 필수입니다.")
	@Pattern(regexp = "[가-힣]{2,}", message = "한글 2글자 이상입니다.")
	private String boWriter;           /* 작성자명 */
	private String userId;				/* 회원ID */		
	private String userPass;				/* 회원PW */
	private String userName;				/* 회원이름 */
	private String commCode;				/* 카테고리 */
	private String boContent;          /* 글 내용 */
	private int boHit;                 /* 조회수 */
	private String boRegDate;          /* 등록 일자 */
	private String boModDate;          /* 수정 일자 */
	private String boDelYn;            /* 삭제 여부 */
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

	public int getBoNo() {
		return boNo;
	}

	public void setBoNo(int boNo) {
		this.boNo = boNo;
	}

	public String getBoTitle() {
		return boTitle;
	}

	public void setBoTitle(String boTitle) {
		this.boTitle = boTitle;
	}

	public String getBoWriter() {
		return boWriter;
	}

	public void setBoWriter(String boWriter) {
		this.boWriter = boWriter;
	}

	public String getBoContent() {
		return boContent;
	}

	public void setBoContent(String boContent) {
		this.boContent = boContent;
	}

	public int getBoHit() {
		return boHit;
	}

	public void setBoHit(int boHit) {
		this.boHit = boHit;
	}

	public String getBoRegDate() {
		return boRegDate;
	}

	public void setBoRegDate(String boRegDate) {
		this.boRegDate = boRegDate;
	}

	public String getBoModDate() {
		return boModDate;
	}

	public void setBoModDate(String boModDate) {
		this.boModDate = boModDate;
	}

	public String getBoDelYn() {
		return boDelYn;
	}

	public void setBoDelYn(String boDelYn) {
		this.boDelYn = boDelYn;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCommCode() {
		return commCode;
	}

	public void setCommCode(String commCode) {
		this.commCode = commCode;
	}
	
}
