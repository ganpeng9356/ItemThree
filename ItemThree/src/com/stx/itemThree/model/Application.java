package com.stx.itemThree.model;

public class Application {
 private int app_id;     //申请表序列
 private String stuno;    //学生学号
 private String stuname; //学生名字
 private String stutel;  //学生电话
 private String matname; //物资名字
 private int matid;      //物资id
 private String orgname; //组织名
 private int app_lenno;  //租借天数
 private String app_reas;//申请理由
 private String app_Company;//申请单位
 private int app_number;   //申请数量
 private String news;       //消息
 private String state;     //状态
 private String app_ledadate;//租借时间
 private String app_time;  //申请时间
 private String app_deposit; //应交押金
 private String app_retime;  //归还时间
public String getStuname() {
	return stuname;
}
public void setStuname(String stuname) {
	this.stuname = stuname;
}
public String getMatname() {
	return matname;
}
public void setMatname(String matname) {
	this.matname = matname;
}
public String getOrgname() {
	return orgname;
}
public void setOrgname(String orgname) {
	this.orgname = orgname;
}
public int getApp_lenno() {
	return app_lenno;
}
public void setApp_lenno(int app_lenno) {
	this.app_lenno = app_lenno;
}
public String getApp_reas() {
	return app_reas;
}
public void setApp_reas(String app_reas) {
	this.app_reas = app_reas;
}
public String getNews() {
	return news;
}
public void setNews(String news) {
	this.news = news;
}
public String getStuno() {
	return stuno;
}
public void setStuno(String stuno) {
	this.stuno = stuno;
}
public int getMatid() {
	return matid;
}
public void setMatid(int matid) {
	this.matid = matid;
}
public String getApp_Company() {
	return app_Company;
}
public void setApp_Company(String app_Company) {
	this.app_Company = app_Company;
}
public int getApp_id() {
	return app_id;
}
public void setApp_id(int app_id) {
	this.app_id = app_id;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getApp_ledadate() {
	return app_ledadate;
}
public void setApp_ledadate(String app_ledadate) {
	this.app_ledadate = app_ledadate;
}
public int getApp_number() {
	return app_number;
}
public void setApp_number(int app_number) {
	this.app_number = app_number;
}
public String getApp_time() {
	return app_time;
}
public void setApp_time(String app_time) {
	this.app_time = app_time;
}
public String getApp_deposit() {
	return app_deposit;
}
public void setApp_deposit(String app_deposit) {
	this.app_deposit = app_deposit;
}
public String getStutel() {
	return stutel;
}
public void setStutel(String stutel) {
	this.stutel = stutel;
}
public String getApp_retime() {
	return app_retime;
}
public void setApp_retime(String app_retime) {
	this.app_retime = app_retime;
}
}
