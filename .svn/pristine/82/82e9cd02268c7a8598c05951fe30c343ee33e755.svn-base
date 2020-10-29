package kr.co.soccer.team;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import kr.co.soccer.common.valid.RegistType;


@SuppressWarnings("serial")
public class TeamVO implements Serializable {

	@Positive(message = "팀ID가 비었습니다.")
	private int tmId;               /* 팀ID */
	
	@NotBlank(message = "팀이름 필수입니다.", groups = {RegistType.class})
	@Pattern(regexp = "[가-힣A-Z]{2,8}", message = "알파벳 대문자, 한글로 이루어진 2글자 이상 8글자 이하입니다.", groups = RegistType.class)
	private String tmName;             /* 팀이름 */
	
	private String tmAtchName;        /* 팀 대표 사진(첨부파일 이름) */
	
	private String tmMem;              /* 팀원 */
	private String tmRegDate;          /* 팀창단일자 */
	
	@NotBlank(message = "팀장ID 필수입니다.")
	private String memId;              /* 팀장ID */
	
	private String tmContent;          /* 글내용 */
	
	// 추가됨
	private String memName;  /* 팀장 이름 */
	private int sumPlayed;
	private int sumWin;
	private int sumLose;
	private int sumDraw;

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

	public String getTmName() {
		return tmName;
	}

	public void setTmName(String tmName) {
		this.tmName = tmName;
	}

	public String getTmAtchName() {
		return tmAtchName;
	}

	public void setTmAtchName(String tmAtchName) {
		this.tmAtchName = tmAtchName;
	}

	public String getTmMem() {
		return tmMem;
	}

	public void setTmMem(String tmMem) {
		this.tmMem = tmMem;
	}

	public String getTmRegDate() {
		return tmRegDate;
	}

	public void setTmRegDate(String tmRegDate) {
		this.tmRegDate = tmRegDate;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getTmContent() {
		return tmContent;
	}

	public void setTmContent(String tmContent) {
		this.tmContent = tmContent;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public int getSumPlayed() {
		return sumPlayed;
	}

	public void setSumPlayed(int sumPlayed) {
		this.sumPlayed = sumPlayed;
	}

	public int getSumWin() {
		return sumWin;
	}

	public void setSumWin(int sumWin) {
		this.sumWin = sumWin;
	}

	public int getSumLose() {
		return sumLose;
	}

	public void setSumLose(int sumLose) {
		this.sumLose = sumLose;
	}

	public int getSumDraw() {
		return sumDraw;
	}

	public void setSumDraw(int sumDraw) {
		this.sumDraw = sumDraw;
	}
}
