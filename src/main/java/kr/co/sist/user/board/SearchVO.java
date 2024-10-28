package kr.co.sist.user.board;

/**
 * 현재페이지, 시작번호, 끝번호, 검색컬럼, 검색값, 검색URL
 */
public class SearchVO {
	private int strartNum, endNum, currentPage, totalPage, 
				totalCount;
	//검색 시작번호, 끝번호, 현재페이지번호, 총페이지 수, 총 게시물 수
	private String field="0", keyword, url;//검색할 field에 대응되는 숫자, 검색값, 이동할 url

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getStrartNum() {
		return strartNum;
	}

	public void setStrartNum(int strartNum) {
		this.strartNum = strartNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	@Override
	public String toString() {
		return "SearchVO [strartNum=" + strartNum + ", endNum=" + endNum + ", currentPage=" + currentPage
				+ ", totalPage=" + totalPage + ", totalCount=" + totalCount + ", field=" + field + ", keyword="
				+ keyword + ", url=" + url + "]";
	}

}
