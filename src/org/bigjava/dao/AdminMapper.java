package org.bigjava.dao;

import java.util.List;

import org.bigjava.action.tool.Page;
import org.bigjava.entitys.DanceClass;
import org.bigjava.entitys.Management;
import org.bigjava.entitys.News;
import org.bigjava.entitys.SchoolInformation;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;



public interface AdminMapper {
	
	public void addNew(News news)throws Exception;
	
	public List<Student> findPage(Page page);
	
	public int findCount();

	public List<User> findUserWait(Page page);

	public int findWaitCount();

	public int findTeacherCount();

	public List<User> findTeacher(Page page);

	public void updateTeacherWait(User user);

	public void adminadd(Management management);

	public void admindel();

	public void addSchoolIf(SchoolInformation schoolIf);

	public void addDClass(DanceClass dClass);

	public void adminfind();

	public int findCount_admin();

	public List<Management> findPage_admin(Page page);

	public List<Management> adminupdate(int id);

	public void adminupdate1(Management management1);

	public void updateNews(News news);

	public List<DanceClass> getAllClass();

	public void updateClass(DanceClass dc);

	public List<Student> findAllStudent();
	
	
	

	public User findUserById(int i);

	public void delUserById(int user_id);

	public int addStudent(Student student);

	public void addStudent2(Student student);

	public int addTeacher(Teacher teacher);

	public void addTeacher2(Teacher teacher);

	public List<Teacher> getAllTeacher();
	
}
