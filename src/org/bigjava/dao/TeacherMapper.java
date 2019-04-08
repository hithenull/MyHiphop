package org.bigjava.dao;

import java.util.List;

import org.bigjava.action.tool.Page;
import org.bigjava.entitys.Teacher;

public interface TeacherMapper {

	public int findCount_teacher();

	public List<Teacher> findPage_teacher(Page page);				

	public int findCount_student();									//查询学生的总数

	public List<Teacher> findStudentByClass(Page page);				//分页查询班级的学生
}
