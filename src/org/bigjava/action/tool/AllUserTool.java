package org.bigjava.action.tool;

import org.bigjava.entitys.Management;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

public class AllUserTool {
	
	private User user = new User();
	private Student student = new Student();
	private Teacher teacher = new Teacher();
	private Management management = new Management();
	
	public Management getManagement() {
		return management;
	}
	public void setManagement(Management management) {
		this.management = management;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	@Override
	public String toString() {
		return "AllUserTool [user=" + user + ", student=" + student + ", teacher=" + teacher + ", management="
				+ management + "]";
	}
	

	
	
}
