
package org.bigjava.biz;


import org.bigjava.action.tool.AllUserTool;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

public interface MapperBiz {

	public void add(AllUserTool allUserTool) throws Exception;

	public void findfenye() throws Exception;

	public void insertUser(User user) throws Exception;

	public User findUserById(User user) throws Exception;
	
	public boolean findStudentById(Student student) throws Exception;
	
	public boolean findTeacherById(Teacher teacher) throws Exception;


}

