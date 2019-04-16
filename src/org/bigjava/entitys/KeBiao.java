package org.bigjava.entitys;

public class KeBiao {
	private int kebiao_id;
	private String am_first;
	private String am_last;
	private String pm_first;
	private String pm_last;
	private String content;
	private	String danceClass_id;
	private String date;
	
	@Override
	public String toString() {
		return "KeBiao [kebiao_id=" + kebiao_id + ", am_first=" + am_first + ", am_last=" + am_last + ", pm_first="
				+ pm_first + ", pm_last=" + pm_last + ", content=" + content + ", danceClass_id=" + danceClass_id
				+ ", date=" + date + "]";
	}
	public int getKebiao_id() {
		return kebiao_id;
	}
	public void setKebiao_id(int kebiao_id) {
		this.kebiao_id = kebiao_id;
	}
	public String getAm_first() {
		return am_first;
	}
	public void setAm_first(String am_first) {
		this.am_first = am_first;
	}
	public String getAm_last() {
		return am_last;
	}
	public void setAm_last(String am_last) {
		this.am_last = am_last;
	}
	public String getPm_first() {
		return pm_first;
	}
	public void setPm_first(String pm_first) {
		this.pm_first = pm_first;
	}
	public String getPm_last() {
		return pm_last;
	}
	public void setPm_last(String pm_last) {
		this.pm_last = pm_last;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDanceClass_id() {
		return danceClass_id;
	}
	public void setDanceClass_id(String danceClass_id) {
		this.danceClass_id = danceClass_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
