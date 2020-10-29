package kr.co.soccer.code;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

@SuppressWarnings("serial")
public class CodeVO implements Serializable {
	private String commCode;           /* 코드 */
	private String commName;           /* 코드명 */
	private String commParent;         /* 부모 코드 */
	private int commOrder;             /* 순번 */

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

	public String getCommCode() {
		return commCode;
	}

	public void setCommCode(String commCode) {
		this.commCode = commCode;
	}

	public String getCommName() {
		return commName;
	}

	public void setCommName(String commName) {
		this.commName = commName;
	}

	public String getCommParent() {
		return commParent;
	}

	public void setCommParent(String commParent) {
		this.commParent = commParent;
	}

	public int getCommOrder() {
		return commOrder;
	}

	public void setCommOrder(int commOrder) {
		this.commOrder = commOrder;
	}


}
