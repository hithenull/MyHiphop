package org.bigjava.biz.impl;

import java.util.List;

import org.bigjava.action.tool.AllUserTool;
import org.bigjava.action.tool.Page;
import org.bigjava.biz.MapperBiz;
import org.bigjava.dao.PublicMapper;
import org.bigjava.entitys.Addresss;
import org.bigjava.entitys.DanceClass;
import org.bigjava.entitys.KeBiao;
import org.bigjava.entitys.Management;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.User;


import org.bigjava.entitys.Teacher;




public class MapperBizImpl implements MapperBiz {

	private PublicMapper publicMapper;

	public void setPublicMapper(PublicMapper publicMapper) {
		this.publicMapper = publicMapper;
	}

 
	@Override
	public void add(AllUserTool allUserTool) throws Exception {
		System.out.println("bizimpl");
		System.out.println(allUserTool.getStudent());
		publicMapper.add(allUserTool.getStudent());
		System.out.println("111");
	
	}


    public void insertUser(User user) throws Exception{
    	 publicMapper.insertUser(user);
    }
	
	/*
	 * public void updateUser(User user) throws Exception{
	 * 
	 * }
	 */
	 public User findUserById(User user) throws Exception{
	     return publicMapper.findUserById(user);
	 }


	@Override
	public void findfenye() throws Exception {
		// TODO Auto-generated method stub
		
	}


	@Override
	public int findNewsAll() {
		// TODO Auto-generated method stub
		
		return publicMapper.findNewsAll(); 
	}


	@Override
	public List<User> findNews(Page page) {
		// TODO Auto-generated method stub
		return publicMapper.findNews(page);
	}


	@Override
	public Student login_student(Student student1) {
		// TODO Auto-generated method stub
		return publicMapper.login_student(student1);
		
	}

	@Override
	public Teacher login_teacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return publicMapper.login_teacher(teacher);
		
	}


	@Override
	public Management login_admin(Management management) {
		// TODO Auto-generated method stub
		return publicMapper.login_admin(management);
		
	}


	@Override
	public Addresss getAddress(int a) {
		// TODO Auto-generated method stub
		return publicMapper.getAddress(a);
	}


	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		publicMapper.updateStudent(student);
	}


	@Override
	public DanceClass getDanceClass(AllUserTool aut) {
		// TODO Auto-generated method stub
		return publicMapper.getDanceClass(aut);
	}


	@Override
	public KeBiao getKeBiao(KeBiao kebiao) {
		// TODO Auto-generated method stub
		return publicMapper.getKeBiao(kebiao);
	}



}



