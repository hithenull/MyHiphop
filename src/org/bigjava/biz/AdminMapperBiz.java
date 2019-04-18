package org.bigjava.biz;

import java.util.List;

import org.bigjava.action.tool.AllUserTool;
import org.bigjava.action.tool.Page;
import org.bigjava.entitys.Management;
import org.bigjava.entitys.DanceClass;
import org.bigjava.entitys.News;
import org.bigjava.entitys.SchoolInformation;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

public interface AdminMapperBiz {
	
	public void addNew(News news) throws Exception;
	
	public List<User> findUserWait(Page page);
	
	public int findWaitCount();
	
	public int findTeacherCount();
	
	public List<User> findTeacher(Page page);
	
	public void updateTeacherWait(User user);
	
	public void findfenye() throws Exception;

	public void adminadd( Management management);

	public void admindel();

	public void addSchoolIf(SchoolInformation schoolIf);

	public void addDClass(DanceClass dClass);

	public int findCount_admin();

	public List<Management> findPage_admin(Page page);

	public List<Management> adminupdate(int id);

	public void adminupdate1(Management management1);

	public void updateNews(News news);

	public List<DanceClass> getAllClass();

	public void updateClass(DanceClass dc);

	public List<Student> findAllStudent();

}
