package com.stx.itemThree.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stx.itemThree.model.Material;
import com.stx.itemThree.model.Organization;
import com.stx.itemThree.model.Student;
import com.stx.itemThree.model.Teacher;
import com.stx.itemThree.service.ApplicationService;
import com.stx.itemThree.service.MaterialService;
import com.stx.itemThree.service.OrganizationService;
import com.stx.itemThree.service.StudentService;
import com.stx.itemThree.service.TeacherService;

@Controller
@RequestMapping("/home")
public class TestController {

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
	
	@RequestMapping(value = "index")
	public String Index() {
		return "index";
	}

	@RequestMapping(value = "login")
	public String Login() {
		return "login";

	}

	@RequestMapping("forStudent.do")
	public String forStudent() {
		// System.out.println("11");
		return "registerStudent";
	}

	@RequestMapping("forTeacher.do")
	public String forTeacher() {
		return "registerTeacher";
	}

	@RequestMapping("forward.do")
	public String forword() {
		return "login";
	}

	@RequestMapping("forTest4.do")
	public String forword2() {
		return "test/test4";
	}

	@RequestMapping(value = "userLogin", method = RequestMethod.POST)
	public String UserLogin(Student student, Teacher teacher,
			Organization organization, HttpSession httpSession)
			throws IOException {
		// System.out.println(student.getIdentity());
		// 登陆成功后，写入session
		/*
		 * System.out.println("登陆成功!"+"--"+student.getStuno());
		 * httpSession.setAttribute("username",student.getStuno() );
		 */
		if (student.getIdentity().equals("学生")) {
			boolean b = studentService.signStudent(student);
			if (b == true) {
				System.out.println(student.getNumber());
				request.getSession().setAttribute("uid", student.getNumber());
				String uNumber=(String)request.getSession().getAttribute("uid");
				System.out.println(uNumber);
				return "test/studentCenter";
			} else {
				return "fail";
			}
		} else if (student.getIdentity().equals("教师")) {
			boolean c = teacherService.signTeacher(teacher);
			if (c == true) {
				request.getSession().setAttribute("tid",teacher.getNumber());
				List<Material> mat= new ArrayList<Material>();
				mat=materialService.getmaterial();
				request.setAttribute("mat", mat);
				return "test/teacher";
			} else {
				return "fail";
			}
		} else if (student.getIdentity().equals("学生组织")) {
		//	System.out.println(organization.getNumber()+":"+organization.getPassword());
			boolean d = organizationService.signOrganization(organization);
			if (d == true) {
				request.getSession().setAttribute("oid",organization.getNumber());
				return "test/stuOrganization";
			} else {
				return "fail";
			}
		}

		return "test3";
	}
	/**
	 * 查看物资
	 * @return
	 */
	@RequestMapping("forMaterial.do")
	public String forMaterial(){
		List<Material> mts=new ArrayList<Material>();
		mts=materialService.getmaterial();
	    request.setAttribute("mts", mts);
		return "test/test7";
	}
	
	/**
	 * 查看物资
	 * @return
	 */
	@RequestMapping("forMaterial2.do")
	public String forMaterial2(){
		List<Material> mts=new ArrayList<Material>();
		mts=materialService.getmaterial();
	    request.setAttribute("mts", mts);
	    request.setAttribute("state", mts.get(0).getMat_state());
	    return "test/test4";
	}
	
	/**
	 * 查看归还物资
	 * @return
	 */
	@RequestMapping("forMaterial3.do")
	public String forMaterial3(){
		List<Material> mts3=new ArrayList<Material>();
		int uid=Integer.parseInt((String) request.getSession().getAttribute("uid"));
		mts3=materialService.queryMaterial2(uid);
		request.setAttribute("mts3", mts3);
		System.out.println("11");
		return "test/see";
	}
	
	/**
	 * 归还物资
	 * @return
	 */
	@RequestMapping("restitution.do")
	public String restitution(){	
		String organ=request.getParameter("organ");
		if(organ.equals("社联")){
		int mid=Integer.parseInt(request.getParameter("mid2"));
		int apid=Integer.parseInt(request.getParameter("apid"));
		request.getSession().setAttribute("returnMid", mid);
		request.getSession().setAttribute("returnApid", apid);
		//materialService.returnMaterial(mid);
		//applicationService.returnModifyApplicationService(apid);
		//System.out.println("归还");
		return "test/studentCenter";
		}
		return "test/test4";
	}
	
	@RequestMapping("restitution2.do")
	public String restitution2(){	
		//System.out.println(request.getParameter("mid2")+":"+request.getParameter("apid"));
		int mid=Integer.parseInt(request.getParameter("mid2"));
		int apid=Integer.parseInt(request.getParameter("apid"));
		materialService.returnMaterial(mid);
		applicationService.returnModifyApplicationService(apid);
		//System.out.println(mid+":"+apid);
		request.getSession().removeAttribute("returnMid");
		request.getSession().removeAttribute("returnApid");
		//System.out.println("归还");
		return "test/stuOrganization";
	}
}
