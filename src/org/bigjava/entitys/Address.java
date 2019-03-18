package org.bigjava.entitys;

 
public class Address {
	
	private int address_id;           //地址ID
	private String province;          //省份
	private String city;              //市民
	private String district;          //区
	private String addressName;       //地址名
	private int student_id;			  //学生id
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	@Override
	public String toString() {
		return "Address [address_id=" + address_id + ", province=" + province + ", city=" + city + ", district="
				+ district + ", addressName=" + addressName + ", student_id=" + student_id + "]";
	}	

}
