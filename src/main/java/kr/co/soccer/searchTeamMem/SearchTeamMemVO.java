package kr.co.soccer.searchTeamMem;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

@SuppressWarnings("serial")
public class SearchTeamMemVO implements Serializable {
	//search Team VO
	private int schtNo;                /* 글번호 */
	private String memId;              /* 회원ID */
	private String schtPosition;       /* 포지션 */
	private String schtAge;            /* 나이 */
	private String schtRegion;         /* 지역 */
	private String schtTime;           /* 희망시간 */
	private int schtHit;               /* 조회수 */
	private String schtTitle;          /* 글제목 */
	private String schtContent;        /* 글내용 */
	private String memPass;            /* 회원PW */
	private String schtRegDate;		   /* 등록일 */
	private String schtPhone;			/*전화번호 */
	
	//코드로 불러오는 컬럼
	private String schtName;			/* 멤버테이블 작성자 */
	private String schtPositionNm;		/* 포지션 네임 */
	private String schtRegionNm;		/* 지역 네임 */
	private String schtTimeNm;			/* 시간대 네임*/
	private String schtAgeNm;			/* 나이대 네임*/
	
	//검색 카테고리
	private String schtCategory;		/* 검색 카테고리*/
	private int searchResult;			/* 매칭 확률 결과*/
	
	//search Member VO
	private int schmNo;                /* 글번호 */
	private int tmId;               /* 팀ID */
	private String tmName;             /* 팀이름 */
	private String schmPosition;       /* 포지션 */
	private String schmAge;            /* 나이 */
	private String schmRegion;         /* 지역 */
	private String schmTime;           /* 희망시간 */
	private int schmHit;               /* 조회수 */
	private String schmTitle;          /* 글제목 */
	private String schmContent;        /* 글내용 */
	private String schmRegDate;   	   /* 등록일 */
	private String schmPhone;			/* 전화번호*/
	
	//코드로 불러오는 컬럼
	private String schmName;			/* 멤버테이블 작성자 */
	private String schmPositionNm;		/* 포지션 네임 */
	private String schmRegionNm;		/* 지역 네임 */
	private String schmTimeNm;			/* 시간대 네임*/
	private String schmAgeNm;			/* 나이대 네임*/
	
	
	
	//ToString
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
	
	
	public String getSchtCategory() {
		return schtCategory;
	}

	public void setSchtCategory(String schtCategory) {
		this.schtCategory = schtCategory;
	}

	public String getSchtName() {
		return schtName;
	}

	public void setSchtName(String schtName) {
		this.schtName = schtName;
	}
	
	public String getSchtPositionNm() {
		return schtPositionNm;
	}

	public void setSchtPositionNm(String schtPositionNm) {
		this.schtPositionNm = schtPositionNm;
	}

	public String getSchtRegionNm() {
		return schtRegionNm;
	}

	public void setSchtRegionNm(String schtRegionNm) {
		this.schtRegionNm = schtRegionNm;
	}

	//search Team
	public int getSchtNo() {
		return schtNo;
	}

	public void setSchtNo(int schtNo) {
		this.schtNo = schtNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getSchtPosition() {
		return schtPosition;
	}

	public String getSchtRegDate() {
		return schtRegDate;
	}

	public void setSchtRegDate(String schtRegDate) {
		this.schtRegDate = schtRegDate;
	}

	public void setSchtPosition(String schtPosition) {
		this.schtPosition = schtPosition;
	}

	public String getSchtAge() {
		return schtAge;
	}

	public void setSchtAge(String schtAge) {
		this.schtAge = schtAge;
	}

	public String getSchtRegion() {
		return schtRegion;
	}

	public void setSchtRegion(String schtRegion) {
		this.schtRegion = schtRegion;
	}

	public String getSchtTime() {
		return schtTime;
	}

	public void setSchtTime(String schtTime) {
		this.schtTime = schtTime;
	}

	public int getSchtHit() {
		return schtHit;
	}

	public void setSchtHit(int schtHit) {
		this.schtHit = schtHit;
	}

	public String getSchtTitle() {
		return schtTitle;
	}

	public void setSchtTitle(String schtTitle) {
		this.schtTitle = schtTitle;
	}

	public String getSchtContent() {
		return schtContent;
	}

	public void setSchtContent(String schtContent) {
		this.schtContent = schtContent;
	}

	public String getMemPass() {
		return memPass;
	}

	public void setMemPass(String memPass) {
		this.memPass = memPass;
	}
	public String getSchtTimeNm() {
		return schtTimeNm;
	}


	public void setSchtTimeNm(String schtTimeNm) {
		this.schtTimeNm = schtTimeNm;
	}


	public String getSchtAgeNm() {
		return schtAgeNm;
	}


	public void setSchtAgeNm(String schtAgeNm) {
		this.schtAgeNm = schtAgeNm;
	}
	
	
	
	//search Member
	public int getSchmNo() {
		return schmNo;
	}

	public void setSchmNo(int schmNo) {
		this.schmNo = schmNo;
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

	public String getSchmPosition() {
		return schmPosition;
	}

	public void setSchmPosition(String schmPosition) {
		this.schmPosition = schmPosition;
	}

	public String getSchmAge() {
		return schmAge;
	}

	public void setSchmAge(String schmAge) {
		this.schmAge = schmAge;
	}

	public String getSchmRegion() {
		return schmRegion;
	}

	public void setSchmRegion(String schmRegion) {
		this.schmRegion = schmRegion;
	}

	public String getSchmTime() {
		return schmTime;
	}

	public void setSchmTime(String schmTime) {
		this.schmTime = schmTime;
	}

	public int getSchmHit() {
		return schmHit;
	}

	public void setSchmHit(int schmHit) {
		this.schmHit = schmHit;
	}

	public String getSchmTitle() {
		return schmTitle;
	}

	public void setSchmTitle(String schmTitle) {
		this.schmTitle = schmTitle;
	}

	public String getSchmContent() {
		return schmContent;
	}

	public void setSchmContent(String schmContent) {
		this.schmContent = schmContent;
	}


	public String getSchmName() {
		return schmName;
	}


	public void setSchmName(String schmName) {
		this.schmName = schmName;
	}


	public String getSchmPositionNm() {
		return schmPositionNm;
	}


	public void setSchmPositionNm(String schmPositionNm) {
		this.schmPositionNm = schmPositionNm;
	}


	public String getSchmRegionNm() {
		return schmRegionNm;
	}


	public void setSchmRegionNm(String schmRegionNm) {
		this.schmRegionNm = schmRegionNm;
	}


	public String getSchmTimeNm() {
		return schmTimeNm;
	}


	public void setSchmTimeNm(String schmTimeNm) {
		this.schmTimeNm = schmTimeNm;
	}


	public String getSchmAgeNm() {
		return schmAgeNm;
	}


	public void setSchmAgeNm(String schmAgeNm) {
		this.schmAgeNm = schmAgeNm;
	}


	public String getSchmRegDate() {
		return schmRegDate;
	}


	public void setSchmRegDate(String schmRegDate) {
		this.schmRegDate = schmRegDate;
	}


	public int getSearchResult() {
		return searchResult;
	}


	public void setSearchResult(int searchResult) {
		this.searchResult = searchResult;
	}


	public String getSchtPhone() {
		return schtPhone;
	}


	public void setSchtPhone(String schtPhone) {
		this.schtPhone = schtPhone;
	}


	public String getSchmPhone() {
		return schmPhone;
	}


	public void setSchmPhone(String schmPhone) {
		this.schmPhone = schmPhone;
	}
	
	
	



	
	
}
