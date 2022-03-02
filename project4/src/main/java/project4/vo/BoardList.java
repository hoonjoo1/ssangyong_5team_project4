package project4.vo;

public class BoardList {
	private int fppkey;
	private String title;
	private String loc;
	private String writedate;
	private String nickname;
	private int viewcnt;
	// 검색
	private String sch;
	// 페이징
	private int count;
	private int pageSize; // 한번에 보여줄 데이터 건수(화면 select-요청)
	private int pageCount; // 총 페이지 수(총건수/한번에 보여줄 데이터 건수)
	private int curPage; // 클릭한 현재 페이지 번호
	private int start; // DB에 넘길 페이지의 시작 번호
	private int end; // DB에 넘길 페이지의 마지막 번호
	// block 처리
	private int blockSize; // 한번에 보여줄 하단의 페이지 블럭
	private int startBlock; // 블럭의 시작 번호
	private int endBlock; // 블럭의 마지막 번호
	public BoardList() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public BoardList(int fppkey, String title, String loc, String writedate, String nickname, int viewcnt, String sch,
			int count, int pageSize, int pageCount, int curPage, int start, int end, int blockSize, int startBlock,
			int endBlock) {
		super();
		this.fppkey = fppkey;
		this.title = title;
		this.loc = loc;
		this.writedate = writedate;
		this.nickname = nickname;
		this.viewcnt = viewcnt;
		this.sch = sch;
		this.count = count;
		this.pageSize = pageSize;
		this.pageCount = pageCount;
		this.curPage = curPage;
		this.start = start;
		this.end = end;
		this.blockSize = blockSize;
		this.startBlock = startBlock;
		this.endBlock = endBlock;
	}

	public int getFppkey() {
		return fppkey;
	}
	public void setFppkey(int fppkey) {
		this.fppkey = fppkey;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getBlockSize() {
		return blockSize;
	}
	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}
	public int getStartBlock() {
		return startBlock;
	}
	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}
	public String getSch() {
		return sch;
	}
	public void setSch(String sch) {
		this.sch = sch;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	
}
