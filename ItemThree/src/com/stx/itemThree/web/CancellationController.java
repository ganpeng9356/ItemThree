package com.stx.itemThree.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cance")
public class CancellationController {

	@Resource
	private HttpServletRequest request;
	
	@RequestMapping("toCance.do")
	public String toCance(){
		request.getSession().removeAttribute("uid");
		return "index2";
	}
	@RequestMapping("canceTeacher.do")
	public String canceTeacher(){
		request.getSession().removeAttribute("tid");
		return "index2";
	}
	@RequestMapping("canOrganization.do")
	public String canOrganization(){
		return "index2";
	}
}
