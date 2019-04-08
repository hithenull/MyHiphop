package org.bigjava.action.tool;

public class Page {
    private int pageno;             //当前页面页数
    private int pagesize;           //页面显示条数
    private int totalcount;        //数据总条数
    private int totalpage;         //总页数
    private int startrow;          //开始数据条数
    private int endrow;            //结束数据条数
    private String canShu1;			//page分页时需要使用的参数1
    private String canShu2;			//page分页时需要使用的参数2
    
    public String getCanShu1() {
		return canShu1;
	}
	public void setCanShu1(String canShu1) {
		this.canShu1 = canShu1;
	}
	public String getCanShu2() {
		return canShu2;
	}
	public void setCanShu2(String canShu2) {
		this.canShu2 = canShu2;
	}
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
