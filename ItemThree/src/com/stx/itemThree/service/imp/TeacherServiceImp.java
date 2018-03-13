package com.stx.itemThree.service.imp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.itemThree.dao.TeacherDao;
import com.stx.itemThree.model.Teacher;
import com.stx.itemThree.service.TeacherService;
import com.stx.itemThree.util.StringUtil;

@Service
public class TeacherServiceImp implements TeacherService {

	@Resource
	private TeacherDao teacherDao;
	
	@Override
	public boolean addTeacher(Teacher teacher) {
		teacher.setPassword(StringUtil.getMd5(teacher.getPassword()));
		return teacherDao.addTeacher(teacher);
	}
    
	@Override
	public boolean signTeacher(Teacher teacher){
		teacher.setPassword(StringUtil.getMd5(teacher.getPassword()));
		return teacherDao.signTeacher(teacher);
	}
}
