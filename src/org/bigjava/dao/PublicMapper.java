package org.bigjava.dao;

import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

public interface PublicMapper {
	public void add(Student student)throws Exception;
	
    public void insertUser(User user) throws Exception;                        //添加用户
	
	public void updateUser(User user) throws Exception;                       //用户修改

	public User findUserById(User user) throws  Exception;                    //根据ID查询用户

	public Teacher findTeacherById(Teacher teacher);                          //根据ID查询老师

	public Student findStudentById(Student student);                          //根据ID查询学生
}
