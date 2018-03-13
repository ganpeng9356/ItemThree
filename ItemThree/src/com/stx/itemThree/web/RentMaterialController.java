package com.stx.itemThree.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.itemThree.model.Material;
import com.stx.itemThree.model.Student;
import com.stx.itemThree.service.ApplicationService;
import com.stx.itemThree.service.MaterialService;
import com.stx.itemThree.service.StudentService;

@Controller
@RequestMapping("/rent")
public class RentMaterialController {

	@Autowired
	private MaterialService materialService;
	@Autowired
	private ApplicationService applicationService;
	@Autowired
	private StudentService studentService;
	@Resource
	private HttpServletRequest request;
	
	@RequestMapping("rentMaterial.do")
	public String rentMaterial(){
		int mid=Integer.parseInt(request.getParameter("mid"));
		//判断物资是否已被租用
		if(materialService.queryState(mid)){
		System.out.println(request.getSession().getAttribute("uid"));
		request.getSession().setAttribute("mid", mid);
		List<Material> mts=new ArrayList<Material>();
		List<Student> stu=new ArrayList<Student>();
		int uid=Integer.parseInt((String) request.getSession().getAttribute("uid"));
		stu=studentService.queryStudent(uid);
		mts=materialService.queryMaterial(mid);
		request.setAttribute("stu", stu);
		request.setAttribute("mts", mts);
		request.setAttribute("no", mts.get(0).getMat_name());
		request.setAttribute("organ", mts.get(0).getMat_organ());
		request.setAttribute("num", request.getSession().getAttribute("uid"));
		return "test/apply";
		}else{
			request.setAttribute("msg", "借出失败");
			return "test/test4";
		}
	}
	
	@RequestMapping("agreeRent.do")
	public String agreeRent(){
		int aid=Integer.parseInt(request.getParameter("aid1"));
		applicationService.stuModifyApplicationService(aid);
		materialService.borrowMaterial(aid);
		request.getSession().removeAttribute("new2");
		return "test/stuOrganization";
	}
}
