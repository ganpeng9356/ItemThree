package com.stx.itemThree.dao;

import java.util.List;

import com.stx.itemThree.model.Student;

public interface StudentDao {
 
	public boolean addStudent(Student student);
	public boolean signStudent(Student student);
	/**
	 * 用学号查询信息
	 * @param uid
	 * @return
	 */
	public List<Student> queryStudent(int uid);
	/**
	 * 修改学生信息
	 * @param uid
	 * @return
	 */
	public boolean modifyStudent(Student student,int uid);
}
