package com.stx.itemThree.model;

public class Teacher {
	private String tech_name; // 名字
	private String number; // 工号
	private String password; // 密码
	private int tech_tel; // 电话号码
	private String tech_mail; // 邮箱
	private String tech_sex; // 性别
	private String tech_title; // 职称

	public String getTech_name() {
		return tech_name;
	}

	public void setTech_name(String tech_name) {
		this.tech_name = tech_name;
	}

	public int getTech_tel() {
		return tech_tel;
	}

	public void setTech_tel(int tech_tel) {
		this.tech_tel = tech_tel;
	}

	public String getTech_mail() {
		return tech_mail;
	}

	public void setTech_mail(String tech_mail) {
		this.tech_mail = tech_mail;
	}

	public String getTech_sex() {
		return tech_sex;
	}

	public void setTech_sex(String tech_sex) {
		this.tech_sex = tech_sex;
	}

	public String getTech_title() {
		return tech_title;
	}

	public void setTech_title(String tech_title) {
		this.tech_title = tech_title;
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
}
