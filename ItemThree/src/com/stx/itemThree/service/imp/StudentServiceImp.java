package com.stx.itemThree.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stx.itemThree.dao.StudentDao;
import com.stx.itemThree.model.Student;
import com.stx.itemThree.service.StudentService;
import com.stx.itemThree.util.StringUtil;

@Service
public class StudentServiceImp implements StudentService {

	@Autowired //@Resource
	private StudentDao studentDao;
	
	@Override
	public boolean addStudent(Student student){
	    student.setPassword(StringUtil.getMd5(student.getPassword()));
	    //System.out.println(student.getStupwd());
		return studentDao.addStudent(student);
	}
	
	@Override
	public boolean signStudent(Student student){
		student.setPassword(StringUtil.getMd5(student.getPassword()));
		return studentDao.signStudent(student);
	}
	
	@Override
	public List<Student> queryStudent(int uid){
		return studentDao.queryStudent(uid);
	}
	
	@Override
	public boolean modifyStudent(Student student,int uid){
	   return studentDao.modifyStudent(student,uid);	
	}
}
