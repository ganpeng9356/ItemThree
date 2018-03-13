package com.stx.itemThree.util;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.QuartzJobBean;
import org.springframework.stereotype.Controller;

import com.stx.itemThree.service.ApplicationService;

@Controller
public class FirstScheduledJob extends QuartzJobBean {
 private AnotherBean anotherBean;
     
    @Resource
	private ApplicationService applicationService;
    
    @Autowired
	private HttpServletRequest request;
    
     public void setAnotherBean(AnotherBean anotherBean){
    	 this.anotherBean = anotherBean;
     }

	@Override
	protected void executeInternal(JobExecutionContext arg0)
			throws JobExecutionException{
		/*
		System.out.println("00");
		List<Application> ap=new ArrayList<Application>();
		System.out.println("11");
		
		//String uNumber=(String)request.getSession().getAttribute("uid");
		System.out.println("22");
		ap=applicationService.lookTime();
		System.out.println("33");
		
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println("FirstScheduledJob Executes!" + sf.format(date));	
	
		System.out.println(ap.get(0).getApp_ledadate());
		*/
		
		this.anotherBean.printAnotherMessage();		
	}
}
