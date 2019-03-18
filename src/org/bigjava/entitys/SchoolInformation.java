package org.bigjava.entitys;

public class SchoolInformation {
	private int sci_id;         		//学校信息ID
	private String schoolName;          //学校名
	private String schoolAddress;       //学校地址
	private String intro;    			//简介
	public int getSci_id() {
		return sci_id;
	}
	public void setSci_id(int sci_id) {
		this.sci_id = sci_id;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getSchoolAddress() {
		return schoolAddress;
	}
	public void setSchoolAddress(String schoolAddress) {
		this.schoolAddress = schoolAddress;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	@Override
	public String toString() {
		return "SchoolInformation [sci_id=" + sci_id + ", schoolName=" + schoolName + ", schoolAddress=" + schoolAddress
				+ ", intro=" + intro + "]";
	}

}
