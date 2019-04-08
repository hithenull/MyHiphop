
package org.bigjava.biz;


import java.util.List;

import org.bigjava.action.tool.AllUserTool;
import org.bigjava.action.tool.Page;
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

	public boolean login_student(Student student1);

	public boolean login_teacher(Teacher teacher);

	public boolean login_admin(Management management);

}

