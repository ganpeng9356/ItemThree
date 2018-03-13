package com.stx.itemThree.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.itemThree.dao.MaterialDao;
import com.stx.itemThree.model.Material;
import com.stx.itemThree.service.MaterialService;

@Service
public class MaterialServiceImp implements MaterialService {

	@Resource
	private MaterialDao materialDao;
	
	@Override
	public boolean addMaterial(Material material) {
		return materialDao.addMaterial(material);
	}
	
	@Override
	public List<Material> getmaterial(){
		return materialDao.getmaterial();
	}
	
	@Override
	public List<Material> queryMaterial(int mid){
		return materialDao.queryMaterial(mid);
	}

	@Override
	public boolean borrowMaterial(int aid) {	
		return materialDao.borrowMaterial(aid);
	}

	@Override
	public boolean returnMaterial(int mid) {
		return materialDao.returnMaterial(mid);
	}

	@Override
	public boolean queryState(int mid){
		return materialDao.queryState(mid);
	}
	
	@Override
	public List<Material> queryMaterial2(int sid){
		return materialDao.queryMaterial2(sid);
	}
}
