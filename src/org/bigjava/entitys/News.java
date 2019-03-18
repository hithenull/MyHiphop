package org.bigjava.entitys;

public class News {
    
	private int news_id;                    //新闻id
	private String headline;                //新闻标题
	private String date;                    //标题时间
	
	
	public int getNews_id() {
		return news_id;
	}
	public void setNews_id(int news_id) {
		this.news_id = news_id;
	}
	public String getHeadline() {
		return headline;
	}
	public void setHeadline(String headline) {
		this.headline = headline;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "News [news_id=" + news_id + ", headline=" + headline + ", date=" + date + "]";
	}
	
}
