package com.stx.itemThree.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stx.itemThree.model.Organization;
import com.stx.itemThree.model.Student;
import com.stx.itemThree.model.Teacher;
import com.stx.itemThree.service.OrganizationService;
import com.stx.itemThree.service.StudentService;
import com.stx.itemThree.service.TeacherService;

@Controller
@RequestMapping("/register")
public class UserRegisterController {

	@Autowired
	private StudentService studentService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private OrganizationService organizationService;
	@Resource
	private HttpServletRequest request;
	
	@RequestMapping(value="student.do", method=RequestMethod.POST)
  	public String student(Student student , HttpServletRequest request){
		System.out.println(student.getNumber()+","+student.getPassword());
		if(student.getNewver().equals(student.getOldver())){
  		studentService.addStudent(student);
  		return "index2";
		}
		return "fail";
  	}
	
   @RequestMapping(value="teacher.do",method=RequestMethod.POST)
   public String teacher(Teacher teacher){
	  // System.out.println(teacher.getTech_sex());
	   teacherService.addTeacher(teacher);
	   return "test2";
   }
   
   @RequestMapping(value="organization.do",method=RequestMethod.POST)
   public String organization(Organization organization){
	   organizationService.addOrganization(organization);
	   return "test2";
   }
   
   @RequestMapping(value="modifyStudent.do",method=RequestMethod.POST)
   public String modifyStudent(Student student){
	   int uid=Integer.parseInt((String) request.getSession().getAttribute("uid"));
	   studentService.modifyStudent(student, uid);
	   List<Student> stu=new ArrayList<Student>();
	   stu=studentService.queryStudent(uid);
	   request.setAttribute("stu", stu);
	   return "test/see";
   }
   public void test(){
	   while(true){
		   System.out.println("11");
	   }
   }
}
