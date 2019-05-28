package poing.product;

public class Paging {
	private int pageSize = 12; // 게시글 수
	private int firstPageNo; // 첫 번째 페이지 번호
	private int prevPageNo; // 이전 페이지 번호
	private int startPageNo; // 시작 페이지
	private int pageNo; // 페이지 번호
	private int endPageNo; // 끝 페이지
	private int nextPageno; // 다음 페이지 번호
	private int finalPageNo; // 마지막 페이지 번호
	private int totalCount; // 게시 글 전체 수
	private int doubleprevPageNo;
	private int doublenextPageNo;
	private int cpage;
	
	
	public int getCpage() {
		return cpage;
	}
	public void setCpage(int cpage) {
		this.cpage = cpage;
	}
	public int getDoubleprevPageNo() {
		return doubleprevPageNo;
	}
	public void setDoubleprevPageNo(int doubleprevPageNo) {
		this.doubleprevPageNo = doubleprevPageNo;
	}
	public int getDoublenextPageNo() {
		return doublenextPageNo;
	}
	public void setDoublenextPageNo(int doublenextPageNo) {
		this.doublenextPageNo = doublenextPageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getFirstPageNo() {
		return firstPageNo;
	}
	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
		
	}
	public int getPrevPageNo() {
		return prevPageNo;
	}
	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}
	public int getStartPageNo() {
		return startPageNo;
	}
	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getEndPageNo() {
		return endPageNo;
	}
	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}
	public int getNextPageno() {
		return nextPageno;
	}
	public void setNextPageno(int nextPageno) {
		this.nextPageno = nextPageno;
	}
	public int getFinalPageNo() {
		return finalPageNo;
	}
	public void setFinalPageNo(int finalPageNo) {
		this.finalPageNo = finalPageNo;
		
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.makePaging();
	}
	
	public void makePaging() {
		if (this.totalCount == 0) return;
		if (this.pageNo == 0) this.setPageNo(1);
		if (this.pageSize == 0) this.setPageSize(12);
		
		int finalPage = (totalCount + (pageSize -1)) / pageSize;
		if(this.pageNo > finalPage) this.setPageNo(finalPage);
		
		boolean isNowFirst = pageNo == 1 ? true : false;
		boolean isNowFinal = pageNo == finalPage ? true : false;
		
		int startPage = ((pageNo - 1) / 12) * 12 +1;
		int endPage = startPage + 12 -1;
		
		this.setFirstPageNo(1);
		
		if (isNowFirst) {
			this.setPrevPageNo(1);
		} else {
			this.setPrevPageNo(((pageNo -1) < 1 ? 1 : (pageNo - 1)));
		}
		
		this.setStartPageNo(startPage);
		this.setEndPageNo(endPage);
		
		if (isNowFinal) {
			this.setNextPageno(finalPage);
		} else {
			this.setNextPageno(((pageNo + 1) > finalPage ? finalPage : (pageNo + 1)));
		}		
	}	
}
