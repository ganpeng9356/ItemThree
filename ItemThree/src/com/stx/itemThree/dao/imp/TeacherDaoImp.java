package com.stx.itemThree.dao.imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.itemThree.dao.TeacherDao;
import com.stx.itemThree.model.Teacher;

@Repository
public class TeacherDaoImp implements TeacherDao {

	@Resource
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean addTeacher(Teacher teacher) {
		String sql="insert into tbl_tech(tech_id,tech_name,tech_no,tech_title,tech_sex,tech_pwd,tech_mail) values(seq_tech.nextval,?,?,?,?,?,?)";
		Object[] params=new Object[]{teacher.getTech_name(),Integer.parseInt(teacher.getNumber()),teacher.getTech_title(),teacher.getTech_sex(),teacher.getPassword(),teacher.getTech_mail()};
		return jdbcTemplate.update(sql, params) == 1;
	}
	
	@Override
	public boolean signTeacher(Teacher teacher){
		System.out.println(teacher.getNumber()+","+teacher.getPassword());
		String sql="select * from tbl_tech where tech_no=? and tech_pwd=?";
		Object[] args=new Object[]{Integer.parseInt(teacher.getNumber()),teacher.getPassword()};
		List<Teacher> tea=(List<Teacher>)jdbcTemplate.query(sql, args ,new MyBeanMapper());
		//System.out.println(tea.size());
		return tea.size()!=0;
	}
	
	private class MyBeanMapper implements RowMapper<Teacher> {
		
		@Override
		public Teacher mapRow(ResultSet rs, int arg1) throws SQLException {
		Teacher tea=new Teacher();
		tea.setNumber(rs.getString("tech_no"));
		tea.setPassword(rs.getString("tech_pwd"));
		return tea;
		}
	}
}
