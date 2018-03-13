package com.stx.itemThree.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.itemThree.dao.ApplicationDao;
import com.stx.itemThree.model.Application;
import com.stx.itemThree.service.ApplicationService;

@Service
public class ApplicationServiceImp implements ApplicationService {

	@Resource
	private ApplicationDao applicationDao;
	
	@Override
	public boolean addApplicationService(Application application) {
		return applicationDao.addApplication(application);
	}
   
	@Override
	public List<Application> disApplicationService(){
		return applicationDao.disApplication();
	}
	
	@Override
	public List<Application> studisApplicationService(){
		return applicationDao.studisApplication();
	}
	
	@Override
	public boolean techModifyApplicationService(int aid){
		return applicationDao.techModifyApplication(aid);
	}
	
	@Override
	public boolean techModifyApplicationService2(int aid){
		return applicationDao.techModifyApplication2(aid);
	}
	
	@Override
	public boolean stuModifyApplicationService(int aid){
		return applicationDao.stuModifyApplication(aid);
	}
	
	@Override
	public boolean stuModifyApplicationService2(int aid){
		return applicationDao.stuModifyApplication2(aid);
	}
	
	@Override
	public boolean returnModifyApplicationService(int apid){
		return applicationDao.returnModifyApplication(apid);
	}
	
	@Override
	public List<Application> iddisApplicationService(int apid){
		return applicationDao.iddisApplication(apid);
	}
	
	@Override
	public List<Application> lookTime(){
		return applicationDao.lookTime();
	}
	
	@Override
	public List<Application> studentApplicationService(int uid){
		return applicationDao.studentApplication(uid);
	}
}
