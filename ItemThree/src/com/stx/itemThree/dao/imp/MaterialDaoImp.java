package com.stx.itemThree.dao.imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.itemThree.dao.MaterialDao;
import com.stx.itemThree.model.Material;

@Repository
public class MaterialDaoImp implements MaterialDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	@Override
	public boolean addMaterial(Material mat) {
		String sql = "insert into tbl_mat values(seq_mat.nextval,?,?,?,?,?,sysdate,?,'存在',?)";
		Object[] params = new Object[] { mat.getMat_name(), mat.getMat_num(),
				mat.getMat_organ(), mat.getMat_imgname(), mat.getMat_url(),
				mat.getMat_cate(), mat.getMat_price() };
		return jdbcTemplate.update(sql, params) == 1;
	}

	@Override
	public List<Material> getmaterial() {
		String sql = "select mat_id,mat_name,mat_url,mat_organ,mat_cate,mat_imgname,mat_url,mat_state,mat_price,to_char(mat_uptime,'yyyy-mm-dd hh24:mi:ss') mat_uptime from tbl_mat";
		List<Material> mats = (List<Material>) jdbcTemplate.query(sql,
				new MyBeanMapper());
		return mats;
	}

	private class MyBeanMapper implements RowMapper<Material> {
		@Override
		public Material mapRow(ResultSet rs, int arg1) throws SQLException {
			Material mt = new Material();
			mt.setMat_id(rs.getInt("mat_id"));
			mt.setMat_name(rs.getString("mat_name"));
			mt.setMat_url(rs.getString("mat_url"));
			mt.setMat_organ(rs.getString("mat_organ"));
			mt.setMat_imgname(rs.getString("mat_imgname"));
			mt.setMat_url(rs.getString("mat_url"));
			mt.setMat_state(rs.getString("mat_state"));
			mt.setMat_price(rs.getInt("mat_price"));
			mt.setMat_cate(rs.getString("mat_cate"));
			mt.setMat_uptime(rs.getString("mat_uptime"));
			return mt;
		}
	}

	@Override
	public List<Material> queryMaterial(int mid) {
		String sql = "select * from tbl_mat where mat_id=?";
		Object[] args = new Object[] { mid };
		List<Material> mat = (List<Material>) jdbcTemplate.query(sql, args,
				new MyBeanMapper());
		return mat;
	}

	@Override
	public boolean borrowMaterial(int aid) {
		String sql = "update tbl_mat set mat_state='已借出' where(select m.mat_id from tbl_mat m,tbl_app a where app_id=? and m.mat_id=a.mat_id)=mat_id";
		Object[] args = new Object[] { aid };
		return jdbcTemplate.update(sql, args) == 1;
	}

	@Override
	public boolean returnMaterial(int mid) {
       String sql="update tbl_mat set mat_state='存在' where mat_id=? and mat_state='已借出'";
       Object[] args = new Object[] { mid };
	   return jdbcTemplate.update(sql, args) == 1;
	}

	@Override
	public boolean queryState(int mid) {
		String sql = "select * from tbl_mat where mat_id=? and mat_state='存在'";
		Object[] args = new Object[] { mid };
		List<Material> mat = (List<Material>) jdbcTemplate.query(sql, args,
				new MyBeanMapper());
		return mat.size() != 0;
	}
	
	@Override
	public List<Material> queryMaterial2(int sid){
		String sql="select mat_name,app_id,m.mat_id,mat_imgname,mat_url,mat_organ,mat_cate,mat_state,mat_price, to_char(app_ledadate,'YYYY-MM-DD hh24:mi:ss') app_ledadate  from tbl_stu s,tbl_mat m,tbl_app a where m.mat_state='已借出' and a.app_sta='审核通过' and s.stu_no=a.stu_no and m.mat_id=a.mat_id and s.stu_no=?";
		Object[] args = new Object[] { sid };
		List<Material> mat = (List<Material>) jdbcTemplate.query(sql, args,
				new MyBeanMapper2());
		return mat;
	}
	
	private class MyBeanMapper2 implements RowMapper<Material> {
		@Override
		public Material mapRow(ResultSet rs, int arg1) throws SQLException {
			Material mt = new Material();
			mt.setMat_id(rs.getInt("mat_id"));
			mt.setMat_name(rs.getString("mat_name"));
			mt.setMat_organ(rs.getString("mat_organ"));
			mt.setMat_imgname(rs.getString("mat_imgname"));
			mt.setMat_url(rs.getString("mat_url"));
			mt.setMat_state(rs.getString("mat_state"));
			mt.setMat_price(rs.getInt("mat_price"));
			mt.setMat_cate(rs.getString("mat_cate"));
			mt.setMat_ledadte(rs.getString("app_ledadate"));
			mt.setApp_id(rs.getInt("app_id"));
			return mt;
		}
	}
}
