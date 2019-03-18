package org.bigjava.entitys;

public class User {
     private int user_id;                        //用户ID
     private String username;                    //用户名
     private String userphone;                   //用户号码
     private String jobapplication;              //申请职位
     public String applicationstatus;           //申请状态
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getJobapplication() {
		return jobapplication;
	}
	public void setJobapplication(String jobapplication) {
		this.jobapplication = jobapplication;
	}
	public String getApplicationstatus() {
		return applicationstatus;
	}
	public void setApplicationstatus(String applicationstatus) {
		this.applicationstatus = applicationstatus;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", username=" + username + ", userphone=" + userphone + ", jobapplication="
				+ jobapplication + ", applicationstatus=" + applicationstatus + "]";
	}
     
}
