package com.stx.itemThree.dao.imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.itemThree.dao.ApplicationDao;
import com.stx.itemThree.model.Application;

@Repository
public class ApplicationDaoImp implements ApplicationDao {

	@Resource
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean addApplication(Application ap) {
		//System.out.println(ap.getMatid());
		String sql="insert into tbl_app(app_id,app_lenno,app_reas,app_Company,org_name,mat_id,stu_no,app_time,app_deposit,app_number,app_sta) values(seq_app.nextval,?,?,?,?,?,?,?,?,?,'待审核')";
		Object[] params = new Object[] {ap.getApp_lenno(),ap.getApp_reas(),ap.getApp_Company(),ap.getOrgname(),ap.getMatid(),ap.getStuno(),ap.getApp_time(),ap.getApp_deposit(),ap.getApp_number()};
		return jdbcTemplate.update(sql, params) == 1;
	}

	@Override
	public List<Application> disApplication(){
		String sql="select mat_name,app_number,stu_name,stu_tel,app_id,app_lenno,mat_price,app_reas,app_Company,s.stu_no,app_sta,org_name,app_time,app_deposit from tbl_app a,tbl_mat m,tbl_stu s where a.mat_id=m.mat_id and a.stu_no=s.stu_no and a.app_sta='待审核'";
		List<Application> ap=(List<Application>)jdbcTemplate.query(sql, new MyBeanMapper());
		return ap;
	}
	private class MyBeanMapper implements RowMapper<Application>{
		
		@Override
		public Application mapRow(ResultSet rs, int arg1) throws SQLException {
			Application app=new Application();
			app.setApp_lenno(rs.getInt("app_lenno"));
			app.setApp_reas(rs.getString("app_reas"));
			app.setApp_Company(rs.getString("app_Company"));
			app.setStuno(rs.getString("stu_no"));
			app.setMatname(rs.getString("mat_name"));;
			app.setOrgname(rs.getString("org_name"));
			app.setState(rs.getString("app_sta"));
			app.setApp_id(rs.getInt("app_id"));
			app.setStuname(rs.getString("stu_name"));
			app.setApp_number(rs.getInt("app_number"));
			app.setApp_time(rs.getString("app_time"));
			app.setApp_deposit(rs.getString("app_deposit"));
			app.setStutel(rs.getString("stu_tel"));
			return app;
		}
	}
	
	@Override
	public List<Application> studisApplication(){
		String sql="select mat_name,app_number,stu_name,stu_tel,app_id,app_lenno,mat_price,app_reas,app_Company,s.stu_no,app_sta,org_name,app_time,app_deposit from tbl_app a,tbl_mat m,tbl_stu s where a.mat_id=m.mat_id and a.stu_no=s.stu_no and a.app_sta='老师已审核'";
		List<Application> ap=(List<Application>)jdbcTemplate.query(sql, new MyBeanMapper());
		return ap;
	}
	
	@Override
	public boolean techModifyApplication(int aid){
		String sql="update tbl_app set app_sta='老师已审核' where app_id=?";
		Object[] params = new Object[] {aid};
		return jdbcTemplate.update(sql, params) == 1;
	}
	
	@Override
	public boolean techModifyApplication2(int aid){
		String sql="update tbl_app set app_sta='审核通不过' where app_id=?";
		Object[] params = new Object[] {aid};
		return jdbcTemplate.update(sql, params) == 1;
	}
	
	@Override
	public boolean stuModifyApplication(int aid){
		String sql="update tbl_app set app_sta='审核通过' where app_id=?";
		String sql2="update tbl_app set app_ledadate=sysdate  where app_id=?";
		Object[] params = new Object[] {aid};
		jdbcTemplate.update(sql, params);
		return jdbcTemplate.update(sql2, params) == 1;
	}
	
	@Override
	public boolean stuModifyApplication2(int aid){
		String sql="update tbl_app set app_sta='学生组织未通过' where app_id=?";
		Object[] params = new Object[] {aid};
		return jdbcTemplate.update(sql, params) == 1;
	}
	
