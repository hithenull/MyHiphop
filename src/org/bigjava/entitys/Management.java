package org.bigjava.entitys;

public class Management {
	
	private int management_id;   		//管理员id
	private String account;    			//管理员账号
	private String password;    		//密码
	public int getManagement_id() {
		return management_id;
	}
	public void setManagement_id(int management_id) {
		this.management_id = management_id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		System.out.println("iiiiiiiiiiii"+account);
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Management [management_id=" + management_id + ", account=" + account + ", password=" + password + "]";
	}
	

}
