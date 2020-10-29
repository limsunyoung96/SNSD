package kr.co.soccer.login;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

// VO 생성시 Serializable 구현하는게 원칙 입니다.
public class UserVO {
	private String userId;
	private String userName;
	private String userPass;

	private String userTeamName;
	private int userTeamId;
	
	private String userRegion;
	public UserVO() {
	}

	
	public UserVO(String userId, String userName, String userPass) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPass = userPass;
	}
	


	// toString() 구현
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
		/*
		 * return "UserVO [userId=" + userId + ", userName=" + userName + ", userPass="
		 * + userPass + ", userRole=" + userRole + "]";
		 */
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public String getUserPass() {
		return userPass;
	}



	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}


	public String getUserTeamName() {
		return userTeamName;
	}


	public void setUserTeamName(String userTeamName) {
		this.userTeamName = userTeamName;
	}
	public int getUserTeamId() {
		return userTeamId;
	}
	public void setUserTeamId(int userTeamId) {
		this.userTeamId = userTeamId;
	}


	public String getUserRegion() {
		return userRegion;
	}


	public void setUserRegion(String userRegion) {
		this.userRegion = userRegion;
	}
	
}