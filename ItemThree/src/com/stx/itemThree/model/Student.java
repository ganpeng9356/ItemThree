package com.stx.itemThree.model;

public class Student {
	private int stu_id;
	private String stuname;
	private String number;// 学号
	private String password;
	private String stusex;//性别
	private String stuins;// 辅导员
	private String stubirt;// 邮箱
	private String identity;// 身份
    private String stutel;  //电话号码
    private String newver;  //输入验证码
    private String oldver;  //得到验证码
    private String stubirth;//生日
    private String studepa; //院系
	public String getStuname() {
		return stuname;
	}

	public void setStuname(String stuname) {
		this.stuname = stuname;
	}

	public String getStuins() {
		return stuins;
	}

	public void setStuins(String stuins) {
		this.stuins = stuins;
	}

	public String getStubirt() {
		return stubirt;
	}

	public void setStubirt(String stubirt) {
		this.stubirt = stubirt;
	}

	public String getStusex() {
		return stusex;
	}

	public void setStusex(String stusex) {
		this.stusex = stusex;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getStu_id() {
		return stu_id;
	}

	public void setStu_id(int stu_id) {
		this.stu_id = stu_id;
	}

	public String getStutel() {
		return stutel;
	}

	public void setStutel(String stutel) {
		this.stutel = stutel;
	}

	public String getNewver() {
		return newver;
	}

	public void setNewver(String newver) {
		this.newver = newver;
	}

	public String getOldver() {
		return oldver;
	}

	public void setOldver(String oldver) {
		this.oldver = oldver;
	}

	public String getStubirth() {
		return stubirth;
	}

	public void setStubirth(String stubirth) {
		this.stubirth = stubirth;
	}

	public String getStudepa() {
		return studepa;
	}

	public void setStudepa(String studepa) {
		this.studepa = studepa;
	}

	

}
