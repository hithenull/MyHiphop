package org.bigjava.entitys;

public class Teacher {
	
	private int teacher_id;              //老师ID
	private String teacherName;          //姓名
	private char teacherSex;             //性别
	private String phone;                //电话
	private String professional;         //ְ职称
	private String danceAge;             //舞龄
	private String teacherNumber;        //老师编号
	private String teacherPassword;      //老师密码
	private String timg_src;             //老师图片路径
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public char getTeacherSex() {
		return teacherSex;
	}
	public void setTeacherSex(char teacherSex) {
		this.teacherSex = teacherSex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProfessional() {
		return professional;
	}
	public void setProfessional(String professional) {
		this.professional = professional;
	}
	public String getDanceAge() {
		return danceAge;
	}
	public void setDanceAge(String danceAge) {
		this.danceAge = danceAge;
	}
	public String getTeacherNumber() {
		return teacherNumber;
	}
	public void setTeacherNumber(String teacherNumber) {
		this.teacherNumber = teacherNumber;
	}
	public String getTeacherPassword() {
		return teacherPassword;
	}
	public void setTeacherPassword(String teacherPassword) {
		this.teacherPassword = teacherPassword;
	}
	public String getTimg_src() {
		return timg_src;
	}
	public void setTimg_src(String timg_src) {
		this.timg_src = timg_src;
	}
	@Override
	public String toString() {
		return "Teacher [teacher_id=" + teacher_id + ", teacherName=" + teacherName + ", teacherSex=" + teacherSex
				+ ", phone=" + phone + ", professional=" + professional + ", danceAge=" + danceAge + ", teacherNumber="
				+ teacherNumber + ", teacherPassword=" + teacherPassword + ", timg_src=" + timg_src + "]";
	}
	
	
}