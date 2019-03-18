package org.bigjava.action.tool;

import org.bigjava.entitys.Management;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

public class AllUserTool {
	
	private Student student;
	private Teacher teacher;
	private Management management;
	public Management getManagement() {
		return management;
	}
	public void setManagement(Management management) {
		this.management = management;
	}
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "AllUserTool [student=" + student + ", teacher=" + teacher + "]";
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
	

	
	
}
