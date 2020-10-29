package kr.co.soccer.searchTeamMem;
 
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import kr.co.soccer.common.PagingVO; 

@SuppressWarnings("serial")
public class SearchTeamMemSearchVO extends PagingVO {

	private String searchType;
	private String searchWord;
	
	private String searchRegion;
	private String searchPosition;

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}

	public String getSearchRegion() {
		return searchRegion;
	}

	public void setSearchRegion(String searchRegion) {
		this.searchRegion = searchRegion;
	}

	public String getSearchPosition() {
		return searchPosition;
	}

	public void setSearchPosition(String searchPosition) {
		this.searchPosition = searchPosition;
	}  

	

}
