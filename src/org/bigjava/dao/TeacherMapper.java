package org.bigjava.dao;

import java.util.List;

import org.bigjava.action.tool.Page;
import org.bigjava.entitys.Teacher;

public interface TeacherMapper {

	public int findCount_teacher();

	public List<Teacher> findPage_teacher(Page page);
}
