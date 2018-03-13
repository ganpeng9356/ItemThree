package com.stx.itemThree.service;

import java.util.List;

import com.stx.itemThree.model.Application;

public interface ApplicationService {

	/**
	 * 添加申请表
	 * @param application
	 * @return
	 */
	public boolean addApplicationService(Application application);
	
	/**
	 * 查看申请表
	 * @return
	 */
	public List<Application> disApplicationService();
	
	/**
	 * 学生组织查看申请表
	 * @return
	 */
	public List<Application> studisApplicationService();
	
	/**
	 * 用申请表id查看申请表
	 * @return
	 */
	public List<Application> iddisApplicationService(int apid);
	/**
	 * 老师修改申请表
	 * @return
	 */
	public boolean techModifyApplicationService(int aid);
	
	/**
	 * 老师否定申请表
	 * @param aid
	 * @return
	 */
	public boolean techModifyApplicationService2(int aid);
	
	/**
	 * 学生组织修改申请表
	 * @param aid
	 * @return
	 */
	public boolean stuModifyApplicationService(int aid);
	
	/**
	 * 学生组织否定申请表
	 * @param aid
	 * @return
	 */
	public boolean stuModifyApplicationService2(int aid);
	
	/**
	 * 归还时修改申请表
	 * @param apid
	 * @return
	 */
	public boolean returnModifyApplicationService(int apid);
	
	/**
	 * 查看时间
	 * @return
	 */
	public List<Application> lookTime();
	
	/**
	 * 学生查看申请表
	 * @param uid
	 * @return
	 */
	public List<Application> studentApplicationService(int uid);
}
