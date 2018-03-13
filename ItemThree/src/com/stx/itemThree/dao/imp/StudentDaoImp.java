package com.stx.itemThree.dao.imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.itemThree.dao.StudentDao;
import com.stx.itemThree.model.Student;

@Repository
public class StudentDaoImp implements StudentDao {
 
	@Resource
	// @Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean addStudent(Student stu){
	 //System.out.println(stu.getStuno()+":"+stu.getStupwd());
	  String sql="insert into tbl_stu(stu_id,stu_no,stu_pwd,stu_sex,stu_tel,stu_name) values(seq_stu.nextval,?,?,?,?,?)";
	  Object[] params = new Object[] {Integer.parseInt(stu.getNumber()),stu.getPassword(),stu.getStusex(),stu.getStutel(),stu.getStuname()};
	  return jdbcTemplate.update(sql, params) == 1;
	}
	
	@Override
	public boolean signStudent(Student stu){
		String sql="select * from tbl_stu where stu_no=? and stu_pwd=?";
		//Object[] params=new Object[] {stu.getStuno(),stu.getStupwd()};
		Object[] args = new Object[]{Integer.parseInt(stu.getNumber()),stu.getPassword()};
		List<Student> stus = (List<Student>)jdbcTemplate.query(sql, args ,new MyBeanMapper());
		//System.out.println(stus.size());
		return stus.size()!=0;
	}
	
	private class MyBeanMapper implements RowMapper<Student> {
		@Override
		public Student mapRow(ResultSet rs, int arg1) throws SQLException {
			Student stu= new Student();
			stu.setStu_id(rs.getInt("stu_id"));
			stu.setNumber(rs.getString("stu_no"));
			stu.setPassword(rs.getString("stu_pwd"));
			return stu;
		}	
	}
	
	@Override
	public List<Student> queryStudent(int uid){
		String sql="select * from tbl_stu where stu_no=?";
		Object[] params = new Object[] {uid};
		List<Student> stus = (List<Student>)jdbcTemplate.query(sql, params ,new MyBeanMapper2());
		return stus;
	}
	private class MyBeanMapper2 implements RowMapper<Student> {
		@Override
		public Student mapRow(ResultSet rs, int arg1) throws SQLException {
			Student stu= new Student();
			stu.setStu_id(rs.getInt("stu_id"));
			stu.setStuname(rs.getString("stu_name"));
			stu.setNumber(rs.getString("stu_no"));
            stu.setStutel(rs.getString("stu_tel"));
            stu.setStusex(rs.getString("stu_sex"));
            stu.setStudepa(rs.getString("stu_depa"));
            stu.setStubirth(rs.getString("stu_birth"));
            stu.setStubirt(rs.getString("stu_mail"));
			return stu;
		}	
	}
	
	@Override
	public boolean modifyStudent(Student student,int uid){
		String sql="update tbl_stu set stu_birth=?,stu_mail=?,stu_depa=? where stu_no=?";
		Object[] params = new Object[] {student.getStubirth(),student.getStubirt(),student.getStudepa(),uid};
		return jdbcTemplate.update(sql, params) == 1;
	}
}
