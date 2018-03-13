package com.stx.itemThree.dao;

import java.util.List;

import com.stx.itemThree.model.Application;

public interface ApplicationDao {

	/**
	 * 添加申请表
	 * @param application
	 * @return
	 */
	public boolean addApplication(Application application);
	
	/**
	 * 显示申请表
	 * @return
	 */
	public List<Application> disApplication();
	
	/**
	 * 用apid查看申请表
	 * @param apid
	 * @return
	 */
	public List<Application> iddisApplication(int apid);
	/**
	 * 学生组织查看申请表
	 * @return
	 */
	public List<Application> studisApplication();
	
	/**
	 * 老师修改申请表
	 * @return
	 */
	public boolean techModifyApplication(int aid);
	
	/**
	 * 老师否定申请表
	 * @param aid
	 * @return
	 */
	public boolean techModifyApplication2(int aid);
	
	/**
	 * 学生组织修改申请表
	 * @param aid
	 * @return
	 */
	public boolean stuModifyApplication(int aid);
	
	/**
	 * 学生组织否定申请表
	 * @param aid
	 * @return
	 */
	public boolean stuModifyApplication2(int aid);
	
	/**
	 * 归还时修改申请表
	 * @param apid
	 * @return
	 */
	public boolean returnModifyApplication(int apid);
	
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
	public List<Application> studentApplication(int uid);
}
