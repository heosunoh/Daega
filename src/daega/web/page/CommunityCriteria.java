package daega.web.page;

public class CommunityCriteria {
	private int page;
	private int perPageNum;
	
	public int getPageStart() {
		return (this.page-1)*perPageNum;
	}
	public CommunityCriteria() {
		// TODO Auto-generated constructor stub
		this.page = 1;
		this.perPageNum = 10;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page<=0) {
			this.page = 1;
		}
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int pageCount) {
		int cnt = this.perPageNum;
		if(pageCount!=cnt) {
			this.perPageNum = cnt;
		}
		this.perPageNum = pageCount;
	}
}
