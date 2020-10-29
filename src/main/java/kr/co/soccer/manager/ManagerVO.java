package kr.co.soccer.manager;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

@SuppressWarnings("serial")
public class ManagerVO implements Serializable {
	
	private String managerId;          /* 관리자ID */
	private String managerPass;        /* 관리자PW */
	private String managerName;        /* 관리자이름 */
	private String ManagerRegion;      /* 관리자주소 */
	
	 @Override 
	 public String toString() { 
		 return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	 }

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getManagerPass() {
		return managerPass;
	}

	public void setManagerPass(String managerPass) {
		this.managerPass = managerPass;
	}

	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public String getManagerRegion() {
		return ManagerRegion;
	}

	public void setManagerRegion(String managerRegion) {
		ManagerRegion = managerRegion;
	}

}