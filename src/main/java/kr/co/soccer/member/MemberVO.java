package kr.co.soccer.member;

import java.io.Serializable;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

@SuppressWarnings("serial")
public class MemberVO implements Serializable {
	//비밀번호는 등록할때만검사, 수정할때는 제외
	
	@NotBlank(message = "아이디는 필수입니다.")
	@Pattern(regexp = "\\w{4,12}" , message = "알파벳, 숫자, 언더바로 이루어진 4글자 이상 12글자 이하로 작성하여 주세요.")
	private String memId;          /* 회원 아이디 */
	
	@NotBlank(message = "비밀번호는 필수입니다.")
	@Pattern(regexp = "[\\w!-/]{4,12}" , message = "알파벳, 숫자, 특수문자로 이루어진 4글자 이상 12글자 이하로 작성하여 주세요.")
	private String memPass;        /* 회원 비밀번호 */
	
	@NotBlank(message = "이름은 필수입니다.")
	@Pattern(regexp = "[가-힣]{2,6}", message = "한글 두글자 이상 6글자 이하로 입력하여 주세요.")
	private String memName;        /* 회원 이름 */
	

	@NotBlank(message = "핸드폰번호는 필수입니다")
	@Pattern(regexp = " /^\\d{3}-\\d{3,4}-\\d{4}$/", message = "000-0000-0000 형식에 맞게 입력하여 주세요")
	private String memPhone;         /* 회원 생일 */
	
	@NotBlank(message = "생일은 필수입니다")
	@Pattern(regexp = "\\d{4}[-/.]\\d{2}[-/.]\\d{2}", message = "YYYY-MM-DD 형식에 맞게 입력하여 주세요")
	private String memBirth;         /* 회원 생일 */
	
	private String memRegion;         /* 지역 코드 */

	@Email(message = "이메일 형식이 아닙니다.")
	private String memEmail;        /* 이메일 */
	
	private String memRemark;				/* 비고 */

	private String memTeamName;					/* 속한 팀 이름*/
	
	private int memTeamId;				/* 속한 팀 아이디*/
	
	private String memDelYn;
	//추가된 필드
	private String memRegion_nm;         /* 직업 코드 명*/

	
	
	 @Override 
	 public String toString() { 
		 return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	 }

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPass() {
		return memPass;
	}

	public void setMemPass(String memPass) {
		this.memPass = memPass;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemBirth() {
		return memBirth;
	}

	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}

	public String getMemRegion() {
		return memRegion;
	}

	public void setMemRegion(String memRegion) {
		this.memRegion = memRegion;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemRemark() {
		return memRemark;
	}

	public void setMemRemark(String memRemark) {
		this.memRemark = memRemark;
	}

	public String getMemRegion_nm() {
		return memRegion_nm;
	}

	public void setMemRegion_nm(String memRegion_nm) {
		this.memRegion_nm = memRegion_nm;
	}

	public String getMemTeamName() {
		return memTeamName;
	}


	public void setMemTeamName(String memTeamName) {
		this.memTeamName = memTeamName;
	}

	public int getMemTeamId() {
		return memTeamId;
	}

	public void setMemTeamId(int memTeamId) {
		this.memTeamId = memTeamId;
	}

	public String getMemDelYn() {
		return memDelYn;
	}

	public void setMemDelYn(String memDelYn) {
		this.memDelYn = memDelYn;
	}
	
	 
}