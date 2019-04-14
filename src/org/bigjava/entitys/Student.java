package org.bigjava.entitys;

public class Student {

	private int student_id;    		  //学生Id
	private String studentName;       //姓名
	private String phone;         	  //电话号码
	private String paymentstatus;	  //缴费状态״̬
	private char studentSex;          //性别
	private int StudentAge;           //年龄
	private String password;          //密码
	private String birthday;          //出生日期
	private String studentNumber;     //学号
	private int danceclass_id;        //班级ID
	private String simg_src;          //学生图片路径
	private int address_id;			//地址id
	
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPaymentstatus() {
		return paymentstatus;
	}
	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}
	public char getStudentSex() {
		return studentSex;
	}
	public void setStudentSex(char studentSex) {
		this.studentSex = studentSex;
	}
	public int getStudentAge() {
		return StudentAge;
	}
	public void setStudentAge(int studentAge) {
		StudentAge = studentAge;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(String studentNumber) {
		this.studentNumber = studentNumber;
	}
	public int getDanceclass_id() {
		return danceclass_id;
	}
	public void setDanceclass_id(int danceclass_id) {
		this.danceclass_id = danceclass_id;
	}
	public String getSimg_src() {
		return simg_src;
	}
	public void setSimg_src(String simg_src) {
		this.simg_src = simg_src;
	}
	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", studentName=" + studentName + ", phone=" + phone
				+ ", paymentstatus=" + paymentstatus + ", studentSex=" + studentSex + ", StudentAge=" + StudentAge
				+ ", password=" + password + ", birthday=" + birthday + ", studentNumber=" + studentNumber
				+ ", danceclass_id=" + danceclass_id + ", simg_src=" + simg_src + "]";
	}
	
	
}