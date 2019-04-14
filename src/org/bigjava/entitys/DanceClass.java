package org.bigjava.entitys;

public class DanceClass {
   
	private int danceclass_id;        //舞蹈班ID
	private String danceclassName;    //舞蹈班名
	private String classHour;     	  //课时
	private String price;       	  //价格
	private String content;			  //教学内容
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
	public String getClassHour() {
		return classHour;
	}
	public void setClassHour(String classHour) {
		this.classHour = classHour;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	@Override
	public String toString() {
		return "DanceClass [danceclass_id=" + danceclass_id + ", danceclassName=" + danceclassName + ", classHour="
				+ classHour + ", price=" + price + ", content=" + content + ", teacher_id=" + teacher_id + "]";
	}


	
}