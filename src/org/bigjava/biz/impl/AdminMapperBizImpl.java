package org.bigjava.biz.impl;

import java.util.List;

import org.bigjava.action.tool.AllUserTool;
import org.bigjava.action.tool.Page;
import org.bigjava.biz.AdminMapperBiz;
import org.bigjava.dao.AdminMapper;
import org.bigjava.entitys.Management;
import org.bigjava.entitys.DanceClass;
import org.bigjava.entitys.News;
import org.bigjava.entitys.SchoolInformation;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;



public class AdminMapperBizImpl implements AdminMapperBiz {

	private AdminMapper adminMapper;
	
	public void setAdminMapper(AdminMapper adminMapper) {
		this.adminMapper = adminMapper;
	}
	
	

	@Override
	public void addNew(News news) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(news);
		adminMapper.addNew(news);
		System.out.println("OK");
	}

    public List<Student> findPage(Page page){
		return adminMapper.findPage(page);	   
		}
    
    
    public int findCount() {
    	System.out.println("xxxxxx");
	    return adminMapper.findCount(); 
    }


    /**
     * 分页查询未通过的用户
     * return List<User>
     */
	@Override
	public List<User> findUserWait(Page page) {
		// TODO Auto-generated method stub
		return adminMapper.findUserWait(page);
	}


	@Override
	public int findWaitCount() {
		// TODO Auto-generated method stub
		return adminMapper.findWaitCount();
	}


	@Override
	public int findTeacherCount() {
		// TODO Auto-generated method stub
		return adminMapper.findTeacherCount();
	}


	@Override
	public List<User> findTeacher(Page page) {
		// TODO Auto-generated method stub
		return adminMapper.findTeacher(page);

	}


	@Override
	public void updateTeacherWait(User user) {
		// TODO Auto-generated method stub
		adminMapper.updateTeacherWait(user);
	}
	

	@Override
	public void findfenye() throws Exception {
		// TODO Auto-generated method stub
		
	}


   
	@Override
	public void adminadd( Management management) {
		adminMapper.adminadd(management);
		
	}
	@Override
	public void addSchoolIf(SchoolInformation schoolIf) {
		// TODO Auto-generated method stub
		adminMapper.addSchoolIf(schoolIf);
	}



	@Override
	public void admindel() {
		adminMapper.admindel();
		
	}
		
	public void addDClass(DanceClass dClass) {
		// TODO Auto-generated method stub
		adminMapper.addDClass(dClass);
	}




	@Override
	public int findCount_admin() {
		// TODO Auto-generated method stub
		return adminMapper.findCount_admin();
	}




	@Override
	public List<Management> findPage_admin(Page page) {
		// TODO Auto-generated method stub
		return adminMapper.findPage_admin(page);
	}




	@Override
	public List<Management> adminupdate(int id) {
		// TODO Auto-generated method stub
		System.out.println("bizimpl");
		return  adminMapper.adminupdate(id);
		
	}


	@Override
	public void adminupdate1(Management management1) {
		 adminMapper.adminupdate1(management1);
		
	}



	@Override
	public void updateNews(News news) {
		// TODO Auto-generated method stub
		adminMapper.updateNews(news);
	}



	@Override
	public List<DanceClass> getAllClass() {
		// TODO Auto-generated method stub
		return adminMapper.getAllClass();
	}



	@Override
	public void updateClass(DanceClass dc) {
		// TODO Auto-generated method stub
		adminMapper.updateClass(dc);
	}



	@Override
	public List<Student> findAllStudent() {
		// TODO Auto-generated method stub
		return adminMapper.findAllStudent();
	}



	@Override
	public User findUserById(int i) {
		// TODO Auto-generated method stub
		return adminMapper.findUserById(i);
	}



	@Override
	public void delUserById(int user_id) {
		// TODO Auto-generated method stub
		adminMapper.delUserById(user_id);
	}



	@Override
	public int addStudent(Student student) {
		// TODO Auto-generated method stub
		return adminMapper.addStudent(student);
	}



	@Override
	public void addStudent2(Student student) {
		// TODO Auto-generated method stub
		adminMapper.addStudent2(student);
	}



	@Override
	public int addTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return adminMapper.addTeacher(teacher);
	}



	@Override
	public void addTeacher2(Teacher teacher) {
		// TODO Auto-generated method stub
		adminMapper.addTeacher2(teacher);
	}



	@Override
	public List<Teacher> getAllTeacher() {
		// TODO Auto-generated method stub
		return adminMapper.getAllTeacher();
	}








   



}