	@Override
	public boolean returnModifyApplication(int apid){
		String sql="update tbl_app set app_sta='已归还' where app_id=?";
		String sql2="update tbl_app set app_retime=sysdate  where app_id=?";
		Object[] params = new Object[] {apid};
		jdbcTemplate.update(sql, params);
		return jdbcTemplate.update(sql2, params) == 1;
	}
	
	@Override
	public List<Application> iddisApplication(int apid){
		String sql="select mat_name,app_number,stu_name,stu_tel,app_id,app_lenno,to_char(app_ledadate,'yyyy-mm-dd hh24:mi:ss') app_ledadate,mat_price,app_deposit,app_reas,app_Company,s.stu_no,app_sta,org_name,app_time from tbl_app a,tbl_mat m,tbl_stu s where a.mat_id=m.mat_id and a.stu_no=s.stu_no and a.app_id=? and a.app_sta='审核通过'";
		Object[] params = new Object[] {apid};
		List<Application> ap=(List<Application>)jdbcTemplate.query(sql,params,new MyBeanMapper2());
		return ap;	
	}
    private class MyBeanMapper2 implements RowMapper<Application>{
		
		@Override
		public Application mapRow(ResultSet rs, int arg1) throws SQLException {
			Application app=new Application();
			app.setApp_lenno(rs.getInt("app_lenno"));
			app.setApp_reas(rs.getString("app_reas"));
			app.setApp_Company(rs.getString("app_Company"));
			app.setStuno(rs.getString("stu_no"));
			app.setMatname(rs.getString("mat_name"));
			app.setOrgname(rs.getString("org_name"));
			app.setState(rs.getString("app_sta"));
			app.setApp_id(rs.getInt("app_id"));
			app.setStuname(rs.getString("stu_name"));
			app.setApp_number(rs.getInt("app_number"));
			app.setApp_time(rs.getString("app_time"));
			app.setApp_deposit(rs.getString("app_deposit"));
			app.setApp_ledadate(rs.getString("app_ledadate"));
			return app;
		}
	}
    
    @Override
    public List<Application> lookTime(){
    	String sql="select to_char(app_ledadate,'yyyy-mm-dd hh24:mi:ss') app_ledadate from tbl_app";
    	//Object[] params = new Object[] {uid};
    	List<Application> ap=(List<Application>)jdbcTemplate.query(sql,new MyBeanMapper3());
    	return ap;
    }
 private class MyBeanMapper3 implements RowMapper<Application>{
		
		@Override
		public Application mapRow(ResultSet rs, int arg1) throws SQLException {
			Application app=new Application();
			app.setApp_ledadate(rs.getString("app_ledadate"));
			return app;
		}
	}
  @Override
 public List<Application> studentApplication(int uid){
	  String sql="select to_char(app_ledadate,'yyyy-mm-dd hh24:mi:ss') app_ledadate,to_char(app_retime,'yyyy-mm-dd hh24:mi:ss') app_retime,app_lenno,app_number,app_reas,app_Company,app_deposit,org_name,app_sta,mat_name from tbl_app a,tbl_mat m where m.mat_id=a.mat_id and stu_no=?";
	  Object[] params = new Object[] {uid};
	  List<Application> ap=(List<Application>)jdbcTemplate.query(sql,params,new MyBeanMapper4());
	  return ap;
  }
  private class MyBeanMapper4 implements RowMapper<Application>{
		
		@Override
		public Application mapRow(ResultSet rs, int arg1) throws SQLException {
			Application app=new Application();
			app.setApp_ledadate(rs.getString("app_ledadate"));
			app.setApp_retime(rs.getString("app_retime"));
			app.setMatname(rs.getString("mat_name"));
			app.setApp_number(rs.getInt("app_number"));
			app.setApp_lenno(rs.getInt("app_lenno"));
			app.setApp_reas(rs.getString("app_reas"));
			app.setApp_Company(rs.getString("app_Company"));
			app.setApp_deposit(rs.getString("app_deposit"));
			app.setOrgname(rs.getString("org_name"));
			app.setState(rs.getString("app_sta"));
			return app;
		}
	}
 
}
