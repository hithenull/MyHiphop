package org.bigjava.dao;

import java.util.List;

import org.apache.tomcat.jni.Address;
import org.bigjava.action.tool.AllUserTool;
import org.bigjava.action.tool.Page;
import org.bigjava.entitys.Addresss;
import org.bigjava.entitys.DanceClass;
import org.bigjava.entitys.KeBiao;
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

	public void updateStudent(Student student);								//学生信息修改

	public DanceClass getDanceClass(AllUserTool aut);									//得到用户的班级信息

	public KeBiao getKeBiao(KeBiao kebiao);											//的到该班级的课表

	public List<User> getAllUser();											//拿到所有的用户
	
	public List<DanceClass> findPage_danceclass(Page page);                  //班级信息显示分页

	public int findCount_danceclass();										//查询舞蹈班级的总数

	public Student find_idStudent(int student_id);							//根据id查询所有的student		
}
