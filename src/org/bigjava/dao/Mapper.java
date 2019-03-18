package org.bigjava.dao;

import org.bigjava.entitys.Student;

public interface Mapper {
	
	public Student findStudentById(int i)throws Exception;
	
}
