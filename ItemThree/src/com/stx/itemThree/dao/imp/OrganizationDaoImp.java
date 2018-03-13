package com.stx.itemThree.dao.imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.itemThree.dao.OrganizationDao;
import com.stx.itemThree.model.Organization;

@Repository
public class OrganizationDaoImp implements OrganizationDao {

	@Resource
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean addOrganization(Organization org) {
		String sql="insert into tbl_org(org_id,org_name,org_tel,org_place,org_tech,org_pwd) values(seq_org.nextval,?,?,?,?,?)";
		Object[] params = new Object[] {org.getNumber(),org.getOrg_tel(),org.getOrg_place(),org.getOrg_tech(),org.getPassword()};
		return jdbcTemplate.update(sql, params) == 1;
	}

	@Override
	public boolean signOrganization(Organization org) {
		String sql="select * from tbl_org where org_name=? and org_pwd=?";
		Object[] args = new Object[]{org.getNumber(),org.getPassword()};
		List<Organization> orgs=(List<Organization>)jdbcTemplate.query(sql, args ,new MyBeanMapper());
		//System.out.println(orgs.size());
		return orgs.size()!=0;
	}

	private class MyBeanMapper implements RowMapper<Organization>{
		@Override
		public Organization mapRow(ResultSet rs, int arg1) throws SQLException {
			Organization org=new Organization();
			org.setNumber(rs.getString("org_name"));
			org.setPassword(rs.getString("org_pwd"));
			return org;
		}
	}
}
