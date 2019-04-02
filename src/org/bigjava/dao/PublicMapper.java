package org.bigjava.dao;

import java.util.List;

import org.bigjava.action.tool.Page;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

public interface PublicMapper {
	public void add(Student student)throws Exception;
	
    public void insertUser(User user) throws Exception;                        //添加学生
	
	public void updateUser(User user) throws Exception;                       //查询User

	public User findUserById(User user) throws  Exception;                    //通过id查询User

	public Teacher findTeacherById(Teacher teacher);                          //通过id查询老师

	public Student findStudentById(Student student);                          //通过id查询学生

	public int findNewsAll();										  		  //查询new总条数

	public List<User> findNews(Page page);									  //分页查询news

}
