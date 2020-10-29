package kr.co.soccer.league;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

@SuppressWarnings("serial")
public class LeagueVO implements Serializable {

	@NotBlank(message = "리그코드는 필수입니다.")
	private String lgCode;             /* 리그 코드 */
	@NotBlank(message = "리그이름는 필수입니다.")
	private String lgName;             /* 리그 이름 */
	@NotBlank(message = "시작날짜는 필수입니다.")
	private String startDate;          /* 시작날짜 */
	private String endDate;            /* 종료날짜 */
	@NotBlank(message = "개최지역은 필수입니다.")
	private String lgRegion;           /* 개최지역 */
	private String lgWinner;           /* 우승팀 */
	private String lgJoin;             /* 참가팀 */
	private String lgDel;              /* 삭제여부 */
	@NotBlank(message = "참여 팀 갯수는 필수입니다.")
	private String teamCount;             /* 참여 팀 수*/
	
	private String tmId;             /* 참여 팀 아이디*/
	private String memId;             /* 팀 주장 아이디*/
	public String getLgCode() {
		return lgCode;
	}
	public void setLgCode(String lgCode) {
		this.lgCode = lgCode;
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
	public String getLgWinner() {
		return lgWinner;
	}
	public void setLgWinner(String lgWinner) {
		this.lgWinner = lgWinner;
	}
	public String getLgJoin() {
		return lgJoin;
	}
	public void setLgJoin(String lgJoin) {
		this.lgJoin = lgJoin;
	}
	@Override 
	 public String toString() { 
		 return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	 }
	public String getLgDel() {
		return lgDel;
	}
	public void setLgDel(String lgDel) {
		this.lgDel = lgDel;
	}
	public String getTeamCount() {
		return teamCount;
	}
	public void setTeamCount(String teamCount) {
		this.teamCount = teamCount;
	}
	public String getTmId() {
		return tmId;
	}
	public void setTmId(String tmId) {
		this.tmId = tmId;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
}
