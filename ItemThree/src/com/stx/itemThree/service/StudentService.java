package com.stx.itemThree.service;

import java.util.List;

import com.stx.itemThree.model.Student;

public interface StudentService {

	public boolean addStudent(Student student);
	public boolean signStudent(Student student);
	/**
	 * 用学号查询学生信息
	 * @param uid
	 * @return
	 */
	public List<Student> queryStudent(int uid);
	/**
	 * 修改学生信息
	 * @param student
	 * @param uid
	 * @return
	 */
	public boolean modifyStudent(Student student,int uid);
}
