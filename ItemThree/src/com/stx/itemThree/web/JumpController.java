package com.stx.itemThree.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.itemThree.model.Application;
import com.stx.itemThree.model.Material;
import com.stx.itemThree.model.Student;
import com.stx.itemThree.service.ApplicationService;
import com.stx.itemThree.service.MaterialService;
import com.stx.itemThree.service.OrganizationService;
import com.stx.itemThree.service.StudentService;
import com.stx.itemThree.service.TeacherService;

@Controller
@RequestMapping("/jump")
public class JumpController {

	@Autowired
	private StudentService studentService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private OrganizationService organizationService;
    @Resource
    private MaterialService materialService;
    @Resource
    private ApplicationService applicationService;
    @Resource
	private HttpServletRequest request;
	@RequestMapping("studentCenter.do")
	public String toStudentCenter(){
		return "test/studentCenter";
	}
	
	@RequestMapping("lease.do")
	public String toLease(){
		List<Material> mts=new ArrayList<Material>();
		mts=materialService.getmaterial();
	    request.setAttribute("mts", mts);
	    request.setAttribute("state", mts.get(0).getMat_state());
	    //String s=(String)mts.get(0).getMat_state();
//	    System.out.println(s.length());
	   // System.out.println(mts.get(0).getMat_state());
	    return "test/lease";
	}
	@RequestMapping("see.do")
	public String toSee(){
		List<Student> stu=new ArrayList<Student>();
		int uid=Integer.parseInt((String) request.getSession().getAttribute("uid"));
		stu=studentService.queryStudent(uid);
		request.setAttribute("stu", stu);
		return "test/see";
	}
	
	@RequestMapping("login.do")
	public String toLogin(){
		return "login";
	}
	@RequestMapping("bring.do")
	public String toBring(){
		List<Material> mts3=new ArrayList<Material>();
		int uid=Integer.parseInt((String) request.getSession().getAttribute("uid"));
		mts3=materialService.queryMaterial2(uid);
		request.setAttribute("mts3", mts3);
		//System.out.println("11");
		return "test/bringBack";
	}
	@RequestMapping("perfect.do")
	public String toPerfect(){	
		List<Student> stu=new ArrayList<Student>();
		int uid=Integer.parseInt((String) request.getSession().getAttribute("uid"));
		stu=studentService.queryStudent(uid);
		request.setAttribute("stu", stu);
		return "test/perfect";
	}
	@RequestMapping("toOrganization.do")
	public String toOrganization(){
		
		return "test/organization";
	}
	@RequestMapping("toTeacher.do")
	public String toTeacher(){
		List<Material> mat= new ArrayList<Material>();
		mat=materialService.getmaterial();
		request.setAttribute("mat", mat);
		return "test/teacher";
	}
	@RequestMapping("toTeacherApproval.do")
	public String toTeacherApproval(){
		List<Application> ap=new ArrayList<Application>();
		ap=applicationService.disApplicationService();
		request.setAttribute("ap", ap);
		return "test/teacherApproval";
	}
	@RequestMapping("stuOrgAddMat.do")
	public String toStuOrgAddMat(){		
		return "test/stuOrgAddMat";
	}
	@RequestMapping("toStuOrganization.do")
	public String toStuOrganization(){
		return "test/stuOrganization";
	}
	@RequestMapping("toTel.do")
	public String toTel(){
		return "test/tel";
	}
	@RequestMapping("toMatRecord.do")
	public String toMatRecord(){
		List<Application> ap=new ArrayList<Application>();
		int uid=Integer.parseInt((String) request.getSession().getAttribute("uid"));
		ap=applicationService.studentApplicationService(uid);
		request.setAttribute("ap", ap);
		return "test/matRecord";
	}
}
