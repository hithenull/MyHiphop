
package org.bigjava.biz;


import java.util.List;

import org.bigjava.action.tool.AllUserTool;
import org.bigjava.action.tool.Page;
import org.bigjava.entitys.Addresss;
import org.bigjava.entitys.DanceClass;
import org.bigjava.entitys.KeBiao;
import org.bigjava.entitys.Management;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

public interface MapperBiz {

	public void add(AllUserTool allUserTool) throws Exception;

	public void findfenye() throws Exception;

	public void insertUser(User user) throws Exception;

	public User findUserById(User user) throws Exception;
	
	public int findNewsAll();

	public List<User> findNews(Page page);

	public Student login_student(Student student1);

	public Teacher login_teacher(Teacher teacher);

	public Management login_admin(Management management);

	public Addresss getAddress(int i);

	public void updateStudent(Student student);

	public DanceClass getDanceClass(AllUserTool aut);

	public KeBiao getKeBiao(KeBiao kebiao);

	public List<User> getAllUser();
	
	public List<DanceClass> findPage_danceclass(Page page);
	
	public int findCount_danceclass();
}

