package com.stx.itemThree.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stx.itemThree.model.AjaxEntity;
import com.stx.itemThree.model.Application;
import com.stx.itemThree.model.Material;
import com.stx.itemThree.model.Student;
import com.stx.itemThree.service.ApplicationService;
import com.stx.itemThree.service.MaterialService;
import com.stx.itemThree.util.Test;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

	@Resource
	private MaterialService materialService;
	@Resource
	private ApplicationService applicationService;
	
	@Resource
	private HttpServletRequest request;
	
	@RequestMapping("/ajaxMaterial.do")
	@ResponseBody
	public List<Material> getMaterial(){
		System.out.println("11");
		List<Material> mts=new ArrayList<Material>();
	    mts=materialService.getmaterial();
	    request.setAttribute("mts", mts);
		return mts;
	}
	
	@RequestMapping("/ajaxLease.do")
	@ResponseBody
	public Application lease(Application ap){
		//System.out.println("消息");	
		//System.out.println(ap.getMatname());
		if(request.getSession().getAttribute("new")!=null){
		ap.setNews("新消息");
		}
		return ap;
	}
	
	@RequestMapping("/ajaxOrganization.do")
	@ResponseBody
	public Application lease2(Application ap){
		
		if(request.getSession().getAttribute("new2")!=null){
			ap.setNews("新消息");
		}
		return ap;
	}
	
	@RequestMapping("/ajaxOrganization2.do")
	@ResponseBody
	public Application lease3(Application ap){
		if(request.getSession().getAttribute("returnMid")!=null & request.getSession().getAttribute("returnApid")!=null){
			ap.setNews("新消息");
		}
		return ap;
	}
	@RequestMapping("/ajaxsub.do")
	public String sub(Application ap){
	 ap.setMatname(ap.getMatname());
	 System.out.println("10");	
	 System.out.println(ap.getMatname());
	 ap.setMatid((int)request.getSession().getAttribute("mid"));	 
	 //mid判断是否是不要
	 applicationService.addApplicationService(ap);
	 //清除mid
	 request.getSession().removeAttribute("mid");
	 request.getSession().setAttribute("new", "消息");
	 return "test/studentCenter";
	}
	
	@RequestMapping("/delivery.do")
	@ResponseBody
	public AjaxEntity delivery() throws Exception{
		AjaxEntity ae=new AjaxEntity();
		//System.out.println("ajax");
		Test test=new Test();
		String ss=request.getParameter("stutel");
		String s=test.message(ss);
		System.out.println(s);
		ae.setNumber(s);
		return ae;
	}
	
}
