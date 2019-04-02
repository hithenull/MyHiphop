package org.bigjava.biz.impl;

import java.util.List;


import org.bigjava.action.tool.AllUserTool;
import org.bigjava.action.tool.Page;
import org.bigjava.biz.MapperBiz;
import org.bigjava.dao.AdminMapper;
import org.bigjava.dao.Mapper;
import org.bigjava.dao.PublicMapper;
import org.bigjava.dao.TeacherMapper;
import org.bigjava.entitys.News;
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
	public boolean findStudentById(Student student) throws Exception{
	    
	     if(student!=null) {
	    	publicMapper.findStudentById(student);
	    	return true;
	     }else {
	    	return false;
	     }
	 }
	 public boolean findTeacherById(Teacher teacher) throws Exception{
		    if(teacher!=null) {
		    	publicMapper.findTeacherById(teacher);
		    	return true;
		     }else {
		    	return false;
		     }
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


}



