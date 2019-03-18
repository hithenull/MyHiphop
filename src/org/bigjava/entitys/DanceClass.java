package org.bigjava.entitys;

public class DanceClass {
   
	private int danceclass_id;        //舞蹈班ID
	private String danceclassName;    //舞蹈班名
	private String duration;     	  //时长
	private String price;       	  //价格
	private String saturday;          //星期六上课时间
	private String sunday;            //星期天上课时间
	private int teacher_id;			  //老师ID

	public int getDanceclass_id() {
		return danceclass_id;
	}
	public void setDanceclass_id(int danceclass_id) {
		this.danceclass_id = danceclass_id;
	}
	public String getDanceclassName() {
		return danceclassName;
	}
	public void setDanceclassName(String danceclassName) {
		this.danceclassName = danceclassName;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSaturday() {
		return saturday;
	}
	public void setSaturday(String saturday) {
		this.saturday = saturday;
	}
	public String getSunday() {
		return sunday;
	}
	public void setSunday(String sunday) {
		this.sunday = sunday;
	}
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	@Override
	public String toString() {
		return "DanceClass [danceclass_id=" + danceclass_id + ", danceclassName=" + danceclassName + ", duration="
				+ duration + ", price=" + price + ", saturday=" + saturday + ", sunday=" + sunday + ", teacher_id="
				+ teacher_id + "]";
	} 
	
}