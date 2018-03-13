package com.stx.itemThree.web;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.itemThree.model.Application;
import com.stx.itemThree.model.Material;
import com.stx.itemThree.service.ApplicationService;
import com.stx.itemThree.service.MaterialService;

@Controller
@RequestMapping("/mess")
public class MessageController {

	@Resource
	private ApplicationService applicationService;
	
	@Resource
	private MaterialService materialservice;
	
	@Resource
	private HttpServletRequest request;
	
	@RequestMapping("display.do")
	public String display(){
		List<Application> ap=new ArrayList<Application>();
		ap=applicationService.disApplicationService();
		request.setAttribute("ap", ap);
		//request.getSession().removeAttribute("new");
		return "test/test5";
	}
	
	@RequestMapping("displayOrganization.do")
	public String displayOrganization(){
		List<Application> aps=new ArrayList<Application>();
		aps=applicationService.studisApplicationService();
		request.setAttribute("aps", aps);
		return "test/stuOrgLease";
	}
	@RequestMapping("displayOrganization2.do")
	public String displayOrganization2(){
		List<Application> aps2=new ArrayList<Application>();
		List<Material> mat2=new ArrayList<Material>();
		//int 
		int returnMid=(int)request.getSession().getAttribute("returnMid");
		int returnApid=(int)request.getSession().getAttribute("returnApid");
		aps2=applicationService.iddisApplicationService(returnApid);
		mat2=materialservice.queryMaterial(returnMid);
		request.setAttribute("aps2", aps2);
		request.setAttribute("mat2",mat2);
		System.out.println(mat2.get(0).getMat_id());
		return "test/stuOrgReturn";
	}
	
	@RequestMapping("confirm.do")
	public String confirm(){
		System.out.println("confirm1");
		int aid=Integer.parseInt(request.getParameter("aid"));
		applicationService.techModifyApplicationService(aid);
		request.getSession().removeAttribute("new");
		request.getSession().setAttribute("new2", "消息");
		return "test/teacher";
	}
	
	@RequestMapping("confirm2.do")
	public String confirm2(){
		System.out.println("confirm2");
		int aid=Integer.parseInt(request.getParameter("aid2"));
		applicationService.techModifyApplicationService2(aid);
		request.getSession().removeAttribute("new");
		return "test/teacher";
	}
}
