package org.bigjava.biz;

import java.util.List;

import org.bigjava.action.tool.Page;
import org.bigjava.entitys.Teacher;

public interface TeacherMapperBiz {
	
	public void findfenye() throws Exception;
	
	public int findCount_teacher();
	
	public List<Teacher> findPage_teacher(Page page);

	public int findCount_student(int i);

	public List<Teacher> findStudentByClass(Page page);
}
