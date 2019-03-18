package org.bigjava.entitys;

public class ManagementInformation {
	
	private int mai_id;        				 //管理员信息ID
	private String managementName;     		 //管理员姓名
	private char managementSex;        		 //性别
	private int managementAge;          	 //年龄
	private String managementidentity;  	 //身份
	private int management_id;				//管理员ID
	public int getMai_id() {
		return mai_id;
	}
	public void setMai_id(int mai_id) {
		this.mai_id = mai_id;
	}
	public String getManagementName() {
		return managementName;
	}
	public void setManagementName(String managementName) {
		this.managementName = managementName;
	}
	public char getManagementSex() {
		return managementSex;
	}
	public void setManagementSex(char managementSex) {
		this.managementSex = managementSex;
	}
	public int getManagementAge() {
		return managementAge;
	}
	public void setManagementAge(int managementAge) {
		this.managementAge = managementAge;
	}
	public String getManagementidentity() {
		return managementidentity;
	}
	public void setManagementidentity(String managementidentity) {
		this.managementidentity = managementidentity;
	}
	public int getManagement_id() {
		return management_id;
	}
	public void setManagement_id(int management_id) {
		this.management_id = management_id;
	}
	
	
	@Override
	public String toString() {
		return "ManagementInformation [mai_id=" + mai_id + ", managementName=" + managementName + ", managementSex="
				+ managementSex + ", managementAge=" + managementAge + ", managementidentity=" + managementidentity
				+ ", management_id=" + management_id + "]";
	}
	

	

}
