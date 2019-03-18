package org.bigjava.action.tool;

public class Page {
    private int pageno;             //页数
    private int pagesize;           //每页大小
    private int totalcount;        //总数
    private int totalpage;         //总页数
    private int startrow;          //开始行数
    private int endrow;            //最后行数
    public Page() {
    }
    public Page(int pageno, int pagesize, int totalcount) {
        this.pageno = pageno;
        this.pagesize = pagesize;
        this.startrow=(pageno-1)*pagesize;
        this.endrow=pageno*pagesize;
        this.totalcount = totalcount;
        this.totalpage = a(totalcount,pagesize);
    }
	public int getPageno() {
		return pageno;
	}
	public void setPageno(int pageno) {
		this.pageno = pageno;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public int getStartrow() {
		return startrow;
	}
	public void setStartrow(int startrow) {
		this.startrow = startrow;
	}
	public int getEndrow() {
		return endrow;
	}
	public void setEndrow(int endrow) {
		this.endrow = endrow;
	}
     
	public int a(int totalcount,int pagesize) {
		int t=1;
		if(pagesize>0) {
			t = (int) Math.ceil((double)totalcount/pagesize);
		}else {
			t = 1;
		}
		
		return t;
	}
}
