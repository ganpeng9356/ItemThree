package com.stx.itemThree.service;

import java.util.List;

import com.stx.itemThree.model.Material;

public interface MaterialService {

	/**
	 * 添加物资
	 * @param material
	 * @return
	 */
	public boolean addMaterial(Material material);
	
	/**
	 * 查看物资
	 * @return
	 */
	public List<Material> getmaterial();
	/**
	 * 借用物资
	 * @param material
	 * @return
	 */
	public boolean borrowMaterial(int aid);
	/**
	 * 归还物资
	 * @param material
	 * @return
	 */
	public boolean returnMaterial(int mid);
	/**
	 * 查询物资
	 * @param mid
	 * @return
	 */
	public List<Material> queryMaterial(int mid);
	
	/**
	 * 查询物资是否借出
	 * @param mid
	 * @return
	 */
	public boolean queryState(int mid);
	
	/**
	 * 查询归还的物资
	 * @return
	 */
	public List<Material> queryMaterial2(int uid);
}
