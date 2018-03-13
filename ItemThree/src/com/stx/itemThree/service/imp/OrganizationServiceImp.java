package com.stx.itemThree.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stx.itemThree.dao.OrganizationDao;
import com.stx.itemThree.model.Organization;
import com.stx.itemThree.service.OrganizationService;
import com.stx.itemThree.util.StringUtil;

@Service
public class OrganizationServiceImp implements OrganizationService {

	@Autowired
	private OrganizationDao organizationDao;
	
	@Override
	public boolean addOrganization(Organization organization) {
		organization.setPassword(StringUtil.getMd5(organization.getPassword()));
		return organizationDao.addOrganization(organization);
	}

	@Override
	public boolean signOrganization(Organization organization) {
		organization.setPassword(StringUtil.getMd5(organization.getPassword()));
		return organizationDao.signOrganization(organization);
	}

}
