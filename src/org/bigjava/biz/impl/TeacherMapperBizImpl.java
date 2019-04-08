package org.bigjava.biz.impl;

import java.util.List;


import org.bigjava.action.tool.Page;
import org.bigjava.biz.TeacherMapperBiz;
import org.bigjava.dao.TeacherMapper;


import org.bigjava.entitys.Teacher;




public class TeacherMapperBizImpl implements TeacherMapperBiz {

	private TeacherMapper teacherMapper;
	

	public void setTeacherMapper(TeacherMapper teacherMapper) {
		this.teacherMapper = teacherMapper;
	}
	

 

    public int findCount_teacher() {
    	System.out.println("teacher findcount");
    	return teacherMapper.findCount_teacher();
    }

	

	public List<Teacher> findPage_teacher(Page page) {
		return teacherMapper.findPage_teacher(page);	
	}



	@Override
	public void findfenye() throws Exception {
		// TODO Auto-generated method stub
		
	}




	@Override
	public int findCount_student() {
		// TODO Auto-generated method stub
		return teacherMapper.findCount_student();
	}




	@Override
	public List<Teacher> findStudentByClass(Page page) {
		// TODO Auto-generated method stub
		return teacherMapper.findStudentByClass(page);
	}


   



}
