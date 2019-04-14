package org.bigjava.dao;

import java.util.List;

import org.apache.tomcat.jni.Address;
import org.bigjava.action.tool.Page;
import org.bigjava.entitys.Addresss;
import org.bigjava.entitys.Management;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

public interface PublicMapper {
	public void add(Student student)throws Exception;
	
    public void insertUser(User user) throws Exception;                        //添加学生
	
	public void updateUser(User user) throws Exception;                       //查询User

	public User findUserById(User user) throws  Exception;                    //通过id查询User

	public int findNewsAll();										  		  //查询new总条数

	public List<User> findNews(Page page);									  //分页查询news

	public Student login_student(Student student1);								//登陆时校验是否是学生

	public Teacher login_teacher(Teacher teacher);								//登陆时校验是否是老师

	public Management login_admin(Management management);						//登陆时校验是否是管理员

	public Addresss getAddress(int a);									//根据address_id查询学生地址
	
	
}
