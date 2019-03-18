package org.bigjava.action.tool;

import java.util.List;

import org.bigjava.entitys.Management;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

public class AllUTL {
	
	private List<Student> lists;
	private List<Teacher> listt;
	private List<User> listu;
	
	
	public List<Student> getLists() {
		return lists;
	}
	public void setLists(List<Student> lists) {
		this.lists = lists;
	}
	public List<Teacher> getListt() {
		return listt;
	}
	public void setListt(List<Teacher> listt) {
		this.listt = listt;
	}
	public List<User> getListu() {
		return listu;
	}
	public void setListu(List<User> listu) {
		this.listu = listu;
	}
	
	
	@Override
	public String toString() {
		return "AllUserTool [lists=" + lists + ", listt=" + listt + ", listu=" + listu + "]";
	}
	
}
